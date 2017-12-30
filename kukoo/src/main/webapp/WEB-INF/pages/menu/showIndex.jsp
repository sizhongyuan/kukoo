<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
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
<div class="jumbotron masthead">
	<div class="container">
		<h1>布谷移民</h1>
		<h2>您的专业移民顾问</h2>
		<p class="masthead-button-links">
			<a class="btn btn-lg btn-primary btn-shadow"
				href="https://v3.bootcss.com/" target="_blank" role="button"
				onclick="_hmt.push(['_trackEvent', 'masthead', 'click', 'masthead-Bootstrap3中文文档'])">加拿大——移民的首选</a>
		</p>
		<ul class="masthead-links">
			<li><a href="https://v2.bootcss.com/" target="_blank"
				role="button"
				onclick="_hmt.push(['_trackEvent', 'masthead', 'click', 'masthead-Bootstrap2中文文档'])">其他国家移民</a>
			</li>
		</ul>
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