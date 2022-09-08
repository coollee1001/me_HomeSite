<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<div class="tab">
	<ul>
		<li><a href="${root}kor/business/intro">
			<c:choose>
				<c:when test="${tab eq 'intro'}">
					<strong>사업분야</strong>
				</c:when>
				<c:otherwise>
					<span>사업분야</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/business/performance">
			<c:choose>
				<c:when test="${tab eq 'performance'}">
					<strong>주요사업실적</strong>
				</c:when>
				<c:otherwise>
					<span>주요사업실적</span>
				</c:otherwise>
			</c:choose>
		</a></li>
	</ul>
</div>