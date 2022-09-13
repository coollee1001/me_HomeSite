<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<div class="view">
	<div class="js_tab">
		<ul>
			<li <c:if test="${index eq 0 }">class="on"</c:if>><a href="javascript:void(0)" onclick="reList(0,1)">전체</a></li>
			<c:forEach var="obj" items="${menuNameList}">
			<li <c:if test="${index eq obj.subMenuName_index_seq }">class="on"</c:if>><a href="javascript:void(0)" onclick="reList(${obj.subMenuName_index_seq}),1">${obj.title}</a></li>
			</c:forEach>
		</ul>
	</div>
	<table class="table">
	<colgroup>
		<col style="width:100px;">
		<col style="width:200px;">
		<col style="width:auto;">
	</colgroup>
	<c:choose>
		<c:when test="${empty menuList}">
			<label>
				작성된 글이 없습니다
			</label>
		</c:when>
		<c:otherwise>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">분류</th>
					<th scope="col">제목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var='obj' items="${menuList}" varStatus="status">
					<tr>
					<td>${page.pageContentcnt - ((page.currentPage-1) * 5) - status.index}</td>
					<td>
						<c:forEach items="${menuNameList}" var="name">
							<c:if test="${name.subMenuName_index_seq eq obj.subMenuName_index_seq}">${name.title}</c:if>
						</c:forEach>
					</td>
					<c:choose>
						<c:when test="${obj.del_sts eq 'Y'}">
							<td class="align_left"><span style="color:red">[삭제]</span>&nbsp;<a href='${root}member/manage/modify?modifyidx=${obj.subMenuList_index_seq}&page=${page.currentPage}&index=${index}'>${obj.title}</a></td>
						</c:when>
						<c:otherwise>
							<td class="align_left"><a href='${root}member/manage/modify?modifyidx=${obj.subMenuList_index_seq}&page=${page.currentPage}&index=${index}'>${obj.title}</a></td>
						</c:otherwise>
					</c:choose>
					</tr>
				</c:forEach>
			</tbody>
		</c:otherwise>
	</c:choose>
	</table>
	<div class="page">
			<c:choose>
				<c:when test="${page.prevPage <= 0 }">
				</c:when>
				<c:otherwise>
					<a href="javascript:void(0)" onclick="reList(${index}, ${page.prevPage})" class="page_left" title="이전 5페이지 이동"></a>
				</c:otherwise>
			</c:choose>
			<c:forEach var='idx' begin="${page.min }" end='${page.max }'>
				<c:choose>
					<c:when test="${idx == page.currentPage }">
						<a href="javascript:void(0)" onclick="reList(${index}, ${idx})" class="on">${idx }</a>
					</c:when>
					<c:otherwise>
						<a href="javascript:void(0)" onclick="reList(${index}, ${idx})">${idx }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:choose>
				<c:when test="${page.max >= page.pageCnt }">
				</c:when>
				<c:otherwise>
					<a href="javascript:void(0)" onclick="reList(${index}, ${page.nextPage})" class="page_right" title="다음 5페이지 이동"></a>
				</c:otherwise>
			</c:choose>
	</div>
</div>