package com.mayeye.module.sub.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mayeye.module.sub.SubMenuNameVO;
import com.mayeye.module.sub.SubMenuPageVO;
import com.mayeye.module.sub.SubMenuVO;
import com.mayeye.module.sub.repository.SubMenuRepository;

@Service
public class SubMenuServiceImpl implements SebMenuService {
	
	@Autowired
	private SubMenuRepository subMenuRepository;
	
	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	
	// 모든 리스트 가져오기
	@Override
	public List<SubMenuVO> selectAll(int page) {
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		List<SubMenuVO> list = subMenuRepository.selectAll(rowBounds);
		return list;
	}
	
	// 서브 메뉴 이름 가져오기(홈페이지 구축, 업무시스템 구축...)
	@Override
	public List<SubMenuNameVO> selectName() {
		// TODO Auto-generated method stub
		List<SubMenuNameVO> list = subMenuRepository.selectName();
		return list;
	}
	
	// 분류별 게시글 정보 가져오기
	@Override
	public List<SubMenuVO> findSubMenuNameList(int subMenuName_index_seq, int page) {
		int start = (page - 1) * page_listcnt;
		RowBounds rowBounds = new RowBounds(start, page_listcnt);
		List<SubMenuVO> list = subMenuRepository.findSubMenuNameList(subMenuName_index_seq, rowBounds);
		return list;
	}
	
	// 페이징 세팅
	@Override
	public SubMenuPageVO getContentCnt(int subMenuName_index_seq, int page) {
		int content_cnt = subMenuRepository.getContentCnt(subMenuName_index_seq);
		SubMenuPageVO pageVO = new SubMenuPageVO(content_cnt, page, page_listcnt, page_paginationcnt); 
		return pageVO;
	}
	
	// 게시글 등록
	@Override
	public void insertPeed(SubMenuVO subMenuVO) {
		// TODO Auto-generated method stub
		// istorder구하기(insert시 MAX값+1)
		int listOrder = subMenuRepository.listOrderSearch();
		
		subMenuVO.setListOrder(listOrder);
		subMenuRepository.insertPeed(subMenuVO);
	}
	
	// 게시글 정보 가져오기(read)
	@Override
	public SubMenuVO selectSubMenuVO(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		SubMenuVO subMenuVO = subMenuRepository.selectSubMenuVO(subMenuList_index_seq);
		return subMenuVO;
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
