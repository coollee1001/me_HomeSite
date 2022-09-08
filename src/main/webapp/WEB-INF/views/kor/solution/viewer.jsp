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
			<span>SOLUTION</span> <strong>mec·viewer</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/solution/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="3-2">
				<div class="layout">
					<div class="border-box" data-image="1">
						<div class="alt">DOC, XLS, PPT, HWP. PDF → MEC
							VIEWER(웹브라우저에서 API 호출(파라미터)을 통한 문서변환) → HTML</div>
					</div>
					<div class="tip-box">데스크톱이나 모바일 환경의 웹 브라우저에서 MS 오피스, 아래아한글,
						PDF 첨부문서의 내용을 신속하게 볼 수 있는 문서 뷰어입니다. 문서의 내용을 이미지가 아니 HTML로 변환하는 방식을
						채택하여 별도의 뷰어 설치나 애플리케이션 없이도 바로 내용 확인이 가능합니다.</div>

					<h4>주요기능</h4>
					<div class="list-1">
						<ul>
							<li>
								<div class="in">
									<strong>빠른 문서 보기</strong>
									<div>문서의 내용을 실시간으로 열람할 수 있도록 빠른 변환속도와 높은 안정성을 제공하고 있으며,
										향후 확장성을 보장합니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>HTML 변환 방식 채택</strong>
									<div>이미지 변환 방식이 아닌 HTML 변환 방식을 사용하고 있어 변환을 위한 별도의 MS오피스
										또는 아래아 한글 라이선스가 필요하지 않습니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>다양한 기기 호환</strong>
									<div>문서를 HTML로 변화하여 제공하므로 모든 모바일 디바이스에서 문서 열람이 가능하며, 스마트
										기기 사용자 증가에 완벽하게 대응할 수 있습니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>편리한 정보 접근</strong>
									<div>문서를 보기 위해 별도의 ActiveX, 플러그인 설치나 전용 뷰어 프로그램이 필요하지
										않으며, 웹 브라우저만으로 누구나 쉽게 미리보기가 가능합니다.</div>
								</div>
							</li>
						</ul>
					</div>

					<h4>특장점</h4>
					<div class="list-3">
						<ul>
							<li><strong><span><em>01</em><span>모든
											디바이스를 완벽하게 지원하며, 웹 접근성, 웹 호환성 준수</span></span></strong></li>
							<li><strong><span><em>02</em><span>라이선스
											추가 구매나 문서에 사용된 폰트에 대한 저작권 이슈가 없음</span></span></strong></li>
							<li><strong><span><em>03</em><span>자체
											개발한 HTML 변환 엔진을 사용하고 있으므로 프로그램 설치 불필요</span></span></strong></li>
							<li><strong><span><em>04</em><span>MS워드,
											엑셀, 파워포인트, 아래아한글, PDF 문서의 미리보기 제공</span></span></strong></li>
							<li><strong><span><em>05</em><span>GS인증(1등급)을
											획득한 품질인증 제품</span></span></strong></li>
						</ul>
					</div>

					<h4>도입효과</h4>
					<div class="border-box" data-image="2">
						<div class="alt">MEC VIEWER → SOLUTION[원인:악성코드 실행(오피스/한글
							실행:첨부파일 내 자바스크립트 실행(악성코드 매크로 실행), 서버 감염:불법 파일 또는 악성파일 서버 내
							설치),원인:오피스 변환(첨부파일 유입:감염된 첨부파일 열람)] / 상용 프로그램 없이 첨부문서를 열람 / 첨부파일
							변환 시 발생하는 서버감염 방지</div>
					</div>

				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>