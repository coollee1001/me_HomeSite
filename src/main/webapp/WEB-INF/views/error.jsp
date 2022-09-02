<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<html>
<head>
	<title>mayeye</title>
</head>
<body>
<h1>
	Error
</h1>
<P>
	  ${msg}<br/>
	  <a href="${root}">홈으로</a>
</P>
</body>
</html>
