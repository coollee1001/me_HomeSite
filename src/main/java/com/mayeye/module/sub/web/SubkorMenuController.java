package com.mayeye.module.sub.web;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuVO;
import com.mayeye.module.sub.service.SubMenuServiceImpl;

@Controller
@RequestMapping("/kor")
public class SubkorMenuController {
	private static final Logger log = LoggerFactory.getLogger(SubkorMenuController.class);
	
	@Autowired
	private SubMenuServiceImpl subMenuService;
	
	// 메뉴 이름 불러오기
	private List<SubMenuNameVO> importMenuName(){
		List<SubMenuNameVO> nameList = subMenuService.selectName();
		return nameList;
	}
	
	// 삭제되지 않은 리스트 불러오기
	private List<SubMenuVO> importMenuPeed(int subMenuName_index_seq){
		List<SubMenuVO> templist = new ArrayList<SubMenuVO>();
		if(subMenuName_index_seq != 0) {
			templist = subMenuService.findSubMenuNameList(subMenuName_index_seq);
		}else {
			templist = subMenuService.selectAll();
		}
		List<SubMenuVO> list = new ArrayList<SubMenuVO>();
		for(SubMenuVO vo : templist) {
			if(vo.getDel_sts().equals("N")){
				list.add(vo);
			}
		}
		return list;
	}
	
	// 리스트 확인 폼이동(일반사용자)
	@GetMapping("/submenuList")
	public String submenuList(Model model) {
		log.info("Load Listform manage");
		model.addAttribute("menuNameList", importMenuName());
		model.addAttribute("menuList", importMenuPeed(0));
		return "kor/sub";
	}
		 
	// 분류별 리스트 확인 폼이동(ajax)(일반사용자)
	 @PostMapping("/submenuList")
	 public String subreList(@RequestParam("index") String index, Model model) throws Exception{
		 int subMenuName_index_seq = Integer.parseInt(index);
		 model.addAttribute("menuList", importMenuPeed(subMenuName_index_seq));		 
		 model.addAttribute("menuNameList", importMenuName());
		 return "empty/kor/reList";
	 }
}
