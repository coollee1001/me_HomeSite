<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<table>
<c:choose>
	<c:when test="${empty menuList}">
		<label>
			작성된 글이 없습니다
		</label>
	</c:when>
	<c:otherwise>
		<thead>
			<tr >
				<th>번호</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var='obj' items="${menuList}" varStatus="status">
				<tr>
				<c:choose>
					<c:when test="${obj.del_sts eq 'Y'}">
						<td>${status.count}</td>
						<td><span style="color:red">[삭제]</span>&nbsp;<a href='${root}member/manage/modify?modifyidx=${obj.subMenuList_index_seq}'>${obj.title}</a></td>
					</c:when>
					<c:otherwise>
						<td>${status.count}</td>
						<td><a href='${root}member/manage/modify?modifyidx=${obj.subMenuList_index_seq}'>${obj.title}</a></td>
					</c:otherwise>
				</c:choose>
				</tr>
			</c:forEach>
		</tbody>
	</c:otherwise>
</c:choose>
</table>
<a href="${root}member/manage/create">작성하기</a>	