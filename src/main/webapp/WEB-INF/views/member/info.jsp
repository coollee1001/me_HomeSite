<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보</title>
</head>
<body>
	로그인 아이디 : ${loginSession.member_id}<br/>
	로그인 유저 : ${loginSession.member_name}<br/>
	<a href="${root}member/logout">로그아웃</a>
	<c:if test="${loginSession.member_code eq '0'}"><a href="${root}member/modify">정보수정</a></c:if>
</body>
</html>