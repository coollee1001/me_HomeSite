CREATE TABLE me_homesite_accnt(
  MEMBER_ID varchar2(100) NOT NULL,
  MEMBER_NAME varchar2(300) NOT NULL,
  MEMBER_PW varchar2(1000) NOT NULL,
  REG_DATE date DEFAULT NULL,
  MOD_DATE date DEFAULT NULL,
  DEL_STS char(1) DEFAULT 'N' NOT NULL,
  PWD_DATE date DEFAULT NULL,
  MEMBER_CODE char(1),
  PRIMARY KEY (MEMBER_ID) DEFAULT '1' NOT NULL
)

COMMENT ON TABLE me_homesite_accnt IS '관리자계정관리';
COMMENT ON COLUMN me_homesite_accnt.MEMBER_ID IS '관리자ID';
COMMENT ON COLUMN me_homesite_accnt.MEMBER_NAME IS '관리자이름';
COMMENT ON COLUMN me_homesite_accnt.MEMBER_PW IS '비밀번호';
COMMENT ON COLUMN me_homesite_accnt.REG_DATE IS '등록일';
COMMENT ON COLUMN me_homesite_accnt.MOD_DATE IS '수정일';
COMMENT ON COLUMN me_homesite_accnt.DEL_STS IS '삭제여부';
COMMENT ON COLUMN me_homesite_accnt.PWD_DATE IS '비밀번호변경일';
COMMENT ON COLUMN me_homesite_accnt.MEMBER_CODE IS '유저코드';

SELECT * FROM ME_HOMESITE_ACCNT;