package com.mayeye.module.file.repository;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mayeye.module.file.FileVO;

@Repository
public class FileRepositoryImpl implements FileRepository{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private final String NAMESPACE = "file.";
	
	@Override
	public FileVO findFile(String fileUUID) {
		return sqlSession.selectOne(NAMESPACE + "findFile", fileUUID); 
	}
	
	@Override
	public void insertFile(FileVO fileVO) {
		sqlSession.insert(NAMESPACE + "insertFile", fileVO);
	}
}
