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
			<span>COMPANY</span> <strong>비전</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/company/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="1-2">
				<div class="layout">
					<div class="head">
						<strong><span>VISION</span></strong>
						<p>
							<span>“글로벌 리더, 앞서가는 미래”</span>
						</p>
					</div>
					<div class="midd">
						<strong>VALUES</strong>
						<ul>
							<li>
								<div>
									<div>
										<strong>고객 만족</strong>
										<p>고객 만족을 최우선으로 생각하겠습니다.</p>
									</div>
								</div>
								<ul>
									<li>
										<span>
											<strong>신뢰</strong>
											<span>소통과 존중을 통한 </span><span>고객과의 신뢰관계 형성</span>
										</span>
									</li>
									<li>
										<span>
											<strong>신속한 대응</strong>
											<p><span>고객의 요구에 신속하고 </span><span>정확하게 대응</span></p>
										</span>
									</li>
								</ul>
							</li>
							<li>
								<div>
									<div>
										<strong>발전 지향</strong>
										<p><span>끊임없는 발전을 </span><span>지향하겠습니다.</span></p>
									</div>
								</div>
								<ul>
									<li>
										<span>
											<strong>기술력</strong>
											<p><span>지속적인 연구개발로 </span><span>IT 기술력 향상</span></p>
										</span>
									</li>
									<li>
										<span>
											<strong>품질</strong>
											<p><span>최고의 기술력으로 </span><span>최고의 품질 제공</span></p>
										</span>
									</li>
								</ul>
							</li>
							<li>
								<div>
									<div>
										<strong>핵심 역량</strong>
										<p>메이아이만의 핵심 역량을 보유하겠습니다.</p>
									</div>
								</div>
								<ul>
									<li>
										<span>
											<strong>전문성</strong>
											<p><span>연구개발에 특화된 </span><span>전문성 보유</span></p>
										</span>
									</li>
									<li>
										<span>
											<strong>핵심 인재</strong>
											<p><span>기술 발전을 위한 </span><span>핵심 인재 보유</span></p>
										</span>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>