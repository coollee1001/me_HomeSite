-- mayeye_homepage.me_filetable definition

CREATE TABLE `me_filetable` (
  `File_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT '파일 구분값',
  `FileUUID` varchar(500) NOT NULL COMMENT '파일 UUID',
  `FileSN` int(11) DEFAULT NULL COMMENT '파일 순서',
  `FileOrignalName` varchar(500) DEFAULT NULL COMMENT '파일 오리지널 이름',
  `FileName` varchar(500) DEFAULT NULL COMMENT '서버에 저장된 파일 이름',
  `UploadPath` varchar(500) DEFAULT NULL COMMENT '업로드 저장 장소',
  `FileExtention` varchar(500) DEFAULT NULL COMMENT '파일 확장자',
  PRIMARY KEY (`File_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- mayeye_homepage.me_submenuname definition

CREATE TABLE `me_submenuname` (
  `subMenuName_index_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT '소분류 메뉴 이름 구분값',
  `title` varchar(500) NOT NULL COMMENT '소분류 메뉴 이름',
  `listorder` int(11) NOT NULL COMMENT '표시 순서',
  PRIMARY KEY (`subMenuName_index_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- mayeye_homepage.me_submenulist definition

CREATE TABLE `me_submenulist` (
  `subMenuList_index_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT '소분류 메뉴 리스트 구분값',
  `subMenuName_index_seq` int(11) NOT NULL COMMENT '소분류 메뉴 이름 구분값',
  `title` varchar(500) NOT NULL COMMENT '타이틀 이름(대구대학교 입학안내...)',
  `link` varchar(500) DEFAULT NULL COMMENT '연결 홈페이지 링크',
  `listorder` int(11) NOT NULL COMMENT '표시 순서',
  `File_seq` int(11) DEFAULT NULL COMMENT '파일 구분값',
  PRIMARY KEY (`subMenuList_index_seq`),
  KEY `me_submenulist_FK` (`File_seq`),
  KEY `me_submenulist_FK_1` (`subMenuName_index_seq`),
  CONSTRAINT `me_submenulist_FK` FOREIGN KEY (`File_seq`) REFERENCES `me_filetable` (`File_seq`),
  CONSTRAINT `me_submenulist_FK_1` FOREIGN KEY (`subMenuName_index_seq`) REFERENCES `me_submenuname` (`subMenuName_index_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;