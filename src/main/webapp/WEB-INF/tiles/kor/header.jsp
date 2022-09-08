<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}/"/>

<div id="header">
	<h1><a href="${root}"><span>MAYEYE</span></a></h1>
	<div id="gnb">
   		<div class="midd">
        	<ul>
            	<li><a href="${root}kor/company"><span>COMPANY</span></a>
                <ul>
                    <li><a href="${root}kor/company"><span>회사소개</span></a></li>
                    <li><a href="${root}kor/company/vision"><span>비전</span></a></li>
                    <li><a href="${root}kor/company/awards"><span>수상 및 인증</span></a></li>
                    <li><a href="${root}kor/company/customer"><span>주요 고객사</span></a></li>
                    <li><a href="${root}kor/company/way"><span>오시는 길</span></a></li>
                </ul>
            </li>
            <li><a href="${root}kor/business"><span>BUSINESS</span></a>
                <ul>
                    <li><a href="${root}kor/business"><span>사업분야</span></a></li>
                    <li><a href="${root}kor/business/performance"><span>주요사업실적</span></a></li>
                </ul>
            </li>
            <li><a href="${root}kor/solution"><span>SOLUTION</span></a>
                <ul>
                    <li><a href="${root}kor/solution"><span>mec·cms</span></a></li>
                    <li><a href="${root}kor/solution/viewer"><span>mec·viewer</span></a></li>
                    <li><a href="${root}kor/solution/archives"><span>mec·archives</span></a></li>
                    <li><a href="${root}kor/solution/search"><span>mec·search</span></a></li>
                </ul>
            </li>
            <li><a href="${root}kor/recruit"><span>RECRUIT</span></a>
                <ul>
                    <li><a href="${root}kor/recruit"><span>인재상</span></a></li>
                    <li><a href="${root}kor/recruit/employment"><span>채용안내</span></a></li>
                </ul>
            </li>
        	</ul>
   		</div>
   		<div class="foot">
       		<ul>
	            <li class="icon-1"><span>042-862-0159</span></li>
	            <li class="icon-2"><span>대전광역시 유성구 반석동로 40번길 12</span></li>
       		</ul>
   		</div>
	</div>
	<a href="#" id="menu-btn"><span>메뉴열기</span></a>
</div>

        
