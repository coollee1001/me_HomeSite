package com.mayeye.module.member.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mayeye.module.member.MemberVO;
import com.mayeye.module.member.service.MemberService;
import com.mayeye.validator.member.MemberValidator;

@Controller
@RequestMapping("/member")
public class MemberController {
	private static final Logger log = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private MemberService memberService;
	
	@Autowired
	BCryptPasswordEncoder passEncoder;
	
	@Lazy
	@Resource(name = "loginSession")
	private MemberVO loginSession;
	
	//로그인처리
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("LoginVO") MemberVO memberVO, BindingResult result, Model model,
			HttpServletRequest req) {
		log.info("check login");
		if(result.hasErrors()) {
			log.error("problems, login validator");
			return "login";
		}
		MemberVO temp = null; 
		temp = memberService.findMember(memberVO);
		
		//아이디가 없으면
		if(temp == null) {
			log.info("there isn't user");
			result.addError(new FieldError("LoginVO", "member_id", "존재하지 않는 사용자입니다"));
			return "login";
		}		
		
		//비밀번호가 맞지 않으면
		if(!passEncoder.matches(memberVO.getMember_pw(), temp.getMember_pw())) {
			log.info("not matching password of {}", memberVO.getMember_id());
			result.addError(new FieldError("LoginVO", "member_pw", "비밀번호가 맞지 않습니다"));
			return "login";
		}
		
		//세션 설정
		log.info("setting session");
		loginSession = temp;
		HttpSession session = req.getSession();
		session.setAttribute("loginSession", loginSession);
				
		model.addAttribute("LoginVO", loginSession);
		return "member/info";
	}
	
	//로그아웃처리
	@PostMapping("/logout")
	@ResponseBody
	public void logout(HttpServletRequest req) {
		log.info("remove session");
		HttpSession session = req.getSession();
		session.removeAttribute("loginSession");
	}
	
	//정보 수정 폼이동
	@GetMapping("/modify")
	public String modify(@ModelAttribute("modifyVO") MemberVO memberVO, Model model) {
		log.info("move to modify");
		model.addAttribute("modifyVO", loginSession);
		return "member/modify";
	}
	
	//비밀번호변경처리
	@PostMapping("/modify_pro")
	public String modify_pro(@Valid @ModelAttribute("modifyVO") MemberVO memberVO, BindingResult result,
			HttpServletRequest req, Model model) {
		log.info("check modify form");
		//현재 비밀번호가 일치하지 않으면
		if(!passEncoder.matches(memberVO.getMember_pw(), loginSession.getMember_pw())) {
			log.info("not matching current password");
			result.addError(new FieldError("modifyVO", "member_pw", "현재 비밀번호가 일치하지 않습니다"));
			return "member/modify";
		}
		
		//변경할 비밀번호가 일치하지 않으면(커스텀 에러)
		if(result.hasErrors()) {
			log.error("problems, modify validator");
			return "member/modify";
		}
		
		//비밀번호 변경(암호화 후 진행)
		memberVO.setMember_repw(passEncoder.encode(memberVO.getMember_repw()));
		MemberVO temp = memberService.modifyMember(memberVO);
		
		//세션 정보 재설정
		log.info("resetting session");
		loginSession = temp;
		HttpSession session = req.getSession();
		session.setAttribute("loginSession", loginSession);
		
		//변경 완료 alert 표시를 위한 message 설정
		model.addAttribute("message", "OK");
		
		return "member/modify";
	}
	
	//사용자 validation(커스텀 유효성 검사용)
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		MemberValidator validator1 = new MemberValidator();
	 	binder.addValidators(validator1);
	}
}
