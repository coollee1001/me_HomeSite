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
			<span>COMPANY</span> <strong>오시는 길</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/company/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="1-5">
				<div class="layout">
					<div class="map">
						<div class="head">
							<div data-js="map" lat="36.390923688451274" lng="127.31272874081593"></div>
						</div>
						<div class="midd">
							<ul>
								<li class="addr">대전광역시 유성구 반석동로 40번길 12 [우 : 34068]</li>
								<li class="tel">TEL : 042-862-0159</li>
							</ul>
						</div>
					</div>
					<div class="map-etc">
						<ul>
							<li class="icon-1">
								<div class="in">
									<strong>지하철 이용 시</strong>
									<p>반석역 1번 출구, 스타벅스와 할리스 커피 사이로 직진, 도보 2분</p>
								</div>
							</li>
							<li class="icon-2">
								<div class="in">
									<strong>자동차 이용 시(주차장)</strong>
									<p>반석동로 34번길 5-14</p>
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