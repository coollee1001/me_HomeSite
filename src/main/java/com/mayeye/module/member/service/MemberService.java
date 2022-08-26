package com.mayeye.module.member.service;

import com.mayeye.module.member.MemberVO;

public interface MemberService {
	/**
	 * 정보 조회
	 * @param loginVO
	 * @return
	 */
	public MemberVO findMember(MemberVO loginVO);
	
	/**
	 * 비밀번호 변경
	 * @param memberVO
	 * @return
	 */
	public MemberVO modifyMember(MemberVO memberVO);
}
