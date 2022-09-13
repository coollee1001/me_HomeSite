<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv='X-UA-Compatible' content='IE=Edge' />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=2.0,user-scalable=yes, target-densitydpi=device-dpi">
    <meta name="format-detection" content="telephone=no,email=no,address=no" />
    <title>ERROR</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mec/core.css"/>" media="all" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/mec/skin.css"/>" media="all" />
</head>
<body class="cms">
<div id="system_error">
    <img src="<c:url value="/resources/images/core/sorry.png"/>" alt="ERROR 404" />
    <p class="mt_10 mb_25">
        <c:choose>
            <c:when test="${message ne null }"><c:out value="${message }"/></c:when>
            <c:otherwise>
                이용에 불편을 드려 죄송합니다. 요청하신 페이지를 찾을 수 없습니다.<br />
                현재 서비스되는 페이지인지 다시 한번 확인해 주시기 바랍니다.
            </c:otherwise>
        </c:choose>
    </p>
    <a href="#" class="btn ty_3" onclick="history.back(-2);">이전 페이지로 이동</a>
</div>
</body>
</html>