<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<script src="/resources/js/import.js?CONTEXT_PATH=/resources"></script>
</head>
<body id="sub">
	<div class="layout">
		<h2>
			<span>SOLUTION</span> <strong>mec·archives</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/solution/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="3-3">
				<div class="layout">
					<div class="border-box" data-image="1">
						<div class="alt">체계적 관리, 영구보존 → MEC ARCHIVES → 사진, 오디어, 동영상,
							파일</div>
					</div>
					<div class="tip-box">
						국가기록물 표준을 고려한 자료 관리 체계 마련과 자료관리시스템의 구조적, 내용적 품질관리를 할 수 있습니다.<br />
						메타데이터 항목 추가, 수정 등 관리 기능을 포함하고 있어 자료 등록 시 표준화된 분류 체계로 등록할 수 있으며
						통합검색 기능 구현을 통한 자료 검색을 제공합니다.
					</div>

					<h4>주요기능</h4>
					<div class="list-1">
						<ul>
							<li>
								<div class="in">
									<strong>자료 등록 및 관리</strong>
									<div>자료 일괄등록 및 내보내기, 대용량 파일 업로드/다운로드, 등록 자료 원본, 기본 이미지,
										썸네일 이미지 등 이미지 리사이징과 이미지 속성 자동추출 기능을 제공합니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>메타데이터 관리 기능</strong>
									<div>자료 관리를 위한 메타데이터 생성 및 수정 등 관리기능을 제공하고 생산부서, 주제, 연도,
										필수입력항목, 검색, 목록 노출 등의 환경설정을 지원합니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>관리 업무 효율성 제고</strong>
									<div>자료등록 담당자의 개발권한 부여 및 관리 권한 부여, 자료등록/열람권한 설정, 저작권 정보
										관리 기능과 자료 등록 담당자별 등록 현황 및 활용 현황 관리 기능을 제공합니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>통계관리 기능</strong>
									<div>자료의 유형별, 시대별, 국가별 등록 현황 및 이용현황 통계와 조회 순위, 다운로드 순위,
										일별/주별/월별 이용자 접속통계 정보를 제공합니다.</div>
								</div>
							</li>
						</ul>
					</div>

					<h4>특장점</h4>
					<div class="list-3">
						<ul>
							<li><strong><span><em>01</em><span>공공기록물
											관리·운영 정책을 준수한 자료 관리 체계 구축</span></span></strong></li>
							<li><strong><span><em>02</em><span>자료
											유형 분석, 분류체계 설계와 체계적인 관리 보장</span></span></strong></li>
							<li><strong><span><em>03</em><span>운영·관리의
											효율성과 안정적인 서비스를 위한 보안 조치 및 공공기관 주요 지침 준수</span></span></strong></li>
							<li><strong><span><em>04</em><span>기록물에
											대한 다양한 정보 및 부가기능 제공, 자료 및 통계 관리로 업무 효율성 증대 효과</span></span></strong></li>
						</ul>
					</div>

					<h4>도입효과</h4>
					<div class="list-2">
						<div>
							<span>보존(Preservation), 관리(Management), 활용(Application)</span>
						</div>
						<ul>
							<li>
								<div class="in">
									<strong>보존</strong>
									<div>문서의 내용을 실시간으로 열람할 수 있도록 빠른 변환속도와 높은 안정성을 제공하고 있으며,
										향후 확장성을 보장합니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>활용</strong>
									<div>이미지 변환 방식이 아닌 HTML 변환 방식을 사용하고 있어 변환을 위한 별도의 MS 오피스
										또는 아래아 한글 라이선스가 필요하지 않습니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>관리</strong>
									<div>문서를 HTML로 변화하여 제공하므로 모든 모바일 디바이스에서 문서 열람이 가능하며, 스마트
										기기 사용자 증가에 완벽하게 대응할 수 있습니다.</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>