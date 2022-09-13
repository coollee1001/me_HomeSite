package com.mayeye.module.sub.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuVO;
import com.mayeye.module.sub.service.SubkorMenuServiceImpl;

@RestController
@RequestMapping("/kor")
public class SubkorMenuController {
	private static final Logger log = LoggerFactory.getLogger(SubkorMenuController.class);
	
	@Autowired
	private SubkorMenuServiceImpl subkorMenuService;
	
	// 메뉴 이름 불러오기
	private List<SubMenuNameVO> importMenuName(){
		List<SubMenuNameVO> nameList = subkorMenuService.selectName();
		return nameList;
	}
	
	// 삭제되지 않은 리스트 불러오기
	private List<SubMenuVO> importMenuPeed(int subMenuName_index_seq){
		List<SubMenuVO> templist = new ArrayList<SubMenuVO>();
		if(subMenuName_index_seq != 0) {
			templist = subkorMenuService.findSubMenuNameList(subMenuName_index_seq);
		}else {
			templist = subkorMenuService.selectAll();
		}
		List<SubMenuVO> list = new ArrayList<SubMenuVO>();
		for(SubMenuVO vo : templist) {
			if(vo.getDel_sts().equals("N")){
				list.add(vo);
			}
		}
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/submenuList", method = {RequestMethod.GET, RequestMethod.POST})
	 public JSONObject reList(@RequestParam(value="type", defaultValue = "0") String index, Model model,
			 HttpServletRequest req) throws Exception{
		
		int subMenuName_index_seq = Integer.parseInt(index);
		List<SubMenuVO> peedlist = importMenuPeed(subMenuName_index_seq);
		List<SubMenuNameVO> namelist = importMenuName();
		model.addAttribute("menuList", peedlist);
		JSONArray req_array = new JSONArray();
		JSONObject array = new JSONObject();
		if(subMenuName_index_seq >= 0) {
			for(SubMenuNameVO peedname : namelist) {
				JSONArray req_arraydata = new JSONArray();
				JSONObject data = new JSONObject();
				for(SubMenuVO peed : peedlist ) {
					switch (peedname.getSubMenuName_index_seq()) {
					case 1:
						data.put("type", "Homepage");
						data.put("title", "홈페이지 구축");
						data.put("content", "차별화된 IT기술력으로 고객의 니즈를 반영한 홈페이지 구축 서비스 제공");
						data.put("image", "/resources/images/content/2-1_1.jpg");
						break;
					case 2:
						data.put("type", "System Integration");
						data.put("title", "업무시스템 구축");
						data.put("content", "최신 IT기술을 활용하여 최적화된 맞춤형 시스템 통합 서비스 제공");
						data.put("image", "/resources/images/content/2-1_2.jpg");
						break;
					case 3:
						data.put("type", "System Management");
						data.put("title", "시스템 운영 및 유지관리");
						data.put("content", "시스템 운영 시 발생하는 문제 해결을 위해 운영에 필요한 자원 제공");
						data.put("image", "/resources/images/content/2-1_3.jpg");
						break;
					case 4:
						data.put("type", "Big Data visualization");
						data.put("title", "빅데이터 시각화");
						data.put("content", "빅데이터를 수집 및 가공하여 데이터 시각화 플랫폼 제공");
						data.put("image", "/resources/images/content/2-1_4.jpg");
						break;
					case 5:
						data.put("type", "Metaverse");
						data.put("title", "메타버스");
						data.put("content", "언택트 기반의 3D 가상공간을 이용한 비대면 상호작용 플랫폼 제공");
						data.put("image", "/resources/images/content/2-1_5.jpg");
						break;
					case 6:
						data.put("type", "Safety management system");
						data.put("title", "안전관리시스템");
						data.put("content", "신속한 상태변화 감지와 관리 운영을 위한 신뢰성 있는 안전관리 플랫폼 제공");
						data.put("image", "/resources/images/content/2-1_6.jpg");
						break;
					}
					if(peed.getSubMenuName_index_seq() == peedname.getSubMenuName_index_seq()) {
						JSONObject listdata = new JSONObject();
						listdata.put("title", peed.getTitle());
						listdata.put("image", "/resources/upload/"+peed.getFilevo().getFileUUID());
						listdata.put("thumb", "/resources/upload/"+peed.getFilevo().getFileUUID());
						listdata.put("link", peed.getLink());
						req_arraydata.add(listdata);
					}
					data.put("list", req_arraydata);
				}
				req_array.add(data);
			}
			array.put("data", req_array);
		} 
		 log.info("submenuList");
		 return array;
	 }
}
