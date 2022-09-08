<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<div class="tab">
	<ul>
		<li><a href="${root}kor/solution/intro">
			<c:choose>
				<c:when test="${tab eq 'intro'}">
					<strong>mec·cms</strong>
				</c:when>
				<c:otherwise>
					<span>mec·cms</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/solution/viewer">
			<c:choose>
				<c:when test="${tab eq 'viewer'}">
					<strong>mec·viewer</strong>
				</c:when>
				<c:otherwise>
					<span>mec·viewer</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/solution/archives">
			<c:choose>
				<c:when test="${tab eq 'archives'}">
					<strong>mec·archives</strong>
				</c:when>
				<c:otherwise>
					<span>mec·archives</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/solution/search">
			<c:choose>
				<c:when test="${tab eq 'search'}">
					<strong>mec·search</strong>
				</c:when>
				<c:otherwise>
					<span>mec·search</span>
				</c:otherwise>
			</c:choose>
		</a></li>
	</ul>
</div>