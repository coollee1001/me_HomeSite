<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>
	<a href="javascript:void(0)" onclick="reList(0)">전체</a>&nbsp;
	<c:forEach var="obj" items="${menuNameList}">
		<a href="javascript:void(0)" onclick="reList(${obj.subMenuName_index_seq})">${obj.title}</a>&nbsp;
	</c:forEach>
	<p id="reList">
	<jsp:include page="/WEB-INF/views/member/manage/reList.jsp"/>
	</p>
</body>
</html>