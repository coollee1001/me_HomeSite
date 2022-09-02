package com.mayeye.module.sub.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuVO;
import com.mayeye.module.sub.repository.SubMenuRepository;

@Service
public class SubMenuServiceImpl implements SebMenuService {
	
	@Autowired
	private SubMenuRepository subMenuRepository;
	
	// 리스트 가져오기
	@Override
	public List<SubMenuVO> selectAll() {
		List<SubMenuVO> list = subMenuRepository.selectAll();
		return list;
	}
	
	// 메뉴 이름 가져오기
	@Override
	public List<SubMenuNameVO> selectName() {
		// TODO Auto-generated method stub
		List<SubMenuNameVO> list = subMenuRepository.selectName();
		return list;
	}
	
	// 게시글 등록
	@Override
	public void insertPeed(SubMenuVO subMenuVO) {
		// TODO Auto-generated method stub
		int listOrder = subMenuRepository.listOrderSearch();
		
		subMenuVO.setListOrder(listOrder);
		subMenuRepository.insertPeed(subMenuVO);
		
	}
	
	// 게시글 정보 가져오기
	@Override
	public SubMenuVO selectSubMenuVO(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		SubMenuVO subMenuVO = subMenuRepository.selectSubMenuVO(subMenuList_index_seq);
		return subMenuVO;
	}
	
	// // 분류별 게시글 정보 가져오기
	@Override
	public List<SubMenuVO> findSubMenuNameList(int subMenuName_index_seq) {
		List<SubMenuVO> list = subMenuRepository.findSubMenuNameList(subMenuName_index_seq);
		return list;
	}
	
	// 게시글 수정
	@Override
	public void updatePeed(SubMenuVO subMenuVO) {
		// TODO Auto-generated method stub
		subMenuRepository.updatePeed(subMenuVO);
		
	}
	
	// 삭제
	@Override
	public void deletePeed(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		subMenuRepository.deletePeed(subMenuList_index_seq);
	}
	
	//복구
	@Override
	public void recoverPeed(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		subMenuRepository.recoverPeed(subMenuList_index_seq);
		
	}
	
	// 완전 삭제
	@Override
	public void deleteComplPeed(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		subMenuRepository.deleteComplPeed(subMenuList_index_seq);
	}

	
}
