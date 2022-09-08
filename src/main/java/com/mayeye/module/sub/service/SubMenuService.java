package com.mayeye.module.sub.service;

import java.util.List;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuPageVO;
import com.mayeye.module.sub.SubMenuVO;

public interface SubMenuService {
	
	// 모든 리스트 가져오기
	public List<SubMenuVO> selectAll(int page);
	
	// 서브 메뉴 이름 가져오기(홈페이지 구축, 업무시스템 구축...)
	public List<SubMenuNameVO> selectName();
	
	// 분류별 게시글 정보 가져오기(ajax)
	public List<SubMenuVO> findSubMenuNameList(int subMenuName_index_seq, int page);
	
	// 페이징 세팅
	public SubMenuPageVO getContentCnt(int subMenuName_index_seq, int page);
	
	//게시글 등록
	public void insertPeed(SubMenuVO subMenuVO);
	
	// 게시글 정보 가져오기(read)
	public SubMenuVO selectSubMenuVO(int subMenuList_index_seq);
	
	// 게시글 수정
	public void updatePeed(SubMenuVO subMenuVO);
	
	// 게시글 삭제
	public void deletePeed(int subMenuList_index_seq);
	
	//게시글 복구
	public void recoverPeed(int subMenuList_index_seq);
	
	// 완전삭제
	public void deleteComplPeed(int subMenuList_index_seq);
}
