<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<html>
<head>
	<title>mayeye</title>
	<link rel="stylesheet" href="${root}resources/css/common.css">
</head>
<body>
	<div class='wrap'>
		<tiles:insertAttribute name="header"/>
		<div class='content'>
			<tiles:insertAttribute name="left"/>
			<div class='page_content'>
				<tiles:insertAttribute name="body"/>
			</div>
		</div>
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>
