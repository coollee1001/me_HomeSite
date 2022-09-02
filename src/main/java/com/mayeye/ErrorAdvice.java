package com.mayeye;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ErrorAdvice {
	private Logger logger = LoggerFactory.getLogger(ErrorAdvice.class);
	
	@ExceptionHandler(Exception.class)
	public String handleException(Exception e, Model model) {
		logger.error("Exception : {}" , e.getMessage());
		model.addAttribute("msg", "페이지를 찾지 못했습니다");
		return "error";
	}
}
