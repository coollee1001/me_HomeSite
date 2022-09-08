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
			<span>BUSINESS</span> <strong>사업분야</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/business/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="2-1">
				<div data-js="business" data-target-link="/kor/business/performance"></div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>