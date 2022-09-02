package com.mayeye.module.file.repository;


import com.mayeye.module.file.FileVO;

public interface FileRepository {
	// 파일 찾기
	public FileVO findFile(String fileUUID);
	// 파일 등록
	public void insertFile(FileVO fileVO);
}
