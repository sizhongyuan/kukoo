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
		if ("${userId}" !== "") {
			$('#userCenter', parent.document).removeClass("hidden");
			$("#signUp", parent.document).addClass("hidden");
			$("#signIn", parent.document).addClass("hidden");
		}
		/* 判断session用户是否登录 end*/
	});
	function mainQuery() {
		var country = $("#country").val().trim();
		var project = $("#project").val().trim();
		//alert("submit"+country+"---"+project);
		window.parent.setiframeSrc(country, project);
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
										src="<%=basePath%>elementy/images/logo.png" class="logo-img"
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
											<li class="parent megamenu"><a href="/kukoo/homePage"
												class=""><div class="main-menu-title">家</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="/kukoo/homePage/list" class=""><div
														class="main-menu-title">项目列表</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="/kukoo/homePage/timeLine" class=""><div
														class="main-menu-title">时间轴</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage/dati" class=""><div
														class="main-menu-title">答题</div></a></li>
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
			<div class="page-title-cont page-title-large2-cont bg-gray">
				<div class="relative container align-left">
					<div class="row">

						<div class="col-md-8">
							<h1 class="page-title2">Typography</h1>
						</div>

						<div class="col-md-4">
							<div class="breadcrumbs2 font-poppins">
								<a class="a-inv" href="index.html">home</a><span
									class="slash-divider">/</span><span class="bread-current">typography</span>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="container bs-docs-container p-140-cont">
				<div class="row">
			<!-- TIMELINE -->
			<div class="heading-underline h3-line">
				<h3 class="mb-40">Timeline</h3>
			</div>
			<section id="cd-timeline" class="cd-container mb-100">
				<div class="cd-timeline-start">
					<div class="cd-timeline-start-caption">START COMPANY</div>
					<div class="cd-timeline-start-date">NOVEMBER 2011</div>
				</div>
				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<span aria-hidden="true" class="icon_house_alt"></span>
					</div>
					<!-- cd-timeline-img -->

					<div class="cd-timeline-content">
						<h2>LOREM IPSUM DOLOR SIT AMET</h2>
						<div>Iste voluptatibus minus veritatis, consectetur
							adipisicing elit. Iusto, optio, dolorum provident rerum aut</div>
						<span class="cd-date"><span class="cd-date-year">2011</span><span
							class="cd-date-month">NOV 11</span></span>
					</div>
					<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->

				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<span aria-hidden="true" class="icon_cloud_alt"></span>
					</div>
					<!-- cd-timeline-img -->

					<div class="cd-timeline-content">
						<h2>HIC QUASI PLACEAT IURE TEMPORA</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Iusto, optio, dolorum provident rerum aut hic quasi placeat iure
							tempora laudantium ipsa ad debitis unde?</p>
						<span class="cd-date"><span class="cd-date-year">2012</span><span
							class="cd-date-month">DEC 31</span></span>
					</div>
					<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->

				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<span aria-hidden="true" class="icon_heart_alt"></span>
					</div>
					<!-- cd-timeline-img -->

					<div class="cd-timeline-content">
						<h2>DOLOREM IPSAM QUAE RERUM QUIS</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Excepturi, obcaecati, quisquam id molestias eaque asperiores
							voluptatibus cupiditate error assumenda delectus odit similique
							earum voluptatem doloremque dolorem ipsam quae rerum quis. Odit,
							itaque, deserunt corporis vero ipsum nisi eius odio natus ullam
							provident pariatur temporibus quia eos repellat consequuntur
							perferendis enim amet quae quasi repudiandae sed quod veniam
							dolore possimus rem voluptatum eveniet eligendi quis fugiat
							aliquam sunt similique aut adipisci.</p>
						<span class="cd-date"><span class="cd-date-year">2013</span><span
							class="cd-date-month">JUL 21</span></span>
					</div>
					<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->

				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<span aria-hidden="true" class="icon_gift_alt"></span>
					</div>
					<!-- cd-timeline-img -->

					<div class="cd-timeline-content">
						<h2>ISTE VOLUPTATIBUS MINUS VERITATIS</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Iusto, optio, dolorum provident rerum aut hic quasi placeat iure
							tempora laudantium ipsa ad debitis unde? Iste voluptatibus minus
							veritatis qui ut.</p>
						<span class="cd-date"><span class="cd-date-year">2014</span><span
							class="cd-date-month">OCT 15</span></span>
					</div>
					<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->

				<div class="cd-timeline-block">
					<div class="cd-timeline-img cd-picture">
						<span aria-hidden="true" class="icon_archive_alt"></span>
					</div>
					<!-- cd-timeline-img -->

					<div class="cd-timeline-content">
						<h2>CONSECTETUR ADIPISICING ELIT</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Iusto, optio, dolorum provident rerum.</p>
						<span class="cd-date"><span class="cd-date-year">2015</span><span
							class="cd-date-month">MAY 10</span></span>
					</div>
					<!-- cd-timeline-content -->
				</div>
				<!-- cd-timeline-block -->

				<div class="cd-timeline-start cd-final">
					<div class="cd-timeline-start-caption">RECENT DAY</div>
				</div>
			</section>
			<!-- cd-timeline -->
			</div>
			</div>
			

			<div id="footer-offset">
				<!-- FOOTER 4 BLACK -->
				<%@include file="/WEB-INF/pages/base/footer.jsp"%>
			</div>
			<!-- End footer-offset -->

		</div>
		<!-- End BG -->
	</div>
	<!-- End wrap -->

	<!-- JS begin -->
	<script>
		$(document).ready(function() {

			//NAV SIDEBAR------------------------------------------------------------------
			var top_offset = $('header').height() - 1; // get height of fixed navbar

			$('#nav-sidebar').onePageNav({
				currentClass : 'current',
				changeHash : false,
				scrollSpeed : 700,
				scrollOffset : top_offset,
				scrollThreshold : 0.5,
				filter : '',
				easing : 'swing',
				begin : function() {
					//I get fired when the animation is starting
				},
				end : function() {
					//I get fired when the animation is ending
				},
				scrollChange : function($currentListItem) {
					//I get fired when you enter a section and I pass the list item of the section
				}
			});

			//SIDEBAR STICKY---------------------------------------------	  
			var //offsetSb = $('.page-title-bg').height(),
			offsetFooter = $('#footer-offset').height() + 30;
			// DM Menu
			jQuery('#sidebar-stiky').affix({
				offset : {
					top : 390, //top offset for header 1 for others headers it will have other value
					bottom : offsetFooter
				}
			});

		});
	</script>

	<!-- JS end -->
</body>

</html>