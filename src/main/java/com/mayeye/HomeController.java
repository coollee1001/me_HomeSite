package com.mayeye;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mayeye.module.member.MemberVO;

@Controller
public class HomeController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);	
	
	// 일반사용자용
	@GetMapping("/kor")
	public String kor() {
		log.info("Move form common");
		return "redirect:/kor/submenuList";
	}
	
	@GetMapping("/")
	public String kor_main() {
		log.info("Move form common");
		return "redirect:/kor/submenuList";
	}
	
	// 홈화면폼, 로그인 세션확인(관리자용)
	@GetMapping("/home")
	public String home(HttpServletRequest req, Model model) {
		log.info("check session");
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginSession");

		// 가능성 : nullPointError Exception 
		if (memberVO == null || !memberVO.isLogin_flag()) {
			log.info("null session");
			return "forward:/member/login";
		}
		log.info("get session");
		model.addAttribute("loginSession", (MemberVO) session.getAttribute("loginSession"));
		
		return "member/info";
	}
	
}
