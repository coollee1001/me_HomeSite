<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<tiles:insertAttribute name="meta"/>
<body>
<div id="wrap">
    <div id="container">
        <div id="content">
            <tiles:insertAttribute name="header"/>
            <div id="txt">
                <tiles:insertAttribute name="body"/>
            </div>
        </div>
    </div>
    <tiles:insertAttribute name="footer"/>
</div>
</body>
</html>