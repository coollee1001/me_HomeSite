package com.mayeye.module.sub.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuVO;

public interface SubkorMenuRepository {
	
	// 모든 리스트 가져오기
	public List<SubMenuVO> selectAll();
	
	// 서브 메뉴 이름 가져오기(홈페이지 구축, 업무시스템 구축...)
	public List<SubMenuNameVO> selectName();
	
	// 분류별 게시글 정보 가져오기(ajax)
	public List<SubMenuVO> findSubMenuNameList(int subMenuName_index_seq);
	
	// 게시글 정보 가져오기(read)
	public SubMenuVO selectSubMenuVO(int subMenuList_index_seq);		
	
	
}
