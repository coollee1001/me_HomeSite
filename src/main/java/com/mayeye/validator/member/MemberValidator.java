package com.mayeye.validator.member;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.mayeye.module.member.MemberVO;

public class MemberValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return MemberVO.class.isAssignableFrom(clazz);
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		MemberVO memberVO = (MemberVO)target;
		String VOName = errors.getObjectName();
		
		if(VOName.equals("modifyVO")) {
			if(memberVO.getMember_repw().equals(null) || memberVO.getMember_repw().trim().isEmpty()) {
				errors.rejectValue("member_repw", "NoNull");
			}
			if(!memberVO.getMember_repw().equals(memberVO.getMember_repw2())) {
				errors.rejectValue("member_repw2", "NotEquals");
			}
		}			
	}
}
