<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<html>
<head>
	<title>mayeye</title>
	<c:if test="${message ne null}"><script>alert('로그아웃되었습니다');</script></c:if>
</head>
<body>
<h1>
	HERE HOME 
</h1>
<P>
	<a href="${root}member/login">로그인</a><br/>  
</P>
</body>
</html>
