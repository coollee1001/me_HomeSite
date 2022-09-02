package com.mayeye.module.file;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FileVO {
	// 파일 구분값(자동증가)
	private int file_seq;
	
	// 파일 UUID(파일이름 암호화)
	private String fileUUID;
	
	// 파일 원래 이름
	private String fileOriginalName;
	
	// 서버 저장용 파일 이름
	private String fileName;
	
	// 업로드 경로
	private String uploadPath;
	
	// 파일 확장명
	private String fileExtention;
	
	
}
