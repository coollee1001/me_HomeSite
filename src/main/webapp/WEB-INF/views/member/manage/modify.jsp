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
	<form:form action="${root}member/manage/modify_pro" method="post" modelAttribute="modifySubMenuVO" enctype="multipart/form-data">
		<form:label path="subMenuName">분류</form:label>
		<input type="hidden" id="modifyidx" name="modifyidx" value="${modifySubMenuVO.subMenuList_index_seq}">
		<form:hidden path="listOrder"/>
		<form:hidden path="file_seq"/>
		<form:hidden path="file_seq"/>
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
		<img src="${root}resources/upload/${modifySubMenuVO.filevo.fileUUID}" alt="${modifySubMenuVO.title}"/>
		<input type="file" name="tempFile" id="tempFile"/>
		<form:errors path="tempFile" style="color:red"/>
		<form:button>수정</form:button>
		<c:if test="${modifySubMenuVO.del_sts eq 'N'}">
			<button type="button" onclick="location.href='${root}member/manage/delete?deleteidx=${modifySubMenuVO.subMenuList_index_seq}'">삭제</button>
		</c:if>
		<c:if test="${modifySubMenuVO.del_sts eq 'Y'}">
			<button type="button" onclick="location.href='${root}member/manage/recover?recoveridx=${modifySubMenuVO.subMenuList_index_seq}'">복구</button>
			<button type="button" onclick="location.href='${root}member/manage/deleteCompl?deleteidx=${modifySubMenuVO.subMenuList_index_seq}'">완전 삭제</button>
		</c:if>
		
		<input type="button" onclick="location.href='${root}member/manage/menuList'" value="취소">
	</form:form>
</body>
</html>