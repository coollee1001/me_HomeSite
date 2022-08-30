package com.mayeye.module.member.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayeye.module.member.MemberVO;
import com.mayeye.module.member.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberRepository memberRepository;
	
	/**
	 * 정보조회
	 */	
	@Override
	public MemberVO findMember(MemberVO loginVO) {
		MemberVO memberVO = memberRepository.findMember(loginVO);
		return memberVO;
	}
	
	/**
	 * 비밀번호 변경
	 */
	@Override
	public MemberVO modifyMember(MemberVO memberVO) {
		int flag = memberRepository.modifyMember(memberVO);
		if(flag>0) {
			memberVO = memberRepository.findMember(memberVO);
		}
		return memberVO;
	}
	
}
