package com.mayeye.module.sub.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuVO;

@Repository
public class SubMenuRepositoryImpl implements SubMenuRepository{
	
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

	// listorder구하기(insert시 MAX값+1)
	@Override
	public int listOrderSearch() {
		return sqlSession.selectOne(NAMESPACE + "listOrderSearch");
	}
	
	//게시글 등록
	@Override
	public void insertPeed(SubMenuVO subMenuVO) {
		// TODO Auto-generated method stub
		sqlSession.insert(NAMESPACE + "insertPeed", subMenuVO);
	}
	
	// 게시글 정보 가져오기(read)
	@Override
	public SubMenuVO selectSubMenuVO(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE + "selectSubMenuVO", subMenuList_index_seq);
	}
	
	// 게시글 수정
	@Override
	public void updatePeed(SubMenuVO subMenuVO) {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE + "updatePeed", subMenuVO);
	}
	
	// 게시글 삭제
	@Override
	public void deletePeed(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE + "deletePeed", subMenuList_index_seq);
	}
	
	// 게시글 복구
	@Override
	public void recoverPeed(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		sqlSession.update(NAMESPACE + "recoverPeed", subMenuList_index_seq);
	}
	
	// 게시글 완전 삭제
	@Override
	public void deleteComplPeed(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		sqlSession.delete(NAMESPACE + "deleteComplPeed", subMenuList_index_seq);
	}
}
