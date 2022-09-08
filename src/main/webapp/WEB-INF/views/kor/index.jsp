<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}/"/>
<!DOCTYPE html>
<html>
<head>
	<script src="/resources/js/import.js?MAIN=Y&CONTEXT_PATH=/resources"></script>
</head>
<body id="main">
	<div id="page-1">
	    <div id="mainTypo"></div>
	    <div id="mainMovie">
	        <video src="/resources/media/sample2.mp4" autoplay loop playsinline muted></video>
	    </div>
	
	    <div class="quick">
	        <ul>
	            <li class="btn-map"><a href="${root }kor/company/way"><span></span></a></li>
	            <li class="btn-sangjang"><a href="${root }kor/company/awards"><span></span></a></li>
	        </ul>
	    </div>
	
	    <div class="scroll"><span>SCROLL</span></div>
	</div>
	<div id="page-2" data-box="dark">
	    <div class="layout">
	        <div id="mainTypo2"></div>
	        <div class="list">
	            <ul>
	                <li>
	                    <div>
	                        <strong>홈페이지 구축<span>Homepage</span></strong>
	                        <p>차별화된 IT기술력으로 고객의 니즈를 반영한 홈페이지 구축 서비스</p>
	                    </div>
	                </li>
	                <li>
	                    <div>
	                        <strong>업무시스템 구축<span>System Integration</span></strong>
	                        <p>최신 IT기술을 활용하여 최적화된 맞춤형 시스템 통합 서비스</p>
	                    </div>
	                </li>
	                <li>
	                    <div>
	                        <strong>시스템 운영 및 유지관리<span>System Management</span></strong>
	                        <p>시스템 운영 시 발생하는 문제 해결을 위해 운영에 필요한 지원</p>
	                    </div>
	                </li>
	                <li>
	                    <div>
	                        <strong>빅데이터 시각화<span>Big Data Visualization</span></strong>
	                        <p>빅데이터를 수집 및 가공하여 데이터 시각화 플랫폼</p>
	                    </div>
	                </li>
	                <li>
	                    <div>
	                        <strong>메타버스<span>Metaverse</span></strong>
	                        <p>언택트 기반의 3D 가상공간을 이용한 비대면 상호작용 플랫폼</p>
	                    </div>
	                </li>
	                <li>
	                    <div>
	                        <strong>안전관리시스템<span>Safety Management System</span></strong>
	                        <p>신속한 상태변화 감지와 관리 운영을 위한 신뢰성 있는 안전관리 플랫폼</p>
	                    </div>
	                </li>
	            </ul>
	        </div>
	    </div>
	</div>
</body>
</html>