package com.mayeye.module.file.service;

import com.mayeye.module.file.FileVO;

public interface FileService {
	
	// 파일 찾기
	public FileVO findFile(String FileUUID);
	
	// 파일 등록
	public void insertFile(FileVO fileVO);
	
}
