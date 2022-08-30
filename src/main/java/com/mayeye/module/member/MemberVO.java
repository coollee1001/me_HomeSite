package com.mayeye.module.member;


import javax.validation.constraints.NotBlank;

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
	
	//로그인
	private boolean login_flag;
	
	public MemberVO() {
		login_flag = false;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_repw() {
		return member_repw;
	}

	public void setMember_repw(String member_repw) {
		this.member_repw = member_repw;
	}

	public String getMember_repw2() {
		return member_repw2;
	}

	public void setMember_repw2(String member_repw2) {
		this.member_repw2 = member_repw2;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getMod_date() {
		return mod_date;
	}

	public void setMod_date(String mod_date) {
		this.mod_date = mod_date;
	}

	public String getPwd_date() {
		return pwd_date;
	}

	public void setPwd_date(String pwd_date) {
		this.pwd_date = pwd_date;
	}

	public String getMember_code() {
		return member_code;
	}

	public void setMember_code(String member_code) {
		this.member_code = member_code;
	}

	public boolean isLogin_flag() {
		return login_flag;
	}

	public void setLogin_flag(boolean login_flag) {
		this.login_flag = login_flag;
	}
	
	
	
}
