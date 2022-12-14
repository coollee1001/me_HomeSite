package com.mayeye.module.sub.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mayeye.module.file.FileVO;
import com.mayeye.module.file.service.FileServiceImpl;
import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuPageVO;
import com.mayeye.module.sub.SubMenuVO;
import com.mayeye.module.sub.service.SubMenuServiceImpl;

@Controller
@RequestMapping("/member/manage")
public class SubMenuController {
	private static final Logger log = LoggerFactory.getLogger(SubMenuController.class);

	@Value("${path.upload}")
	private String UPLOAD_PATH;

	@Autowired
	private SubMenuServiceImpl subMenuService;
	@Autowired
	private FileServiceImpl fileService;

	// 파일 이름 설정 및 업로드 처리
	private FileVO changeFile(MultipartFile tempfile) {
		// 객체 설정
		FileVO filevo = new FileVO();
		filevo.setFileUUID(UUID.randomUUID().toString().replaceAll("-", ""));
		filevo.setFileOriginalName(tempfile.getOriginalFilename());
		filevo.setFileName(tempfile.getOriginalFilename().substring(0, filevo.getFileOriginalName().lastIndexOf(".")));
		filevo.setFileExtention(filevo.getFileOriginalName().substring(filevo.getFileOriginalName().lastIndexOf(".")));
		filevo.setUploadPath(UPLOAD_PATH);

		// 확장자 한번 더 검사
		if (!hasAndkey(filevo.getFileExtention(), ".tif", ".pjp", ".jfif", ".ico", ".tiff", ".gif", ".svg", ".xbm",
				".jxl", ".jpeg", ".svgz", ".jpg", ".webp", ".png", ".bmp", ".pjpeg", ".avif")) {
			filevo.setFileUUID("error");
			return filevo;
		}

		// 업로드 처리
		FileOutputStream fos = null;
		try {
			File file = new File(filevo.getUploadPath() + filevo.getFileUUID());
			tempfile.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return filevo;
	}

	// 여러 문자 비교(확장자 비교)
	private boolean hasAndkey(String value, String... keys) {
		for (String key : keys) {
			if (value.equals(key)) {
				return true;
			}
		}
		return false;
	}

	// 메뉴 이름 가져오기
	private List<SubMenuNameVO> importMenuName() {
		List<SubMenuNameVO> nameList = subMenuService.selectName();
		return nameList;
	}

	// 게시글 가져오기
	private List<SubMenuVO> importMenuPeed(int subMenuName_index_seq, int page) {
		List<SubMenuVO> list = null;
		if (subMenuName_index_seq != 0) {
			list = subMenuService.findSubMenuNameList(subMenuName_index_seq, page);
		} else {
			list = subMenuService.selectAll(page);
		}

		return list;
	}

	// 관리자 폼이동
	@GetMapping()
	public String manage() {
		log.info("Move form manage");
		return "member/info";
	}

	// 분류별 리스트 확인 폼이동(ajax)(관리자)
	@RequestMapping(value = "/menuList", method = { RequestMethod.GET, RequestMethod.POST })
	public String reList(@RequestParam(value = "index", defaultValue = "0") String index, Model model,
			@RequestParam(value = "page", defaultValue = "1") int page, HttpServletRequest req) throws Exception {

		// 페이징 처리
		SubMenuPageVO pagevo = subMenuService.getContentCnt(Integer.parseInt(index), page);
		model.addAttribute("page", pagevo);

		// 리스트 설정
		int subMenuName_index_seq = Integer.parseInt(index);
		model.addAttribute("index", subMenuName_index_seq);
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed(subMenuName_index_seq, page));

		// get으로 왔다면 전체
		if (req.getMethod().equals("GET")) {
			return "member/manage/menuList";
		}

		// index가 0이 아니면 해당하는 index의 리스트 가져오기(전체를 표시하는 것이 아닌, index로 나뉘어서 표시)
		if (subMenuName_index_seq != 0) {
			log.info("Load List seq : {}", subMenuName_index_seq);
			model.addAttribute("menuList", subMenuService.findSubMenuNameList(subMenuName_index_seq, page));
		} else {
			log.info("Load List");
		}
		return "empty/member/manage/reList";
	}

	// 리스트 추가 폼이동
	@GetMapping("/create")
	public String create(@ModelAttribute("insertSubMenuVO") SubMenuVO subMenuVO, Model model) {
		log.info("Move create List form");
		subMenuVO.setSubMenuName(importMenuName());

		return "member/manage/create";
	}

	// 리스트 추가 처리
	@PostMapping("/create_pro")
	public String create_pro(@Validated @ModelAttribute("insertSubMenuVO") SubMenuVO subMenuVO, BindingResult result,
			Model model) {
		log.info("create List");
		subMenuVO.setSubMenuName(importMenuName());

		if (result.hasErrors()) {
			log.error("create error : {}", result.getAllErrors());
			return "member/manage/create";
		}

		if (subMenuVO.getTempFile().isEmpty()) {
			log.error("create error : file is Empty");
			result.addError(new FieldError("insertSubMenuVO", "tempFile", "파일을 점부해주세요"));
			return "member/manage/create";
		}

		// 파일 변환 후 파일 번호 받아와서 게시글vo에 저장하기 + 이미지 확장자가 아니면 false
		FileVO filevo = changeFile(subMenuVO.getTempFile());
		if (filevo.getFileUUID().equals("error")) {
			log.error("create error : file isn't support");
			result.addError(new FieldError("insertSubMenuVO", "tempFile", "지원하지 않는 파일입니다"));
			return "member/manage/create";
		}

		// 파일 insert
		log.info("create file");
		fileService.insertFile(filevo);
		FileVO insertFileInfo = fileService.findFile(filevo.getFileUUID());
		subMenuVO.setFile_seq(insertFileInfo.getFile_seq());

		// 게시글 insert
		log.info("dispose of insert peed");
		subMenuService.insertPeed(subMenuVO);

		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed(0, 1));
		model.addAttribute("index", 0);
		model.addAttribute("page", 1);

		return "member/manage/menuList";
	}

	// 리스트 수정 폼 이동
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifySubMenuVO") SubMenuVO subMenuVO,
			@RequestParam("modifyidx") int subMenuList_index_seq,
			@RequestParam(value = "index", defaultValue = "0") String index,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		log.info("move modify form");
		SubMenuVO tempsubMenuVO = subMenuService.selectSubMenuVO(subMenuList_index_seq);
		tempsubMenuVO.setSubMenuName(importMenuName());

		model.addAttribute("modifySubMenuVO", tempsubMenuVO);
		int subMenuName_index_seq = Integer.parseInt(index);
		model.addAttribute("index", subMenuName_index_seq);
		model.addAttribute("page", page);

		return "member/manage/modify";
	}

	// 리스트 수정
	@PostMapping("/modify_pro")
	public String modify_pro(@Validated @ModelAttribute("modifySubMenuVO") SubMenuVO subMenuVO, BindingResult result,
			@RequestParam(value = "index", defaultValue = "0") String index,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		// 수정하는 게시글의 기본 정보
		SubMenuVO tempsubMenuVO = subMenuService.selectSubMenuVO(subMenuVO.getSubMenuList_index_seq());
		subMenuVO.setSubMenuName(importMenuName());
		subMenuVO.setFilevo(tempsubMenuVO.getFilevo());
		subMenuVO.setDel_sts(tempsubMenuVO.getDel_sts());
		int subMenuName_index_seq = Integer.parseInt(index);
		model.addAttribute("index", subMenuName_index_seq);
		model.addAttribute("page", page);

		model.addAttribute("modifySubMenuVO", subMenuVO);

		System.out.println("subMenuVO : " + subMenuVO.toString());

		if (result.hasErrors()) {
			log.error("modify error : {}", result.getAllErrors());
			return "member/manage/modify";
		}

		FileVO filevo = null;
		// 수정된 파일이 있으면, 파일 변환 후 파일 번호(index) 받아와서 게시글vo에 저장하기
		if (!subMenuVO.getTempFile().isEmpty()) {
			filevo = changeFile(subMenuVO.getTempFile());
			// 파일 확장자가 안맞으면
			if (filevo.getFileUUID().equals("error")) {
				log.error("modify error : file isn't support");
				result.addError(new FieldError("modifySubMenuVO", "tempFile", "지원하지 않는 파일입니다"));
				return "member/manage/modify";
			}
			// 파일 insert
			log.info("modify file");
			fileService.insertFile(filevo);
			FileVO insertFileInfo = fileService.findFile(filevo.getFileUUID());
			subMenuVO.setFile_seq(insertFileInfo.getFile_seq());
		}

		// param name이 다르므로 index 설정, 게시글 update
		log.info("dispose of update modify peed");
		subMenuVO.setSubMenuList_index_seq(subMenuVO.getSubMenuList_index_seq());
		subMenuService.updatePeed(subMenuVO);

		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed(Integer.parseInt(index), page));
		model.addAttribute("message", "수정되었습니다");

		return "member/manage/menuList";
	}

	// 삭제
	@GetMapping("/delete")
	public String deletePeed(@RequestParam("deleteidx") int subMenuList_index_seq,
			@RequestParam(value = "index", defaultValue = "0") String index,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		// 삭제처리(del_sts만 변경)
		log.info("dispose of delete peed");
		subMenuService.deletePeed(subMenuList_index_seq);
		int subMenuName_index_seq = Integer.parseInt(index);
		model.addAttribute("index", subMenuName_index_seq);
		model.addAttribute("page", page);

		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed(Integer.parseInt(index), page));
		model.addAttribute("message", "삭제처리되었습니다");

		return "member/manage/menuList";
	}

	// 복구
	@GetMapping("/recover")
	public String recoverPeed(@RequestParam("recoveridx") int subMenuList_index_seq,
			@RequestParam(value = "index", defaultValue = "0") String index,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		// 복구 처리(del_sts만 변경)
		log.info("dispose of recover peed");
		subMenuService.recoverPeed(subMenuList_index_seq);
		int subMenuName_index_seq = Integer.parseInt(index);
		model.addAttribute("index", subMenuName_index_seq);
		model.addAttribute("page", page);

		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed(Integer.parseInt(index), page));
		model.addAttribute("message", "복구처리되었습니다");

		return "member/manage/menuList";
	}

	// 완전 삭제
	@GetMapping("/deleteCompl")
	public String deleteComplPeed(@RequestParam("deleteidx") int subMenuList_index_seq,
			@RequestParam(value = "index", defaultValue = "0") String index,
			@RequestParam(value = "page", defaultValue = "1") int page, Model model) {
		// delete sql문
		log.info("dispose of delete completely peed");
		subMenuService.deleteComplPeed(subMenuList_index_seq);
		int subMenuName_index_seq = Integer.parseInt(index);
		model.addAttribute("index", subMenuName_index_seq);
		model.addAttribute("page", page);

		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed(Integer.parseInt(index), page));
		model.addAttribute("message", "완전히 삭제되었습니다");

		return "member/manage/menuList";
	}

}
