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
		<ul style="list-style-type:none;">
		<c:forEach var='obj' items="${menuList}" varStatus="status">
			<c:choose>
				<c:when test="${status.count % 3 eq 0}">
					</ul>
					<ul style="list-style-type:none;">
						<li>
							<a href="${obj.link }" target="_blank">
							<img src="${root}resources/upload/${obj.filevo.fileUUID}" alt="${obj.title}" height="100px" width="200px"/><br/>
							</a>
							<label>
								${obj.title}
							</label>
						</li>
				</c:when>
				<c:otherwise>
					<li style="float:left">
						<a href="${obj.link }" target="_blank">
						<img src="${root}resources/upload/${obj.filevo.fileUUID}" alt="${obj.title}" height="100px" width="200px"/><br/>
						</a>
						<label>
							${obj.title}
						</label>
					</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		</ul>
	</c:otherwise>
</c:choose>
</table>