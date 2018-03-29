<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<html>
<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<title>布谷移民——移民解决方案专家</title>
<link href="<%=basePath %>css/homepage/homepage-querybar.css" rel="stylesheet" type="text/css">
<link href="<%=basePath %>javascript/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" type="text/css">
<script src="<%=basePath %>javascript/bootstrap-select/js/bootstrap-select.min.js"></script>
<script src="<%=basePath %>javascript/bootstrap-select/js/i18n/defaults-zh_CN.min.js"></script>
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
		/* 个性化动画新增查询栏 */
		$("#querybar").delay(1000).fadeIn(1000);
	});
	function mainQuery(){
		var country = $("#country").val().trim();
		var project = $("#project").val().trim();
		//alert("submit"+country+"---"+project);
		window.parent.setiframeSrc(country,project);
	}
</script>
<style>
/*去除选择框的outline*/
#countryDiv button:focus{outline:none !important;}
#projectDiv button:focus{outline:none !important;}
</style>
<body class="font-raleway">

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
						<a href='#' onclick='javascript&#058;this.parentNode.parentNode.style.display="none"; return false;'><img src='images/ie-warn/ie-warning-close.jpg' style='border: none;' alt='Close'></a>
					</div>
					<div id="ie-cont-content" >
						<div id="ie-cont-warning">
							<img src='images/ie-warn/ie-warning.jpg' alt='Warning!'>
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
							<a href='http://www.firefox.com' target='_blank'><img src='images/ie-warn/ie-warning-firefox.jpg' alt='Download Firefox'></a>
							<a href='http://www.opera.com/download/' target='_blank'><img src='images/ie-warn/ie-warning-opera.jpg' alt='Download Opera'></a>
							<a href='http://www.apple.com/safari/download/' target='_blank'><img src='images/ie-warn/ie-warning-safari.jpg' alt='Download Safari'></a>
							<a href='http://www.google.com/chrome' target='_blank'><img src='images/ie-warn/ie-warning-chrome.jpg' alt='Download Google Chrome'></a>
						</div>
					</div>
				</div>
				<![endif]-->

			<!-- HEADER 1 FONT WHITE TRANSPARENT -->
			<div class="header-black-bg"></div>
			<!-- NEED FOR TRANSPARENT HEADER ON MOBILE -->
			<header id="nav" class="header header-1 header-black">
				<div class="header-wrapper">
					<div class="container-m-30 clearfix">
						<div class="logo-row">

							<!-- LOGO -->
							<div class="logo-container-2">
								<div class="logo-2">
									<a href="/kukoo/homePage" class="clearfix">
										<img src="<%=basePath %>elementy/images/logo-white.png" class="logo-img" alt="Logo">
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
							<div id="main-menu" class="font-raleway">
								<div class="navbar navbar-default" role="navigation">

									<!-- MAIN MENU LIST -->
									<nav class="collapse collapsing navbar-collapse right-1024">
										<ul class="nav navbar-nav">

											<!-- MENU ITEM -->
											<!-- <li class="parent current"><a href="#" class="open-sub"><div
														class="main-menu-title">Home</div></a>
												<ul class="sub">
													<li class="parent"><a class="current open-sub"
														href="#">Home</a>
														<ul class="sub">
															<li><a href="index.html">Home 1</a></li>
															<li><a href="index2.html">Home 2</a></li>
															<li><a href="index3.html">Home 3</a></li>
															<li><a href="index4.html">Home 4</a></li>
															<li><a href="index5.html">Home 5</a></li>
															<li><a href="index6.html">Home 6</a></li>
															<li><a href="index7.html">Home 7</a></li>
															<li><a href="index8.html">Home 8</a></li>
															<li><a class="current" href="index9.html">Home 9</a></li>
															<li><a href="index10.html">Home 10</a></li>
															<li><a href="index-center.html">Home 11 <span
																	class="label-new">NEW</span></a></li>
															<li><a href="index-sticky-header-on-mobile.html">Home
																	12 <span class="label-new">NEW</span>
															</a></li>
															<li><a href="index-hiding-logo-header.html">Home
																	13 <span class="label-new">NEW</span>
															</a></li>
														</ul></li>
													<li class="parent"><a href="#" class="open-sub">Blog</a>
														<ul class="sub">
															<li><a href="index-blog.html">Blog Layout 1</a></li>
															<li><a href="index-blog2.html">Blog Layout 2</a></li>
														</ul></li>
													<li class="parent"><a href="#" class="open-sub">Landing</a>
														<ul class="sub">
															<li><a href="index-landing.html">Landing 1</a></li>
															<li><a href="index-landing2.html">Landing 2</a></li>
															<li><a href="index-landing3.html">Landing 3</a></li>
															<li><a href="index-landing-left.html">Landing 4
																	<span class="label-new">NEW</span>
															</a></li>
															<li><a href="index-landing-app.html">App Landing</a></li>
														</ul></li>
													<li class="parent"><a href="#" class="open-sub">Minimal
															Menu</a>
														<ul class="sub">
															<li><a href="index-side-menu.html">Side Menu</a></li>
															<li><a href="index-full-screen-menu.html">Fullscreen
																	Menu</a></li>
															<li><a href="index-full-screen-menu-sub.html">Fullscreen
																	Menu Sub</a></li>
														</ul></li>
													<li class="parent"><a href="#" class="open-sub">Finance</a>
														<ul class="sub">
															<li><a href="index-finance.html">Finance</a></li>
															<li><a href="index-finance2.html">Finance 2</a></li>
														</ul></li>
													<li class="parent"><a href="#" class="open-sub">Construction</a>
														<ul class="sub">
															<li><a href="index-construction.html">Construction</a></li>
															<li><a href="index-construction2.html">Construction
																	2</a></li>
														</ul></li>
													<li><a href="index-portfolio.html">Portfolio</a></li>
													<li><a href="index-photo.html">Photo</a></li>
													<li><a href="index-shop.html">Shop</a></li>
													<li><a href="index-cars.html">Car Tuning</a></li>
													<li><a href="about-me.html">About Me</a></li>
													<li><a href="index-travel.html">Travel</a></li>
													<li><a href="index-magazine.html">Magazine</a></li>
													<li><a href="intro.html#one-pages">One Page</a></li>

												</ul></li> -->

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage" class=""><div
														class="main-menu-title">家</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage/list" class=""><div
														class="main-menu-title">项目列表</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/timeline" class=""><div
														class="main-menu-title">时间轴</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/markingOLController/showMarkingOL" class=""><div
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

					<!-- SEARCH READ DOCUMENTATION 首页搜索功能 注释掉
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
					</ul>-->
					<!-- cd-header-buttons 首页搜索功能 注释掉
					<div id="cd-search" class="cd-search">
						<form class="form-search" id="searchForm"
							action="page-search-results.html" method="get">
							<input type="text" value="" name="q" id="q"
								placeholder="Search...">
						</form>
					</div>
					-->
				</div>
				<!-- END header-wrapper -->

			</header>

			<!-- SLIDER Revo Hero 1 FONT MONTSERRAT -->
			<div class="relative">
			<div id="header">
				<div class="rev_slider_wrapper fullscreen-container"
					id="rev_slider_280_1_wrapper"
					style="background-color: #fff; padding: 0px;">
					<!-- START REVOLUTION SLIDER 5.1.4 fullscreen mode -->
					<div class="rev_slider fullscreenbanner" data-version="5.1.4"
						id="rev_slider_280_1" style="display: none;">
						<ul>
							<!-- SLIDE -->
							<li data-description="" data-easein="Power2.easeInOut"
								data-easeout="default" data-index="rs-898"
								data-masterspeed="1500" data-param1="" data-param10=""
								data-param2="" data-param3="" data-param4="" data-param5=""
								data-param6="" data-param7="" data-param8="" data-param9=""
								data-rotate="0" data-saveperformance="off"
								data-slotamount="default" data-title="Slide"
								data-transition="fade">
								<!-- MAIN IMAGE --> <img alt="img" class="rev-slidebg"
								data-bgparallax="12" data-bgposition="center center"
								data-duration="30000" data-ease="Linear.easeNone"
								data-no-retina="" src="<%=basePath %>elementy/images/revo-slider/index18.jpeg"> <!-- LAYERS -->
								<!-- LAYER NR. 1 -->
								<div
									class="tp-caption font-raleway font-white tp-resizeme rs-parallaxlevel-6"
									id="slide-898-layer-1" style="z-index: 8; white-space: nowrap;"
									data-fontsize="['90','85','80','55']" data-fontweight="100"
									data-height="none" data-lineheight="['105','100','95','70']"
									data-responsive_offset="on" data-splitin="none"
									data-splitout="none"
									data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":100,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
									data-whitespace="nowrap" data-width="none"
									data-x="['left','left','left','left']"
									data-hoffset="['40','40','40','20']"
									data-y="['center','center','center','center']"
									data-voffset="['-100','-90','-80','-60']">We’re Elementy
								</div> <!-- LAYER NR. 2 -->
								<div
									class="tp-caption font-raleway font-white tp-resizeme rs-parallaxlevel-6"
									id="slide-898-layer-2" style="z-index: 8; white-space: nowrap;"
									data-fontsize="['90','85','80','55']" data-fontweight="100"
									data-height="none" data-lineheight="['105','100','95','70']"
									data-responsive_offset="on" data-splitin="none"
									data-splitout="none"
									data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":300,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
									data-whitespace="nowrap" data-width="none"
									data-x="['left','left','left','left']"
									data-hoffset="['40','40','40','20']"
									data-y="['center','center','center','center']"
									data-voffset="['0','0','0','0']">creative digital</div> <!-- LAYER NR. 3 -->
								<div
									class="tp-caption font-raleway font-white tp-resizeme rs-parallaxlevel-6"
									id="slide-898-layer-3" style="z-index: 8; white-space: nowrap;"
									data-fontsize="['90','85','80','55']" data-fontweight="100"
									data-height="none" data-lineheight="['105','100','95','70']"
									data-responsive_offset="on" data-splitin="none"
									data-splitout="none"
									data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
									data-whitespace="nowrap" data-width="none"
									data-x="['left','left','left','left']"
									data-hoffset="['40','40','40','20']"
									data-y="['center','center','center','center']"
									data-voffset="['100','90','80','60']">agency</div>
							</li>
						</ul>
						<div class="tp-bannertimer tp-bottom"
							style="visibility: hidden !important;"></div>
					</div>
				</div>
				<!-- END REVOLUTION SLIDER -->
				<!-- querybar add by szy start -->
			<div id="querybar" class="booking-row content-padding-xs" style="display:none">
				<div class="container">
					<div class="row">
						<form id="booking-form" role="form">
							<div class="col-md-4 col-sm-6">
							</div>
							
							<div id="countryDiv" class="col-md-3 col-sm-4 icon-arrow">
								<!-- <label class="sr-only" for="country">country</label>  -->
								<select id="country" class="form-control">
								    <option value="">请选择国家</option>
								    <option value="加拿大">加拿大</option>
								    <option value="美国">美国</option>
								    <option value="澳大利亚">澳大利亚</option>
								</select>
							</div>
							<div id="projectDiv" class="col-md-3 col-sm-4 icon-arrow">
								<!-- <label class="sr-only" for="project">project</label>  -->
								<select id="project" class="form-control">
								    <option value="">请选择项目</option>
								    <option value="加拿大">加拿大</option>
								    <option value="美国">美国</option>
								    <option value="澳大利亚">澳大利亚</option>
								</select>
							</div>
							<div class="col-md-2 col-sm-4">
								<input type="submit" class="btn btn-primary btn-block" 
									name="query" value="查询">
							</div>
							
						</form>
					</div>
				</div>
			</div>
			<!-- querybar add by szy end -->
				<!-- SCROLL ICON -->
				<div class="local-scroll-cont font-white">
					<a href="#about" class="scroll-down smooth-scroll">
						<div class="icon icon-arrows-down"></div>
					</a>
				</div>
			</div>
			</div>

			<!-- FEATURES 13 OUR SERVICES FONT RALEWAY -->
			<div id="about" class="page-section pt-160-b-120-cont">
				<div class="container">
					<div class="row">

						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="fes4-box wow fadeIn">
								<h2 class="section-title2 font-raleway">Our Services</h2>

							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="fes4-box wow fadeIn" data-wow-delay="200ms">
								<div class="fes13-title-cont">
									<div class="fes13-box-icon">
										<div class="icon icon-basic-settings font-purple"></div>
									</div>
									<h3 class="font-raleway">Development</h3>
								</div>
								<div>Maecenas luctus nisi in sem fermentum blat. In nec
									elit solliudin, elementum, dictum pur quam volutpat suscipit
									antena.</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="fes4-box wow fadeIn" data-wow-delay="400ms">
								<div class="fes13-title-cont">
									<div class="fes13-box-icon">
										<div class="icon icon-basic-share font-purple"></div>
									</div>
									<h3 class="font-raleway">Production</h3>
								</div>
								<div>Seductio maesto nisi in sem fermentum blat. In nec
									elit solliudin, elementum, dictum pur quam volutpat suscipit
									antena.</div>
							</div>
						</div>

					</div>
					<div class="row">

						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="fes4-box wow fadeIn" data-wow-delay="600ms">
								<div class="fes13-title-cont">
									<div class="fes13-box-icon">
										<div class="icon icon-basic-target font-purple"></div>
									</div>
									<h3 class="font-raleway">Branding</h3>
								</div>
								<div>Donec vel luctus nisi in sem fermentum blat. In nec
									elit solliudin, elementum, dictum pur quam volutpat suscipit
									antena.</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="fes4-box wow fadeIn" data-wow-delay="800ms">
								<div class="fes13-title-cont">
									<div class="fes13-box-icon">
										<div class="icon icon-basic-globe font-purple"></div>
									</div>
									<h3 class="font-raleway">Web Design</h3>
								</div>
								<div>Lorem luctus antena at nisi in sem blandit. In nec
									elit soltudin, elementum odio et, dictum quam a volutpat
									elementum.</div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-4 col-md-4">
							<div class="fes4-box wow fadeIn" data-wow-delay="1000ms">
								<div class="fes13-title-cont">
									<div class="fes13-box-icon">
										<div class="icon icon-basic-picture font-purple"></div>
									</div>
									<h3 class="font-raleway">Photography</h3>
								</div>
								<div>Fermentum nisi in sem fertum blat. In elit soldin,
									elemtum, arenam pur quam volutpat suscipit dictum pur quam.</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- VIEW MORE PROJECTS  -->
			<!-- <div class="port-view-more-cont">
				<a class="port-view-more font-raleway bg-gray-light"
					href="portfolio-masonry-4col.html">View All Projects</a>
			</div> -->
			<!-- END PORTFOLIO SECTION -->

			<!-- FOOTER 4 BLACK FONT RALEWAY -->
			<%@include file="/WEB-INF/pages/base/footer.jsp"%>
		</div>
		<!-- End BG -->
	</div>
	<!-- End wrap -->

	<!-- JS begin -->
	<!-- SLIDER REVOLUTION INITIALIZATION  -->
	<script>
      jQuery(document).ready(function() {
          
        jQuery("#rev_slider_280_1").show().revolution({
          sliderType: "hero",
          jsFileLocation: "revo-slider/js/",
          sliderLayout: "fullscreen",
          dottedOverlay: "none",
          delay: 9000,
          /*navigation: {},*/
          responsiveLevels: [1240, 1024, 778, 480],
          visibilityLevels: [1240, 1024, 778, 480],
          gridwidth: [1240, 1024, 778, 480],
          gridheight: [868, 768, 960, 720],
          lazyType: "none",
          parallax: {
            type: "off",
            origo: "slidercenter",
            speed: 1000,
            levels: [0],
            type: "scroll",
            disable_onmobile: "on"
          },
          shadow: 0,
          spinner: "spinner2",
          autoHeight: "off",
          fullScreenAutoWidth: "off",
          fullScreenAlignForce: "off",
          fullScreenOffsetContainer: "",
          fullScreenOffset: "",
          disableProgressBar: "on",
          hideThumbsOnMobile: "off",
          hideSliderAtLimit: 0,
          hideCaptionAtLimit: 0,
          hideAllCaptionAtLilmit: 0,
          debugMode: false,
          fallbacks: {
            simplifyAll: "off",
            disableFocusListener: false,
          }
        });
       
      }); /*ready*/
    </script>
	<!-- JS end -->

</body>

</html>