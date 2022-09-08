<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}/" />
<!DOCTYPE html>
<html>
<head>
<script src="/resources/js/import.js?CONTEXT_PATH=/resources"></script>
</head>
<body id="sub">
	<div class="layout">
		<h2>
			<span>RECRUIT</span> <strong>인재상</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/recruit/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="4-1">
				<div class="layout">
					<ul>
						<li><strong><span><em>M</em><span>oral</span></span></strong>
							<div>다양한 변화를 수용하면서 항상 바른 길은 지향하는 도덕적 인재</div></li>
						<li><strong><span><em>A</em><span>ctive</span></span></strong>
							<div>현실에 안주하지 않고 적극적이고 도전 정신을 가진 인재</div></li>
						<li><strong><span><em>Y</em><span>outh</span></span></strong>
							<div>젊은 에너지와 패기를 가진 인재</div></li>
						<li><strong><span><em>E</em><span>xpert</span></span></strong>
							<div>자신의 전문성을 키워가는 인재</div></li>
						<li><strong><span><em>Y</em><span>ours</span></span></strong>
							<div>남들과는 다른 자신만의 강점과 특색을 가진 인재</div></li>
						<li><strong><span><em>E</em><span>xperience</span></span></strong>
							<div>다양한 경험을 가진 인재</div></li>
					</ul>
				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>