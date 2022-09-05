package com.mayeye.interceptor;

import java.io.PrintWriter;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.mayeye.module.member.MemberVO;


//로그인 체크
public class LoginInterceptor implements HandlerInterceptor{	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		MemberVO loginSession = (MemberVO)session.getAttribute("loginSession");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String contextPath = request.getContextPath();
		
		if(Objects.equals(loginSession, null)) {
			out.println("<script>alert('로그인을 해주세요'); location.href='"+contextPath +"/member/login'</script>");
			out.flush();
			return false;
		}
		
		if(Objects.equals(loginSession.isLogin_flag(), false)) {
			out.println("<script>alert('로그인을 해주세요'); location.href='"+contextPath +"/member/login'</script>");
			out.flush();
			return false;
		}
		return true;
	}
}
