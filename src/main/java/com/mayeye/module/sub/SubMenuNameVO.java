package com.mayeye.module.sub;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SubMenuNameVO {
	// 소분류 메뉴 이름 구분값(자동증가)
	private int subMenuName_index_seq;
	
	// 소분류 메뉴 이름
	private String title;
	
	// 표시 순서 제어
	private int listOrder;
}
