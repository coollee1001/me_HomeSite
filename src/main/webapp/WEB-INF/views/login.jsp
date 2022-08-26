<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mayeye</title>
</head>
<body>
	<form:form action="${root}member/login_pro" modelAttribute="LoginVO" method="post">
		<form:label path="member_id">아이디</form:label><br/>
		<form:input path="member_id"/><br/>
		<form:errors path="member_id" style="color:red"/><br/>
		<form:label path="member_pw">비밀번호</form:label><br/>
		<form:password path="member_pw"/><br/>
		<form:errors path="member_pw" style="color:red"/><br/>
		<form:button>로그인</form:button>
	</form:form>
</body>
</html>