<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<div class="tab">
	<ul>
		<li><a href="${root}kor/recruit/intro">
			<c:choose>
				<c:when test="${tab eq 'intro'}">
					<strong>인재상</strong>
				</c:when>
				<c:otherwise>
					<span>인재상</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/recruit/employment">
			<c:choose>
				<c:when test="${tab eq 'employment'}">
					<strong>채용안내</strong>
				</c:when>
				<c:otherwise>
					<span>채용안내</span>
				</c:otherwise>
			</c:choose>
		</a></li>
	</ul>
</div>