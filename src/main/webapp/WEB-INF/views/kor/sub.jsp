<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<body id="sub">
	<div class="layout">
	    <h2>
	        <span>COMPANY</span>
	        <strong>회사소개</strong>
	    </h2>
	    <div class="tab">
	        <ul>
	            <li><a href="#"><strong>회사소개</strong></a></li>
	            <li><a href="#"><span>비전</span></a></li>
	            <li><a href="#"><span>수상 및 인증</span></a></li>
	            <li><a href="#"><span>주요 고객사</span></a></li>
	            <li><a href="#"><span>오시는 길</span></a></li>
	        </ul>
	    </div>
	</div>
	<div id="content">
	    <div id="txt">
	        <!-- content:s -->
	        <div class="layout" style="height:1800px">
	            Content 1440px
	        </div>
	        <!-- content:e -->
	    </div>
	</div>
</body>
</html>