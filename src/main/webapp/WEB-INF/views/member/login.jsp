<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root}resources/css/core.css" media="all">
<link rel="stylesheet" href="${root}resources/css/content.css" media="all">
<link rel="stylesheet" href="${root}resources/css/layout.css" media="all">
<title>mayeye</title>
<c:if test="${message ne null}"><script>alert('로그아웃되었습니다');</script></c:if>
</head>
<body class="cms mobile" id="intro">
	<div id="wrap">
		<div class="login">
			<h1>"MAYEYE"
				<span>관리자</span>
			</h1>
			<div class="login_box">
				<div class="line">
					<form:form action="${root}member/login_pro" modelAttribute="LoginVO" method="post">
					<div class="inner">
						<ul>
							<li><form:label path="member_id">아이디</form:label>
							<form:input path="member_id" placeholder="아이디를 입력해주세요"/>
							<form:errors path="member_id" style="color:red"/>
							</li>
							<li><form:label path="member_pw">비밀번호</form:label>
							<form:password path="member_pw" placeholder="비밀번호를 입력해주세요"/>
							<form:errors path="member_pw" style="color:red"/>
							</li>
						</ul>
						<input type="submit" value="로그인"/>
					</div>
					</form:form>
					<span class="verson">mec・cms V3.1</span>
				</div>
			</div>
		</div>
	</div>
	<p class="footer">copyright © 2019 MAYEYE All Rights Reserved.</p>
</body>
</html>