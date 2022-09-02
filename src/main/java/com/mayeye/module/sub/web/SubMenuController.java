package com.mayeye.module.sub.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mayeye.module.file.FileVO;
import com.mayeye.module.file.service.FileServiceImpl;
import com.mayeye.module.sub.SubMenuNameVO;
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
	
	//파일 이름 설정 및 업로드 처리
	private FileVO changeFile(MultipartFile tempfile){
		//객체 설정
		FileVO filevo = new FileVO();
		filevo.setFileUUID(UUID.randomUUID().toString().replaceAll("-", ""));
		filevo.setFileOriginalName(tempfile.getOriginalFilename());
		filevo.setFileName(tempfile.getOriginalFilename().substring(0, filevo.getFileOriginalName().lastIndexOf(".")));
		filevo.setFileExtention(filevo.getFileOriginalName().substring(filevo.getFileOriginalName().lastIndexOf(".")));
		filevo.setUploadPath(UPLOAD_PATH);
		
		
		//확장자 한번 더 검사
		if(!hasAndkey(filevo.getFileExtention(), ".tif", ".pjp", ".jfif", ".ico", ".tiff", ".gif", ".svg", ".xbm", ".jxl", ".jpeg", ".svgz", ".jpg", ".webp", ".png", ".bmp", ".pjpeg", ".avif")){
			filevo.setFileUUID("error");
			return filevo;
		}
		
		FileOutputStream fos = null;
		
		//업로드 처리
		try {
			File file = new File(filevo.getUploadPath() + filevo.getFileUUID());
			tempfile.transferTo(file);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(fos != null) {
				try {
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}			
		}
		return filevo;
	}
	
	//여러 문자 비교
	private boolean hasAndkey(String value, String... keys) {
		for(String key : keys) {
			System.out.println(value + " : " + key);
			if(value.equals(key)) {
				return true;
			}
		}
		return false;
	}
	
	private List<SubMenuNameVO> importMenuName(){
		List<SubMenuNameVO> nameList = subMenuService.selectName();
		return nameList;
	}
	
	private List<SubMenuVO> importMenuPeed(){
		List<SubMenuVO> list = subMenuService.selectAll();
		return list;
	}
	
	
	// 관리자 폼이동
	@GetMapping()
	public String manage() {
		log.info("Move form manage");
		return "member/manage/info";
	}
	
	// 리스트 확인 폼이동
	@GetMapping("/menuList")
	public String menuList(Model model) {
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed());
		return "member/manage/menuList";
	}
	
	// 분류별 리스트 확인 폼이동(ajax)
	 @PostMapping("/menuList")
	 public String reList(@RequestParam("index") String index, Model model) throws Exception{
		 int subMenuName_index_seq = Integer.parseInt(index);
		 if(subMenuName_index_seq != 0) {
			 model.addAttribute("menuList", subMenuService.findSubMenuNameList(subMenuName_index_seq));
		 }else {
			 model.addAttribute("menuList", importMenuPeed());
		 }
		 model.addAttribute("menuNameList", importMenuName());
		 return "empty/member/manage/reList";
	 }
	
	
	// 리스트 추가 폼이동
	@GetMapping("/create")
	public String create(@ModelAttribute("insertSubMenuVO") SubMenuVO subMenuVO) {
		subMenuVO.setSubMenuName(importMenuName());
		return "member/manage/create";
	}
	
	// 리스트 추가 처리
	@PostMapping("/create_pro")
	public String create_pro(@Valid @ModelAttribute("insertSubMenuVO") SubMenuVO subMenuVO, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "member/manage/create";
		}
		
		if(subMenuVO.getTempFile().isEmpty()) {
			result.addError(new FieldError("insertSubMenuVO", "tempFile", "파일을 점부해주세요"));
			return "member/manage/create";
		}
		
		//파일 변환 후 파일 번호 받아와서 게시글vo에 저장하기
		FileVO filevo = changeFile(subMenuVO.getTempFile());
		if(filevo.getFile_seq() == 0) {
			result.addError(new FieldError("insertSubMenuVO", "tempFile", "지원하지 않는 파일입니다"));
			return "member/manage/create";
		}
		
		//파일 insert
		fileService.insertFile(filevo);
		FileVO insertFileInfo = fileService.findFile(filevo.getFileUUID());
		subMenuVO.setFile_seq(insertFileInfo.getFile_seq());
		
		//게시글 insert
		subMenuService.insertPeed(subMenuVO);
		
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed());
		
		return "member/manage/menuList";
	}
	
	// 리스트 수정 폼 이동
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifySubMenuVO") SubMenuVO subMenuVO, @RequestParam("modifyidx") int subMenuList_index_seq, Model model) {
		subMenuVO = subMenuService.selectSubMenuVO(subMenuList_index_seq);
		subMenuVO.setSubMenuName(importMenuName());
		
		model.addAttribute("modifySubMenuVO", subMenuVO);
		return "member/manage/modify";
	}
	
	// 리스트 수정
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifySubMenuVO") SubMenuVO subMenuVO, @RequestParam("modifyidx") int subMenuList_index_seq,
			BindingResult result, Model model) {
		SubMenuVO tempsubMenuVO = subMenuService.selectSubMenuVO(subMenuList_index_seq);
		
		if(result.hasErrors()) {
			subMenuVO.setSubMenuName(importMenuName());
			subMenuVO.setFilevo(tempsubMenuVO.getFilevo());
			model.addAttribute("modifySubMenuVO", subMenuVO);
			return "member/manage/modify";
		}
		
		FileVO filevo = null;
		//수정된 파일이 있으면, 파일 변환 후 파일 번호 받아와서 게시글vo에 저장하기
		if(!subMenuVO.getTempFile().isEmpty()) {
			filevo = changeFile(subMenuVO.getTempFile());
			if(filevo.getFileUUID().equals("error")) {
				result.addError(new FieldError("modifySubMenuVO", "tempFile", "지원하지 않는 파일입니다"));
				subMenuVO.setSubMenuName(importMenuName());
				subMenuVO.setFilevo(tempsubMenuVO.getFilevo());
				model.addAttribute("modifySubMenuVO", subMenuVO);
				return "member/manage/modify";
			}
			//파일 insert
			fileService.insertFile(filevo);
			FileVO insertFileInfo = fileService.findFile(filevo.getFileUUID());
			subMenuVO.setFile_seq(insertFileInfo.getFile_seq());
		}
		subMenuVO.setSubMenuList_index_seq(subMenuList_index_seq);
		//게시글 update
		subMenuService.updatePeed(subMenuVO);
		
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed());
		
		return "member/manage/menuList";
	}
	
	//삭제 
	@GetMapping("/delete")
	public String deletePeed(@RequestParam("deleteidx") int subMenuList_index_seq, Model model) {
		subMenuService.deletePeed(subMenuList_index_seq);
		
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed());
		
		return "member/manage/menuList";
	}
	
	// 복구
	@GetMapping("/recover")
	public String recoverPeed(@RequestParam("recoveridx") int subMenuList_index_seq, Model model) {
		subMenuService.recoverPeed(subMenuList_index_seq);
		
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed());
		
		return "member/manage/menuList";
	}
	
	
	//완전 삭제
	@GetMapping("/deleteCompl")
	public String deleteComplPeed(@RequestParam("deleteidx") int subMenuList_index_seq, Model model) {
		subMenuService.deleteComplPeed(subMenuList_index_seq);
		
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed());
		
		return "member/manage/menuList";
	}
	
	 
}
