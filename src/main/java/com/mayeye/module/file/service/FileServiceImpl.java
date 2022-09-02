package com.mayeye.module.file.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mayeye.module.file.FileVO;
import com.mayeye.module.file.repository.FileRepositoryImpl;

@Service
public class FileServiceImpl implements FileService{
	
	@Autowired
	private FileRepositoryImpl fileRepository;
	
	// 파일 찾기
	@Override
	public FileVO findFile(String fileUUID) {
		return fileRepository.findFile(fileUUID);
	}

	//파일 등록
	@Override
	public void insertFile(FileVO fileVO) {
		fileRepository.insertFile(fileVO);	
	}
}
