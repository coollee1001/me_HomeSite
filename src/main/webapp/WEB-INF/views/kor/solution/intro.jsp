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
			<span>SOLUTION</span> <strong>mec·cms</strong>
		</h2>
		<jsp:include page="/WEB-INF/views/kor/solution/tab.jsp"></jsp:include>
	</div>
	<div id="content">
		<div id="txt">
			<!-- content:s -->
			<div data-content="3-1">
				<div class="layout">
					<div class="border-box" data-image="1">
						<div class="alt">자체 DB 콘텐츠 → MEC CMS(권한관리, 정보관리, 형상관리, 배포관리)
							→ 콘텐츠 → 웹사이트 → 이용자</div>
					</div>
					<div class="tip-box">
						mec·cms는 안정적인 웹 사이트 운영·관리를 위한 웹 콘텐츠 통합 관리 솔루션입니다.<br /> 정부 정책에
						부합하는 전자정부표준프레임워크 기반의 GS인증 1등급 제품이며, 단일 시스템으로 다수의 웹 사이트를 체계적이고,
						효율적으로 관리할 수 있습니다.
					</div>

					<h4>주요기능</h4>
					<p>
						CMS 솔루션의 관리 환경은 웹 사이트(운영 환경)와 물리적으로 분리되어 구축되기 때문에 솔루션에 이상이 발생하여도 웹
						사이트는 정상적으로 운영 됩니다.<br /> 이를 통해 고객사에서는 웹 사이트 운영의 안정성을 보장받을 수 있습니다.
					</p>

					<div class="list-1">
						<ul>
							<li>
								<div class="in">
									<strong>직관적 구성</strong>
									<ul>
										<li>직관적이고 편리한 인터페이스</li>
										<li>드래그앤드롭 메뉴 이동 등 손쉬운 동작</li>
										<li>메뉴 잠금, 콘텐츠 예약 등 편의기능</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>개인 정보 보호</strong>
									<ul>
										<li>관리자 등급에 따른 접근 제어</li>
										<li>관리자 로그인 제한 및 이력 관리</li>
										<li>개인정보 열람기록 관리</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>통합 관리 환경</strong>
									<ul>
										<li>다수 웹 사이트 통합관리</li>
										<li>게시판 통합 관리 및 연계</li>
										<li>웹 사이트와 분리된 관리 환경</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>콘텐츠 현상관리</strong>
									<ul>
										<li>입력 콘텐츠 미리보기</li>
										<li>콘텐츠의 실시간 배포</li>
										<li>형상 관리 기능을 통한 백업</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>

					<h4>특장점</h4>
					<p>
						소스 파일에서 변경해야 하는 부담이 없고 콘텐츠와 형상관리로 운영시 정보 손일이 매우 적습니다.<br /> 사용성이
						우수하여 처음 사용하는 운영자도 신속하게 콘텐츠를 배포할 수 있으며, 콘텐츠 형상관리를 통한 안정적인 운영 뿐만 아니라
						공공표준 준수, 파일 암호화, 개인정보 보호 기능, 웹 접근성 및 반응형 코딩 지원 등 정부 정책에 부합하는 공공사업
						최적화 솔루션입니다.
					</p>

					<div class="list-3">
						<ul>
							<li><strong><span><em>Usability</em><span>사용성
											우수</span></span></strong>
								<div>개발자 도움 없이 신속하게 콘텐츠를 운용할 수 있습니다.</div></li>
							<li><strong><span><em>Quality</em><span>품질력
											보장</span></span></strong>
								<div>안정적인 운영과 콘텐츠 형상관리를 보장하는 제품입니다.</div></li>
							<li><strong><span><em>Compatibility</em><span>호환성
											준수</span></span></strong>
								<div>공공 표준 개발프레임워크를 사용하고 있습니다.</div></li>
							<li><strong><span><em>Security</em><span>보안성
											강화</span></span></strong>
								<div>모든 파일 암호화와 개인정보 보호 기능을 제공합니다.</div></li>
							<li><strong><span><em>Web standard</em><span>웹표준
											대응</span></span></strong>
								<div>웹 접근성 및 반응형 코딩이 가능하도록 지원합니다.</div></li>
						</ul>
					</div>

					<h4>도입효과</h4>
					<div class="list-2">
						<ul>
							<li>
								<div class="in">
									<strong>프로젝트 일정 최소화</strong>
									<p>다양한 고객의 의견과 운영 경험을 바탕으로 기능을 표준화하여 안정된 웹 사이트 운영관리에 최적화 되어
										있으므로 웹 사이트 구축 시 일정을 촤소화 할 수 있습니다.</p>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>관리시간 및 비용 절감</strong>
									<p>내부시스템과 유기적으로 연동이 가능하고, 사용이 쉬워 전문지식이 없어도 다수의 웹 사이트를 통합
										관리할 수 있으며, 관리시간과 비용 절감에 효과가 있습니다.</p>
								</div>
							</li>
							<li>
								<div class="in">
									<strong>개인정보보호정책에 부응</strong>
									<p>개인정보 관리자 관리, 접근 권한 및 로그인 이력관리, 개인정보 접속기록 등의 정보보호 기능을 통해
										개인정보 보관 시 개인정보보호 정책에 부응할 수 있습니다.</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- content:e -->
		</div>
	</div>
</body>
</html>