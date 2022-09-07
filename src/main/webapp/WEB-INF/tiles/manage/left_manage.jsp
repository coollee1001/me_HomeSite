<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<h1 id="logo"><a href="${root}home"><img src="<c:url value="/resources/images/mec/layout/logo.png"/>" alt="logo"></a></h1>

<div class="js_menu">
	<ul class="code_00/>">
		<li>
			<a href="${root}member/manage/menuList">소분류 리스트</a>
		</li>
	</ul>
</div>