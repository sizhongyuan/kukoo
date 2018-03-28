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
									<a href="index.html" class="clearfix"> <img
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
			<footer id="footer4" class="page-section pt-95 pb-50 footer2-black">
				<div class="container">
					<div class="row">

						<div class="col-md-3 col-sm-3 widget">
							<div class="logo-footer-cont">
								<a href="index.html"> <img class="logo-footer"
									src="<%=basePath %>elementy/images/logo-footer-white.png"
									alt="logo">
								</a>
							</div>
							<div class="footer2-text-cont">
								<address>
									555 California str, Suite 100<br> San&nbsp;Francisco, CA
									94107
								</address>
							</div>
							<div class="footer2-text-cont">
								1-800-312-2121<br> <a class="a-text"
									href="mailto:info@haswell.com">info@elementy.com</a>
							</div>
							<div class="footer2-text-cont a-text-main-cont">
								<a class="popup-gmaps mfp-plugin font-poppins"
									href="https://maps.google.com/maps?q=555+California+Street+Building,+California+Street,+San+Francisco,&amp;hl=en&amp;t=v&amp;hnear=555+California+Street+Building,+California+Street,+San+Francisco">Open
									Map</a>
							</div>
						</div>

						<div class="col-md-3 col-sm-3 widget">
							<h4>Navigate</h4>
							<ul class="links-list a-text-cont a-text-main-cont font-poppins">
								<li><a href="index.html">Home</a></li>
								<li><a href="shortcodes.html">Shortcodes</a></li>
								<li><a href="services.html">Services</a></li>
								<li><a href="index-portfolio.html">Portfolio</a></li>
								<li><a href="index-blog.html">Blog</a></li>
								<li><a href="index-shop.html">Shop</a></li>
								<li><a href="intro.html">Pages</a></li>
							</ul>
						</div>

						<div class="col-md-3 col-sm-3 widget">
							<h4>Insights</h4>
							<ul class="links-list a-text-cont font-poppins">
								<li><a href="about-us.html">Company</a></li>
								<li><a href="services.html">What We Do</a></li>
								<li><a href="https://help.market.envato.com/hc/en-us">Help
										Center</a></li>
								<li><a href="http://themeforest.net/legal/market">Terms
										of Service</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</div>

						<div class="col-md-3 col-sm-3 widget">
							<h4>Newsletter</h4>

							<!-- NEWS LETTER 2 -->
							<div class="relative">
								<div id="mc_embed_signup" class="nl-form-container clearfix">
									<form
										action="http://abcgomel.us9.list-manage.com/subscribe/post-json?u=ba37086d08bdc9f56f3592af0&amp;id=e38247f7cc&amp;c=?"
										method="post" id="mc-embedded-subscribe-form"
										name="mc-embedded-subscribe-form"
										class="newsletterform2 validate" target="_blank" novalidate>
										<!-- EDIT THIS ACTION URL (add "post-json?u" instead of "post?u" and appended "&amp;c=?" to the end of this URL) -->
										<input type="email" value="" name="EMAIL"
											class="email nl2-email-input" id="mce-EMAIL"
											placeholder="Email address" required>
										<!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
										<div style="position: absolute; left: -5000px;">
											<input type="text"
												name="b_ba37086d08bdc9f56f3592af0_e38247f7cc" tabindex="-1"
												value="">
										</div>

										<button id="mc-embedded-subscribe" class="nl2-btn"
											type="submit" name="subscribe">
											<span class="icon icon-arrows-slim-right"></span>
										</button>

									</form>
									<div id="notification_container"></div>
								</div>
							</div>

						</div>

					</div>

					<!-- SUB FOOTER -->
					<div class="footer2-copy-cont clearfix">
						<!-- Social Links -->
						<div class="footer2-soc-a right">
							<a
								href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel"
								title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
							<a
								href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel"
								title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a>
							<a href="https://www.behance.net/abcgomel" title="Behance"
								target="_blank"><i class="fa fa-behance"></i></a> <a
								href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel"
								title="LinkedIn+" target="_blank"><i class="fa fa-linkedin"></i></a>
							<a
								href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel"
								title="Dribbble" target="_blank"><i class="fa fa-dribbble"></i></a>
						</div>

						<!-- Copyright -->
						<div class="left">
							<a class="footer2-copy"
								href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel"
								target="_blank">&copy; elementy</a>
						</div>

					</div>

				</div>
			</footer>

			<!-- BACK TO TOP -->
			<p id="back-top">
				<a href="#top" title="Back to Top"><span
					class="icon icon-arrows-up"></span></a>
			</p>

		</div>
		<!-- End BG -->
	</div>
	<!-- End wrap -->
</body>

</html>