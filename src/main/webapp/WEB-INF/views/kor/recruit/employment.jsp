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
			<span>RECRUIT</span> <strong>채용안내</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/recruit/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="4-2">
				<div class="layout">
					<div class="top-box">
						<div class="in">
							<strong>채용안내</strong>
							<p>함께 일하는 구성원의 행복한 미래와 가치 있는 성장을 생각합니다.</p>
						</div>
					</div>

					<table>
						<caption>채용안내 : 직무, 자격요건, 담당업무, 우대사항을 확인 하실 수 있습니다.</caption>
						<thead>
							<tr>
								<th scope="col">직무</th>
								<th scope="col">자격요건</th>
								<th scope="col">담당업무</th>
								<th scope="col">우대사항</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">사업관리 및 기획</th>
								<td><strong class="mobile-title">자격요건</strong>
									<ul data-list="1">
										<li>경력 및 신입</li>
									</ul></td>
								<td><strong class="mobile-title">담당업무</strong>
									<ul data-list="1">
										<li>사업 기획, 제안서 작성</li>
										<li>사업관리, 서비스 기획</li>
									</ul></td>
								<td><strong class="mobile-title">우대사항</strong>
									<ul data-list="1">
										<li>유사학과 전공자</li>
										<li>운전가능자</li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row">디자이너</th>
								<td><strong class="mobile-title">자격요건</strong>
									<ul data-list="1">
										<li>경력 및 신입</li>
									</ul></td>
								<td><strong class="mobile-title">담당업무</strong>
									<ul data-list="1">
										<li>웹디자인</li>
										<li>UI/UX 디자인</li>
									</ul></td>
								<td><strong class="mobile-title">우대사항</strong>
									<ul data-list="1">
										<li>유사학과 전공자</li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row">퍼블리셔</th>
								<td><strong class="mobile-title">자격요건</strong>
									<ul data-list="1">
										<li>경력 및 신입</li>
									</ul></td>
								<td><strong class="mobile-title">담당업무</strong>
									<ul data-list="1">
										<li>퍼블리싱</li>
										<li>JavaScript</li>
									</ul></td>
								<td><strong class="mobile-title">우대사항</strong>
									<ul data-list="1">
										<li>유사학과 전공자</li>
									</ul></td>
							</tr>
							<tr>
								<th scope="row">웹 프로그래머</th>
								<td><strong class="mobile-title">자격요건</strong>
									<ul data-list="1">
										<li>경력 및 신입</li>
										<li>JAVA 및 SPRING 개발환경에 대한 경험을 갖고 있는 개발자</li>
										<li>SQL, HTML에 대한 이해도를 갖고 있는 개발자</li>
									</ul></td>
								<td><strong class="mobile-title">담당업무</strong>
									<ul data-list="1">
										<li>JAVA, SPRING 기반의 웹 프로그래밍 개발</li>
										<li>시스템 프로그램 유지보수</li>
										<li>JAVA 기반 설계 및 개발</li>
									</ul></td>
								<td><strong class="mobile-title">우대사항</strong>
									<ul data-list="1">
										<li>유사학과 전공자</li>
										<li>관련 자격증 보유자</li>
									</ul></td>
							</tr>
						</tbody>
					</table>

					<h4>채용절차</h4>
					<div class="list-1">
						<ul>
							<li><strong><span><em>01</em><span>지원서
											접수</span></span></strong></li>
							<li><strong><span><em>02</em><span>지원서
											검토</span></span></strong></li>
							<li><strong><span><em>03</em><span>기술
											면접</span></span></strong></li>
							<li><strong><span><em>04</em><span>최종합격</span></span></strong></li>
						</ul>
					</div>

					<h4>기타사항</h4>
					<ul data-list="1">
						<li>입사지원 서류에 허위사실이 발견될 경우, 채용 확정 이후라도 채용이 취소될 수 있습니다.</li>
						<li>채용과 관련된 궁금하신 사항은 <span data-point="1">메이아이
								채용담당자(042-862-0159)에게 전화 부탁드립니다.</span></li>
					</ul>

					<div class="btn-group">
						<a href="#"><span>입사 지원 바로가기</span></a>
					</div>
				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>