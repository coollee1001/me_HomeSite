<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<tiles:insertAttribute name="meta"/>
<body>
<div id="skip">
        <a href="#menu-btn">메뉴열기 바로가기</a>
        <a href="#content">본문 바로가기</a>
</div>
<div id="wrap">
	<tiles:insertAttribute name="header"/>
    <div id="container">
		<tiles:insertAttribute name="body"/>
    </div>
    <tiles:insertAttribute name="footer"/>
</div>
</body>
</html>