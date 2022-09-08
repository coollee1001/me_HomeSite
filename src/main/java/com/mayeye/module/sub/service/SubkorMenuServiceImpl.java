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
import com.mayeye.module.sub.repository.SubkorMenuRepository;

@Service
public class SubkorMenuServiceImpl implements SubkorMenuService {
	
	@Autowired
	private SubkorMenuRepository subkorMenuRepository;
	
	@Value("${page.listcnt}")
	private int page_listcnt;
	
	@Value("${page.paginationcnt}")
	private int page_paginationcnt;
	
	
	// 모든 리스트 가져오기
	@Override
	public List<SubMenuVO> selectAll() {
		List<SubMenuVO> list = subkorMenuRepository.selectAll();
		return list;
	}
	
	// 서브 메뉴 이름 가져오기(홈페이지 구축, 업무시스템 구축...)
	@Override
	public List<SubMenuNameVO> selectName() {
		// TODO Auto-generated method stub
		List<SubMenuNameVO> list = subkorMenuRepository.selectName();
		return list;
	}
	
	// 분류별 게시글 정보 가져오기
	@Override
	public List<SubMenuVO> findSubMenuNameList(int subMenuName_index_seq) {
		List<SubMenuVO> list = subkorMenuRepository.findSubMenuNameList(subMenuName_index_seq);
		return list;
	}
	
	
	// 게시글 정보 가져오기(read)
	@Override
	public SubMenuVO selectSubMenuVO(int subMenuList_index_seq) {
		// TODO Auto-generated method stub
		SubMenuVO subMenuVO = subkorMenuRepository.selectSubMenuVO(subMenuList_index_seq);
		return subMenuVO;
	}
	
	
}
