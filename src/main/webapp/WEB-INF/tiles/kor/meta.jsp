<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=1400,maximum-scale=2.0,user-scalable=yes" />
<%--<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no, target-densitydpi=device-dpi">--%>
<meta name="format-detection" content="telephone=no,email=no,address=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>mayeye</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function reList(subMenuName_index_seq, page){
		$.ajax({
			url : "${root}kor/submenuList",
			type : 'post',
			data : {
				index : subMenuName_index_seq,
				page : page
			},
			success:function(data){
				$("#reList").html(data);
			}, error : function(data){
				console.log("오류");
			}
		});
	}
</script>