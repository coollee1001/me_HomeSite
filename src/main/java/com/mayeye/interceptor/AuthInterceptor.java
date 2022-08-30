package com.mayeye.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.mayeye.module.member.MemberVO;

public class AuthInterceptor implements HandlerInterceptor{	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		MemberVO loginSession = (MemberVO)session.getAttribute("loginSession");
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String contextPath = request.getContextPath();
		
		if(!loginSession.getMember_code().equals("0")) {
			out.println("<script>alert('권한이 없습니다'); location.href='"+contextPath+"/home';</script>");
			out.flush();
			return false;
		}
		return true;
	}
}
