package com.mayeye.module.sub.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuPageVO;
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
	private List<SubMenuVO> importMenuPeed(int subMenuName_index_seq, int page){
		List<SubMenuVO> templist = new ArrayList<SubMenuVO>();
		if(subMenuName_index_seq != 0) {
			templist = subMenuService.findSubMenuNameList(subMenuName_index_seq, page);
		}else {
			templist = subMenuService.selectAll(page);
		}
		List<SubMenuVO> list = new ArrayList<SubMenuVO>();
		for(SubMenuVO vo : templist) {
			if(vo.getDel_sts().equals("N")){
				list.add(vo);
			}
		}
		return list;
	}
	
	 @RequestMapping(value = "/submenuList", method = {RequestMethod.GET, RequestMethod.POST})
	 public String reList(@RequestParam(value="index", defaultValue = "0") String index, Model model,
			 @RequestParam(value = "page", defaultValue = "1") int page,
			 HttpServletRequest req) throws Exception{
		
		SubMenuPageVO pagevo = subMenuService.getContentCnt(Integer.parseInt(index), page);
		model.addAttribute("page", pagevo);
		
		 int subMenuName_index_seq = Integer.parseInt(index);
		 model.addAttribute("index", subMenuName_index_seq);
		 model.addAttribute("menuNameList", importMenuName());
		 model.addAttribute("menuList", importMenuPeed(subMenuName_index_seq, page));
		 
		 if(req.getMethod().equals("GET")) {
			 log.info("submenuList.get method");
			 return "kor/submenuList";
		 }
		 log.info("submenuList.post method");
		 return "empty/kor/reList";
	 }
}
