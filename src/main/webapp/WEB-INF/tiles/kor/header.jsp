<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<html>
<head>
	<title>mayeye</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
	function reList(subMenuName_index_seq, page){
		$.ajax({
			url : "${root}kor/submenuList",
			type : 'post',
			data : {
				index : subMenuName_index_seq,
				page : page
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

