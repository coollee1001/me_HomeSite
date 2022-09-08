<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<div class="tab">
	<ul>
		<li><a href="${root}kor/company/intro">
			<c:choose>
				<c:when test="${tab eq 'intro'}">
					<strong>회사소개</strong>
				</c:when>
				<c:otherwise>
					<span>회사소개</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/company/vision">
			<c:choose>
				<c:when test="${tab eq 'vision'}">
					<strong>비전</strong>
				</c:when>
				<c:otherwise>
					<span>비전</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/company/awards">
			<c:choose>
				<c:when test="${tab eq 'awards'}">
					<strong>수상 및 인증</strong>
				</c:when>
				<c:otherwise>
					<span>수상 및 인증</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/company/customer">
			<c:choose>
				<c:when test="${tab eq 'customer'}">
					<strong>주요 고객사</strong>
				</c:when>
				<c:otherwise>
					<span>주요 고객사</span>
				</c:otherwise>
			</c:choose>
		</a></li>
		<li><a href="${root}kor/company/way">
			<c:choose>
				<c:when test="${tab eq 'way'}">
					<strong>오시는 길</strong>
				</c:when>
				<c:otherwise>
					<span>오시는 길</span>
				</c:otherwise>
			</c:choose>
		</a></li>
	</ul>
</div>