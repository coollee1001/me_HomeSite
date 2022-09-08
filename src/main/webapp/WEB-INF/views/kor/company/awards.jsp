<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
	<script src="/resources/js/import.js?CONTEXT_PATH=/resources"></script>
</head>
<body id="sub">
	<div class="layout">
		<h2>
			<span>COMPANY</span> <strong>수상 및 인증</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/company/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="1-3">
				<div class="item-1" data-box="dark">
					<div class="layout">
						<div class="head">
							<strong>AWARDS</strong>
						</div>
						<div class="midd" data-js="awards"></div>
					</div>
				</div>
				<div class="item-2">
					<div class="layout">
						<div class="head">
							<strong>인증</strong>
						</div>
						<div class="midd" data-js="sangjang"></div>
					</div>
				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>