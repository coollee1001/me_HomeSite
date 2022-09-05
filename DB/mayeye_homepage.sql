CREATE DATABASE `mayeye_homepage` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `me_homesite_accnt` (
  `member_id` varchar(100) NOT NULL COMMENT '관리자ID',
  `member_name` varchar(100) NOT NULL COMMENT '관리자이름',
  `member_pw` varchar(1000) NOT NULL COMMENT '비밀번호',
  `reg_date` date DEFAULT NULL COMMENT '등록일',
  `mod_date` date DEFAULT NULL COMMENT '수정일',
  `del_sts` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `pwd_date` date DEFAULT NULL COMMENT '비밀번호변경일',
  `member_code` char(1) NOT NULL DEFAULT '1' COMMENT '유저코드'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- mayeye_homepage.me_filetable definition

CREATE TABLE `me_filetable` (
  `File_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT '파일 구분값',
  `FileUUID` varchar(500) NOT NULL COMMENT '파일 UUID',
  `FileOriginalName` varchar(500) DEFAULT NULL COMMENT '파일 오리지널 이름',
  `FileName` varchar(500) DEFAULT NULL COMMENT '서버에 저장된 파일 이름',
  `UploadPath` varchar(500) DEFAULT NULL COMMENT '업로드 저장 장소',
  `FileExtention` varchar(500) DEFAULT NULL COMMENT '파일 확장자',
  PRIMARY KEY (`File_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- mayeye_homepage.me_submenuname definition

CREATE TABLE `me_submenuname` (
  `subMenuName_index_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT '소분류 메뉴 이름 구분값',
  `title` varchar(500) NOT NULL COMMENT '소분류 메뉴 이름',
  `listOrder` int(11) NOT NULL COMMENT '표시 순서',
  PRIMARY KEY (`subMenuName_index_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- mayeye_homepage.me_submenulist definition

CREATE TABLE `me_submenulist` (
  `subMenuList_index_seq` int(11) NOT NULL AUTO_INCREMENT COMMENT '소분류 메뉴 리스트 구분값',
  `subMenuName_index_seq` int(11) NOT NULL COMMENT '소분류 메뉴 이름 구분값',
  `title` varchar(500) NOT NULL COMMENT '타이틀 이름(대구대학교 입학안내...)',
  `link` varchar(500) DEFAULT NULL COMMENT '연결 홈페이지 링크',
  `listOrder` int(11) NOT NULL COMMENT '표시 순서(내림차순)',
  `File_seq` int(11) DEFAULT NULL COMMENT '파일 구분값',
  `del_sts` char(1) DEFAULT 'N' COMMENT '삭제여부',
  PRIMARY KEY (`subMenuList_index_seq`),
  KEY `me_submenulist_FK_1` (`subMenuName_index_seq`),
  KEY `me_submenulist_FK` (`File_seq`),
  CONSTRAINT `me_submenulist_FK` FOREIGN KEY (`File_seq`) REFERENCES `me_filetable` (`File_seq`),
  CONSTRAINT `me_submenulist_FK_1` FOREIGN KEY (`subMenuName_index_seq`) REFERENCES `me_submenuname` (`subMenuName_index_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;