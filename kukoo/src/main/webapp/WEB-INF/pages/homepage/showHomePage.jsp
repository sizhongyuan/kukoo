<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=basePath %>css/homepage/homePage.css"/>

<html>
<script type="text/javascript">
	$("document").ready(function() {
		/* 判断session用户是否登录 start*/
		if("${userId}" !== ""){
			$('#userCenter',parent.document).parent().removeClass("hidden");
			$("#signUp",parent.document).parent().addClass("hidden");
			$("#signIn",parent.document).parent().addClass("hidden");
		}
		/* 判断session用户是否登录 end*/
	});
</script>
<div>
	<div class="background">
		<%-- <img class="first-slide" src="<%=basePath %>img/homepage/homePage.jpeg" width="1344" height="613"> --%>
		<img src="<%=basePath %>img/homepage/homePage.jpeg" width="100%" height="100%">
	</div>
	<div class="row">
		<div class="input-size">
			<input type="text" class="form-control" style="border-radius:4px 0px 0px 4px;" id="inputPassword2" placeholder="想移民的国家"/>
		</div>
		<div class="input-size input-bottom">
			<input type="text" class="form-control" style="border-radius:0px;" id="inputPassword2" placeholder="感兴趣的项目"/>
		</div>
		<div class="input-size input-bottom">
			<input type="text" class="form-control" style="border-radius:0px;" id="inputPassword2" placeholder="其他"/>
		</div>
		<div class="button-size input-bottom">
			<img class="search-icon" src="<%=basePath %>img/homepage/search.png">
			<input type="button" class="form-control botton-item" id="inputPassword2" value="搜索">
		</div>
	</div>
</div>
v<br/>
	v<br/>
	vv<br/>
	v<br/>
	v<br/>
	v<br/>
	v
</html>