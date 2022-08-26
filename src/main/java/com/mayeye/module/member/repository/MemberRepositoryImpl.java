package com.mayeye.module.member.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mayeye.module.member.MemberVO;



@Repository
public class MemberRepositoryImpl implements MemberRepository{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String NAMESPACE = "member.";
	
	/**
	 * 정보조회
	 */
	@Override
	public MemberVO findMember(MemberVO loginVO) {
		return sqlSession.selectOne(NAMESPACE + "findMember", loginVO.getMember_id());
	}
	
	/**
	 * 비밀번호 변경
	 */
	@Override
	public int modifyMember(MemberVO memberVO) {
		return sqlSession.update(NAMESPACE + "modifyMember", memberVO);
	}
}
