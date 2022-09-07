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
	<h3>계정 비밀번호 관리</h3>
	<div class="inner">
		<div class="controls">
			<input type="submit" class="btn ty_2" value="수정" form="modifyform"/>
		</div>
		<div class="view">
			<form:form action="${root}member/modify_pro" modelAttribute="modifyVO" method="post" id="modifyform">
				<form:hidden path="member_id"/>
				<table class="table ty2">
	                <caption>관리자 계정</caption>
	                <colgroup>
	                    <col style="width:180px;">
	                    <col style="width:auto;">
	                </colgroup>
	                <tbody>
		                <tr>
		                    <th scope="row">현재 비밀번호 <span class="red">*</span></th>
		                    <td>
		                       <input type="password" value="" id="member_pw" name="member_pw"/>
		                       <form:errors path="member_pw" style="color:red"/>
		                    </td>
		                </tr>
		                <tr>
		                    <th scope="row">변경 비밀번호 <span class="red">*</span></th>
		                    <td>
		                       <input type="password" value="" id="member_repw" name="member_repw"/>
		                       <form:errors path="member_repw" style="color:red"/>
		                    </td>
		                </tr>
		                <tr>
		                    <th scope="row">변경 비밀번호 확인 <span class="red">*</span></th>
		                    <td>
		                       <input type="password" value="" id="member_repw2" name="member_repw2"/>
		                       <form:errors path="member_repw2" style="color:red"/>
		                    </td>
		                </tr>
	                </tbody>
				</table>
			</form:form>
		</div>
	</div>
</body>
</html>