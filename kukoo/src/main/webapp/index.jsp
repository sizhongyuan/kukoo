<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html lang="zh-CN">
<script type="text/javascript">
	//iframe高度自适应
	function SetCwinHeight() {
		var iframeid = document.getElementById("iframeid"); //iframe id
		if (document.getElementById) {
			if (iframeid && !window.opera) {
				if (iframeid.contentDocument
						&& iframeid.contentDocument.body.offsetHeight) {
					iframeid.height = iframeid.contentDocument.body.offsetHeight;
				} else if (iframeid.Document
						&& iframeid.Document.body.scrollHeight) {
					iframeid.height = iframeid.Document.body.scrollHeight;
				}
			}
		}
	}
	//iframe的src替换
	function changeframsrc(url) {
		document.getElementById("iframeid").src = url;
	}
	//加入active导航条高亮选中
	$("document").ready(function() {
		$(".navbar-collapse li").click(function() {
			$(".navbar-collapse li").removeClass("active");//首先移除全部的active
			$(this).addClass("active");//选中的添加acrive
		});
	});
</script>
<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<title>布谷移民——移民解决方案专家</title>
</head>

<body>
  	<!-- 导航栏start -->
	<header class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- 定义折叠后的菜单 -->
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-sm" href="/kukoo/index.jsp">布谷移民</a>
			</div>
			<!-- 导航条切换 -->
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav navbar-right hidden-sm">
					<li class="">
						<a href="#" onclick="changeframsrc('/kukoo/menu/showProjectInfo/')">项目介绍</a>
					</li>
					<li class="">
						<a href="#" onclick="changeframsrc('/kukoo/homePage/showListPage/')">项目列表1</a>
					</li>
					<li class="">
						<a href="#" onclick="changeframsrc('/kukoo/homePage/showListPage2/')">项目列表2</a>
					</li>
					<li class="">
						<a href="#" onclick="changeframsrc('/kukoo/detail/showDetail/')">项目详情</a>
					</li>
					<li class="">
						<a href="#" onclick="changeframsrc('/kukoo/menu/showArticle')">文章精选</a>
					</li>
					<li class="">
						<a href="#" onclick="changeframsrc('/kukoo/markingOLController/showMarkingOL')">在线答题</a>
					</li>
					<li class="">
						<a href="#" onclick="changeframsrc('/kukoo/menu/showTimeAxis')">时间轴</a>
					</li>
					<li id="signIn" class="">
						<a href="#" onclick="changeframsrc('/kukoo/user/showSignIn')">登录</a>
					</li>
					<li id="signUp" class="">
						<a href="#" onclick="changeframsrc('/kukoo/user/showSignUp')">注册</a>
					</li>
					<li id="userCenter" class="hidden">
						<a href="#" onclick="changeframsrc('/kukoo/user/showUserCenter')">用户中心</a>
					</li>
				</ul>
			</div>
		</div>
	</header>
	<!-- 导航栏end -->
	
	<!-- 页面中部 -->
	<div class="iframe-top">
		<iframe id="iframeid" src="/kukoo/homePage/showHomePage/" onload="Javascript:SetCwinHeight()" frameborder="0" width="100%" height="1"></iframe>
	</div>
	
	<!-- 网站底部start -->
	<footer>
	111
	</footer>
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<span>Copyright © <a href="http://www.youzhan.org">优站精选</a></span>
					| <span><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备11008151号</a></span>
				</div>
			</div>
		</div>
	</div>
	<!-- 网站底部end -->
</body>
</html>