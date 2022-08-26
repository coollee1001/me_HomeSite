<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
function getLogout()
{
	$.ajax({
		type : "post",
		url : '${root}member/logout',
		success:function(data){
			alert("로그아웃 되었습니다");
			location.href = "/home";
		}
	});
};
</script>
<title>로그인 정보</title>
</head>
<body>
	로그인 아이디 : ${loginSession.member_id}<br/>
	로그인 유저 : ${loginSession.member_name}<br/>
	<a href="javascript:void(0);" onclick="getLogout()">로그아웃</a>
	<c:if test="${loginSession.member_code eq '0'}"><a href="${root}member/modify">정보수정</a></c:if>
</body>
</html>