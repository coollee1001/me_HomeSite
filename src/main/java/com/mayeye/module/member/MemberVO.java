package com.mayeye.module.member;


import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	//아이디
	@NotBlank
	private String member_id;
	
	//이름
	private String member_name;
	
	//비밀번호
	@NotBlank
	private String member_pw;
	
	//변경할 비밀번호
	private String member_repw;
	//변경할 비밀번호 확인
	private String member_repw2;
	
	//등록 날짜
	private String reg_date;
	//변경 날짜
	private String mod_date;
	//비밀번호 변경 날짜
	private String pwd_date;
	
	//유저코드
	private String member_code;
	
	//로그인 플래그
	private boolean login_flag;
	
	// 로그인 기본 플래그 false
	public MemberVO() {
		login_flag = false;
	}

	
}
