<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<html>
<head>
	<title>mayeye</title>
	<link rel="stylesheet" href="${root}resources/css/common.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	function reList(subMenuName_index_seq){
		$.ajax({
			url : "${root}member/manage/menuList",
			type : 'post',
			data : {
				index : subMenuName_index_seq
			},
			success:function(data){
				$("#reList").html(data);
			}, error : function(data){
				console.log("오류");
			}
		});
	}
	</script>
</head>
<div class="Header">
로그인 아이디 : ${loginSession.member_id}<br/>
로그인 유저 : ${loginSession.member_name}<br/>
<a href="${root}member/logout">로그아웃</a>
<c:if test="${loginSession.member_code eq '0'}"><a href="${root}member/modify">정보수정</a></c:if>
<c:if test="${loginSession.member_code eq '0'}"><a href="${root}member/manage">관리자</a></c:if>
</div>
