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
	<h3>소분류 리스트</h3>
	<div class="inner">
		<div class="controls">
			<input type="submit" class="btn bor ty_2" value="수정" form="modifyform"/>
			<c:if test="${modifySubMenuVO.del_sts eq 'N'}">
				<button type="button" class="btn bor ty_3" onclick="location.href='${root}member/manage/delete?deleteidx=${modifySubMenuVO.subMenuList_index_seq}'">삭제</button>
			</c:if>
			<c:if test="${modifySubMenuVO.del_sts eq 'Y'}">
				<button type="button" class="btn bor ty_2" onclick="location.href='${root}member/manage/recover?recoveridx=${modifySubMenuVO.subMenuList_index_seq}'">복구</button>
				<button type="button" class="btn bor ty_3" onclick="location.href='${root}member/manage/deleteCompl?deleteidx=${modifySubMenuVO.subMenuList_index_seq}'">완전 삭제</button>
			</c:if>
			<input type="button" class="btn bor ty_4" onclick="location.href='${root}member/manage/menuList'" value="취소">
		</div>
		<div class="view">
			<form:form action="${root}member/manage/modify_pro" method="post" modelAttribute="modifySubMenuVO" enctype="multipart/form-data" id="modifyform">
			<form:hidden path="subMenuList_index_seq"/>
			<form:hidden path="file_seq"/>
			<div class="align_right mb_05"><span class="red">*</span> 는 필수값입니다.</div>
			<table class="table ty2">
				<colgroup>
					<col style="width:180px;">
					<col style="width:auto;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" colspan="2">게시판 정보</th>
					</tr>
					<tr>
						<th scope="row">게시판 분류 <span class="red">*</span></th>
						<td>
							<form:select path="subMenuName_index_seq" multiple="disable">
								<form:options items="${modifySubMenuVO.subMenuName}" itemLabel="title" itemValue="subMenuName_index_seq"/>
							</form:select>
							<span class="icon_board_notice" title="게시판 레이아웃 미리보기">아이콘</span>
						</td>
					</tr>
					<tr>
						<th scope="row">제목 <span class="red">*</span></th>
						<td>
							<form:input path="title" required="required"/>
							<form:errors path="title" style="color:red"/>
						</td>
					</tr>
					<tr>
						<th scope="row">링크 <span class="red">*</span></th>
						<td>
							<form:input path="link" required="required"/>
							<form:errors path="link" style="color:red"/>
						</td>
					</tr>
					<tr>
						<th scope="row">수정할 이미지 <span class="red">*</span></th>
						<td>
							<input type="file" name="tempFile" id="tempFile" accept="image/*"/>
							<form:errors path="tempFile" style="color:red"/>
						</td>
					</tr>
					<tr>
						<th scope="row">현재 이미지</th>
						<td>
							<img src="${root}resources/upload/${modifySubMenuVO.filevo.fileUUID}" alt="${modifySubMenuVO.title}"/>
						</td>
					</tr>
				</tbody>
			</table>
			</form:form>
		</div>
	</div>
		
</body>
</html>