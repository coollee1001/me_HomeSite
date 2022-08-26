<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정</title>
</head>
<body>
	<c:if test="${message ne null}"><script>alert('변경되었습니다'); location.href="/home";</script></c:if>
	<c:if test="${modifyVO.member_code ne '0'}"><script>alert('권한이 없습니다'); location.href="/home"</script></c:if>
	<form:form action="${root}member/modify_pro" modelAttribute="modifyVO" method="post">
		<form:hidden path="member_id"/>
		<form:label path="member_pw">현재 비밀번호</form:label><br/>
		<input type="password" value="" id="member_pw" name="member_pw"/><br/>
		<form:errors path="member_pw" style="color:red"/><br/>
		<form:label path="member_repw">변경 비밀번호</form:label><br/>
		<input type="password" value="" id="member_repw" name="member_repw"/><br/>
		<form:errors path="member_repw" style="color:red"/><br/>
		<form:label path="member_repw2">변경 비밀번호 확인</form:label><br/>
		<input type="password" value="" id="member_repw2" name="member_repw2"/><br/>
		<form:errors path="member_repw2" style="color:red"/><br/>
		<form:button>확인</form:button>
		<button type="button" onclick="location.href='/home'">취소</button>
	</form:form>
</body>
</html>