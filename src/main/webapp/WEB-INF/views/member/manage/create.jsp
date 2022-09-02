<%@page import="com.mayeye.module.sub.SubMenuNameVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 추가</title>
</head>
<body>
	<form:form action="${root}member/manage/create_pro" method="post" modelAttribute="insertSubMenuVO" enctype="multipart/form-data">
		<form:label path="subMenuName">분류</form:label>
		<form:select path="subMenuName_index_seq" multiple="disable">
		<form:options items="${modifySubMenuVO.subMenuName}" itemLabel="title" itemValue="subMenuName_index_seq"/>
		</form:select>
		<form:label path="title">표시 제목</form:label>
		<form:input path="title"/>
		<form:errors path="title" style="color:red"/>
		<form:label path="link">링크</form:label>
		<form:input path="link"/>
		<form:errors path="link" style="color:red"/>
		<form:label path="tempFile">표시 이미지</form:label>
		<input type="file" name="tempFile" id="tempFile" required accept="image/*"/>
		<form:errors path="tempFile" style="color:red"/>
		<form:button>등록</form:button>
	</form:form>
</body>
</html>