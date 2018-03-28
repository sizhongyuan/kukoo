<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<html>
<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<title>布谷移民——项目列表</title>
</head>
<script type="text/javascript">
	$("document").ready(function() {
		/* 判断session用户是否登录 start*/
		if("${userId}" !== ""){
			$('#userCenter',parent.document).removeClass("hidden");
			$("#signUp",parent.document).addClass("hidden");
			$("#signIn",parent.document).addClass("hidden");
		}
		/* 判断session用户是否登录 end*/
	});
	function mainQuery(){
		var country = $("#country").val().trim();
		var project = $("#project").val().trim();
		//alert("submit"+country+"---"+project);
		window.parent.setiframeSrc(country,project);
	}
</script>
<body>

	<!-- LOADER -->
	<div id="loader-overflow">
		<div id="loader3" class="loader-cont">Please enable JS</div>
	</div>

	<div id="wrap" class="boxed ">
		<div class="grey-bg">
			<!-- Grey BG  -->

			<!--[if lte IE 8]>
				<div id="ie-container">
					<div id="ie-cont-close">
						<a href="#" onclick="javascript&#058;this.parentNode.parentNode.style.display="none"; return false;"><img src="images/ie-warn/ie-warning-close.jpg" style="border: none;" alt="Close"></a>
					</div>
					<div id="ie-cont-content" >
						<div id="ie-cont-warning">
							<img src="images/ie-warn/ie-warning.jpg" alt="Warning!">
						</div>
						<div id="ie-cont-text" >
							<div id="ie-text-bold">
								You are using an outdated browser
							</div>
							<div id="ie-text">
								For a better experience using this site, please upgrade to a modern web browser.
							</div>
						</div>
						<div id="ie-cont-brows" >
							<a href="http://www.firefox.com" target="_blank"><img src="images/ie-warn/ie-warning-firefox.jpg" alt="Download Firefox"></a>
							<a href="http://www.opera.com/download/" target="_blank"><img src="images/ie-warn/ie-warning-opera.jpg" alt="Download Opera"></a>
							<a href="http://www.apple.com/safari/download/" target="_blank"><img src="images/ie-warn/ie-warning-safari.jpg" alt="Download Safari"></a>
							<a href="http://www.google.com/chrome" target="_blank"><img src="images/ie-warn/ie-warning-chrome.jpg" alt="Download Google Chrome"></a>
						</div>
					</div>
				</div>
				<![endif]-->

			<!-- HEADER 1 FONT BLACK TRANSPARENT -->
			<header id="nav" class="header header-1 bg-gray">
				<div class="header-wrapper">
					<div class="container-m-30 clearfix">
						<div class="logo-row">

							<!-- LOGO -->
							<div class="logo-container-2">
								<div class="logo-2">
									<a href="/kukoo/homePage" class="clearfix"> <img
										src="<%=basePath %>elementy/images/logo.png" class="logo-img"
										alt="Logo">
									</a>
								</div>
							</div>
							<!-- BUTTON -->
							<div class="menu-btn-respons-container">
								<button id="menu-btn" type="button"
									class="navbar-toggle btn-navbar collapsed"
									data-toggle="collapse"
									data-target="#main-menu .navbar-collapse">
									<span aria-hidden="true" class="icon_menu hamb-mob-icon"></span>
								</button>
							</div>
						</div>
					</div>

					<!-- MAIN MENU CONTAINER -->
					<div class="main-menu-container">

						<div class="container-m-30 clearfix">

							<!-- MAIN MENU -->
							<div id="main-menu">
								<div class="navbar navbar-default" role="navigation">

									<!-- MAIN MENU LIST -->
									<nav class="collapse collapsing navbar-collapse right-1024">
										<ul class="nav navbar-nav">
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage" class=""><div
														class="main-menu-title">家</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage/list" class=""><div
														class="main-menu-title">项目列表</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage/timeLine" class=""><div
														class="main-menu-title">时间轴</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage/dati" class=""><div
														class="main-menu-title">答题</div></a>
											</li>
										</ul>

									</nav>

								</div>
							</div>
							<!-- END main-menu -->

						</div>
						<!-- END container-m-30 -->

					</div>
					<!-- END main-menu-container -->

					<!-- SEARCH READ DOCUMENTATION -->
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
					</ul>
					<!-- cd-header-buttons -->
					<div id="cd-search" class="cd-search">
						<form class="form-search" id="searchForm"
							action="page-search-results.html" method="get">
							<input type="text" value="" name="q" id="q"
								placeholder="Search...">
						</form>
					</div>

				</div>
				<!-- END header-wrapper -->

			</header>

			<!-- PAGE TITLE LARGE 2 GRAY -->
			<div class="page-title-cont page-title-large2-cont bg-gray"
				style="padding-top: 10px;">
				<div class="relative container align-left">
					<div class="row">

						<div class="col-md-8">
							<h1 class="page-title2">Animations</h1>
						</div>

						<div class="col-md-4">
							<div class="breadcrumbs2 font-poppins">
								<a class="a-inv" href="index.html">home</a><span
									class="slash-divider">/</span><span class="bread-current">animations</span>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- COTENT CONTAINER -->
			<div class="container p-140-cont over-hide" style="padding-top: 30px;">
				<!-- BOUNCE -->
				<div class="heading-underline h4-line">
					<h4>BOUNCE</h4>
				</div>
				<div class="row mt-50 mb-60">
					<div class="col-md-3">
						<a href="/kukoo/homePage/detail">
							<img class="wow"
								src="<%=basePath %>elementy/images/content/demo-animate.png"
								alt="img">
						</a>
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>

				<!-- FLASH -->
				<div class="heading-underline h4-line">
					<h4>FLASH</h4>
				</div>
				<div class="row mt-50 mb-60">
					<div class="col-md-3">
						<img class="wow"
							src="<%=basePath %>elementy/images/content/demo-animate.png"
							alt="img">
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>

				<!-- PULSE -->
				<div class="heading-underline h4-line">
					<h4>PULSE</h4>
				</div>
				<div class="row mt-50 mb-60">
					<div class="col-md-3">
						<img class="wow"
							src="<%=basePath %>elementy/images/content/demo-animate.png"
							alt="img">
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>

				<!-- SHAKE -->
				<div class="heading-underline h4-line">
					<h4>SHAKE</h4>
				</div>
				<div class="row mt-50 mb-60">
					<div class="col-md-3">
						<img class="wow"
							src="<%=basePath %>elementy/images/content/demo-animate.png"
							alt="img">
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>

				<!-- SWING -->
				<div class="heading-underline h4-line">
					<h4>SWING</h4>
				</div>
				<div class="row mt-50 mb-60">
					<div class="col-md-3">
						<img class="wow"
							src="<%=basePath %>elementy/images/content/demo-animate.png"
							alt="img">
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>

				<!-- TADA -->
				<div class="heading-underline h4-line">
					<h4>TADA</h4>
				</div>
				<div class="row mt-50 mb-60">
					<div class="col-md-3">
						<img class="wow"
							src="<%=basePath %>elementy/images/content/demo-animate.png"
							alt="img">
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>

				<!-- WOBBLE -->
				<div class="heading-underline h4-line">
					<h4>WOBBLE</h4>
				</div>
				<div class="row mt-50 mb-80">
					<div class="col-md-3">
						<img class="wow"
							src="<%=basePath %>elementy/images/content/demo-animate.png"
							alt="img">
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>

				<!-- bounceIn -->
				<div class="heading-underline h4-line">
					<h4>BOUNCE IN</h4>
				</div>
				<div class="row mt-50 mb-80">
					<div class="col-md-3">
						<img class="wow"
							src="<%=basePath %>elementy/images/content/demo-animate.png"
							alt="img">
					</div>
					<div class="col-md-9">
						<p class="demo-anim-text">Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Curabitur pellentesque neque eget
							diam posuere porta. Quisque ut nulla at nunc lacinia. Proin
							adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In
							eu justo a felis faucibus ornare vel id metus. Vestibulum ante
							ipsum primis in faucibus orci luctus et ultrices posuere cubilia
							Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra
							leo. Nullam convallis, arcu vel pellentesque sodales, nisi est
							varius diam, ac ultrices sem. Proin ultricies volutpat sapien,
							nec scelerisque ligula mollis lobortis.</p>
					</div>
				</div>
			</div>
			<!-- END container -->

			<!-- FOOTER 4 BLACK -->
			<%@include file="/WEB-INF/pages/base/footer.jsp"%>

		</div>
		<!-- End BG -->
	</div>
	<!-- End wrap -->
</body>

</html>