package com.mayeye;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mayeye.module.member.MemberVO;

@Controller
public class HomeController {
	private static final Logger log = LoggerFactory.getLogger(HomeController.class);
	@Resource(name = "loginSession")
	@Lazy
	private MemberVO loginSession;
	
	
	@GetMapping("/")
	public String home(HttpServletRequest req, Model model) {
		log.info("check session");
		HttpSession session = req.getSession();
		loginSession = (MemberVO)session.getAttribute("loginSession");
		
		if(loginSession != null) {
			log.info("get session");
			model.addAttribute("loginSession", loginSession);
			return "member/info";
		}
		log.info("null session");
		return "home";
	}
	
	@GetMapping("/login")
	public String login(Model model) {
		log.info("move to login form");
		MemberVO loginVO = new MemberVO();
		model.addAttribute("LoginVO", loginVO);
		return "login";
	}	
}
