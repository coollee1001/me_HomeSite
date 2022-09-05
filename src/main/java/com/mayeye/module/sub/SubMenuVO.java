package com.mayeye.module.sub;

import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import org.springframework.web.multipart.MultipartFile;

import com.mayeye.module.file.FileVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubMenuVO {
	// 소분류 메뉴 리스트 구분값(자동증가)
	private int subMenuList_index_seq;
	
	// 소분류 메뉴 이름 구분값(외래키 : SubMenuNameVO.subMenuName_index_seq)
	private List<SubMenuNameVO> subMenuName;
	
	// 소분류 메뉴 이름
	private int subMenuName_index_seq;
	
	// 타이틀 이름
	@NotBlank
	private String title;
	
	// 연결 홈페이지 링크
	@NotBlank
	@Pattern(regexp = "^(http(s)?:\\/\\/)([a-zA-Z0-9\\w]+\\.*)+[a-zA-Z0-9]{2,4}$", message = "http[s]://www.~ 형태로 입력해주세요")
	private String link;
	
	// 순서 제어
	private int listOrder;
	
	// 파일설정
	private FileVO filevo;
	
	// 파일 번호(외래키 : FileVO.file_seq)
	private int file_seq;
	
	// (java에서만) 파일 임시 저장 
	private MultipartFile tempFile;
	
	// 삭제여부
	private String del_sts;

	@Override
	public String toString() {
		return "SubMenuVO [subMenuList_index_seq=" + subMenuList_index_seq + ", subMenuName=" + subMenuName
				+ ", subMenuName_index_seq=" + subMenuName_index_seq + ", title=" + title + ", link=" + link
				+ ", listOrder=" + listOrder + ", filevo=" + filevo + ", file_seq=" + file_seq + ", tempFile="
				+ tempFile + "]";
	}

	
	
}
