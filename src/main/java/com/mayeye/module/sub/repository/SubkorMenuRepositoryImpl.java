package com.mayeye.module.sub.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuVO;

@Repository
public class SubkorMenuRepositoryImpl implements SubkorMenuRepository{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String NAMESPACE = "subMenu.";
	
	// 모든 리스트 가져오기
	@Override
	public List<SubMenuVO> selectAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"findSubMenuList");
	}
	
	// 서브 메뉴 이름 가져오기(홈페이지 구축, 업무시스템 구축...)
	@Override
	public List<SubMenuNameVO> selectName() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE +"findSubMenuName");
	}
	
	// 분류별 게시글 정보 가져오기(ajax)
	@Override
	public List<SubMenuVO> findSubMenuNameList(int subMenuName_index_seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE + "findSubMenuNameList", subMenuName_index_seq);
	}
	
	// 게시글 정보 가져오기(read)
	@Override
	public SubMenuVO selectSubMenuVO(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "selectSubMenuVO", subMenuList_index_seq);
	}
	
}
