<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<body>
	<div class='wrap'>
		<tiles:insertAttribute name="header"/>
		<div class='content'>
			<tiles:insertAttribute name="left"/>
			<div class='page_content'>
				<tiles:insertAttribute name="body"/>
			</div>
		</div>
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>
