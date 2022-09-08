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
			<span>SOLUTION</span> <strong>mec·search</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/solution/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="3-4">
				<div class="layout">
					<div class="border-box" data-image="1">
						<div class="alt">MEC SEARCH ← [웹페이지(이용자 → 웹페이지 색인, 검색) → 웹
							크롤러(웹자료수집기)/색인기/검색기/DB자료 수집기 ← (DOC, XLS, PPT, HWP, PDF) → DB데이터
							수집, 내용 추출]</div>
					</div>
					<div class="tip-box">홈페이지 내에 존재하는 정보와 메뉴, 게시물, 첨부파일 본문 내용을
						수집하여 색인하고, 검색을 요청한 키워드에 대한 결과를 한눈에 알아볼 수 있도록 제공하는 통합검색 솔루션입니다.</div>

					<h4>주요기능</h4>
					<div class="list-1">
						<ul>
							<li>
								<div class="in">
									<strong>신속한 설치</strong>
									<ul>
										<li>솔루션의 신속한 설치 지원</li>
										<li>설치 시 현행 서비스 영향도 거의 없음</li>
										<li>다수의 국내 기관 설치 노하우 보유</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>맞춤 검색 설정</strong>
									<ul>
										<li>검색 제외 단어 필터링 등록/관리, 실시간 검색어, 주월간 검색어 관리, 추천 콘텐츠 설정</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>다양한 검색 방식</strong>
									<ul>
										<li>키워드 검색, 상세 검색, 결과 내 검색, 실시간 검색어 순위, 주월간 검색어 순위, 첨부파일
											내용 검색</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>반응형 웹 지원</strong>
									<ul>
										<li>최신 웹 브라우저 완벽 호환</li>
										<li>이용자의 다양한 접속환경 지원</li>
										<li>모든 해상도에 적합한 검색화면 제공</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>

					<h4>특장점</h4>
					<p>
						추천 콘텐츠 관리와 첨부파일 내용 검색은 물론 형태소 분석을 통한 양질의 검색결과를 제공합니다.<br /> 이용자의
						입력 빈도가 높은 검색어에 대한 검색 결과 화면에 관리자가 추천하고 싶은 콘텐츠를 설정하여 강제로 노출할 수 있습니다.
						또한 형태소를 분석하고, 게시판 첨부파일의 내용까지 인덱싱한 후, 검색결과를 제공하므로 양질의 검색 서비스가
						제공됩니다.
					</p>
					<div class="list-3">
						<strong><span>추천 콘텐츠</span></strong>
						<ul>
							<li><strong><span><em>반응형 웹 지원</em><span>검색결과
											상단에 관리자가 등록한 추천 콘텐츠를 노출</span></span></strong></li>
							<li><strong><span><em>첨부파일 검색</em><span>첨부파일의
											내용까지 검색하는 지능형 검색엔젠</span></span></strong></li>
							<li><strong><span><em>형태소 분석</em><span>형태소
											분석 알고리즘을 통해 검색결과 정확도 향상</span></span></strong></li>
						</ul>
					</div>

					<h4>도입효과</h4>
					<div class="list-2">
						<ul>
							<li>
								<div class="in">
									<strong>이용자 검색어 데이터화</strong>
									<div>사용자 조회결과에 대한 실시간, 주간, 월간, 연간 통계를 확인하여 홈페이지에서 제공하는
										콘텐츠 개선 및 사용자 니즈(Needs)에 맞는 정보를 제공 방향을 모색할 수 있습니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>기관 이미지 제고</strong>
									<div>빠르고 지속적으로 생성되는 데이터에 대한 실시간 분석 및 검색 서비스 제공을 통해 이용자가
										찾는 정보에 대한 접근을 향상할 수 있으며, 이를 통해 기관의 이미지를 제고할 수 있습니다.</div>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>콘텐츠 소비 강화</strong>
									<div>추천 콘텐츠를 통해 사용자에게 푸시 방식으로 이슈 콘텐츠를 제공할 수 있어, 기관의 정책이나
										정보검색에 미흡한 이용자도 중요 콘텐츠에 대한 접근 기회를 확대할 수 있습니다.</div>
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