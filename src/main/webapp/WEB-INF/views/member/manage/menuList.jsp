<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
<c:choose>
	<c:when test="${page.getClass().simpleName == 'SubMenuPageVO'}">
		<script type="text/javascript">
			window.onload=function(){
				reList(${index}, ${page.currentPage});
			}
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			window.onload=function(){
				reList(${index}, ${page});
			}
		</script>
	</c:otherwise>
</c:choose>

</head>
<body>
	<h3>소분류 리스트</h3>
	<div class="inner">
		<div class="controls">
			<a href="${root}member/manage/create" class="btn ty_2">등록</a>
		</div>
		<div id="reList">
		
		</div>
	</div>
</body>
</html>