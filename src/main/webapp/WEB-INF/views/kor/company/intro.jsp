<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
	<script src="/resources/js/import.js?CONTEXT_PATH=/resources"></script>
</head>
<body id="sub">
	<div class="layout">
		<h2>
			<span>COMPANY</span> <strong>회사소개</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/company/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="1-1">
				<div class="head">
					<div class="layout">
						<div class="t">
							<em>Who are we?</em> <strong> <span>MAYEYE</span><span>는
									고객과 함께! 고객을 위해!</span> <span>최고의 가치를 실현합니다.</span>
							</strong>
							<p>
								메이아이는 23년간의 IT 서비스 구현 경험을 가지고 고객에게 최적의 서비스를 제공해드립니다.<br /> 고객
								중심의 가치실현을 위해 열정적으로 사업을 수행하는 최고의 비즈니스 파트너로서 메이아이는 IT 시장을 선도하는
								글로벌 기업으로 나아가기 위한 발전을 멈추지 않겠습니다.
							</p>
						</div>
					</div>
				</div>
				<div class="midd">
					<div class="layout">
						<strong>연혁</strong>
						<div>
							<div data-js="history"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>