<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
<c:if test="${not empty message}">alert('<c:out value="${message}"/>');</c:if>
</script>
<script type="text/javascript">
	function reList(subMenuName_index_seq, page){
		$.ajax({
			url : "${root}member/manage/menuList",
			type : 'post',
			data : {
				index : subMenuName_index_seq,
				page : page
			},
			success:function(data){
				$("#reList").html(data);
			}, error : function(data){
				console.log("오류");
			}
		});
	}
</script>
<div id="path">
	<div id="global">
		<ul>
			<li><strong>
				${loginSession.member_id}
			</strong></li>
			<li><a href="<c:url value="${root}member/modify"/>">[비밀번호 변경]</a></li>
			<li class="last"><a href="<c:url value="${root}member/logout"/>"><img src="<c:url value="/resources/images/mec/layout/btn_logout.png"/>" alt="로그아웃"></a></li>
		</ul>
	</div>
</div>

