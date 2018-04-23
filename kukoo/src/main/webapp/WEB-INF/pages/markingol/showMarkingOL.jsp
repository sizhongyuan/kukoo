<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/pages/base/head.jsp"%>

		<html>
			<head>
				<link rel="stylesheet" href="<%=basePath %>css/markingol/showMarkingOL.css"/>
				<!-- <link rel="icon" href="../../favicon.ico"> -->
				<title>布谷移民——评估表</title>
			</head>
			<script type="text/javascript">
				$("document").ready(function () {
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
						<!-- Grey BG -->
						<!-- HEADER 1 FONT BLACK TRANSPARENT -->
						<header id="nav" class="header header-1 bg-gray">
							<div class="header-wrapper">
								<div class="container-m-30 clearfix">
									<div class="logo-row">

										<!-- LOGO -->
										<div class="logo-container-2">
											<div class="logo-2">
												<a href="/kukoo/homePage" class="clearfix">
													<img src="<%=basePath%>elementy/images/logo.svg" class="logo-img" alt="Logo"></a>
												</div>
											</div>
											<!-- BUTTON -->
											<div class="menu-btn-respons-container">
												<button id="menu-btn" type="button" class="navbar-toggle btn-navbar collapsed" data-toggle="collapse" data-target="#main-menu .navbar-collapse">
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
															<li class="parent megamenu">
																<a href="/kukoo/homePage" class="">
																	<div class="main-menu-title">首页</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/list/lists" class="">
																	<div class="main-menu-title">项目列表</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/list/cases" class="">
																	<div class="main-menu-title">案例列表</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/timeline" class="">
																	<div class="main-menu-title">申报移民流程</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/markingOLController/showMarkingOL" class="">
																	<div class="main-menu-title">答题</div>
																</a>
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

									<!-- SEARCH READ DOCUMENTATION 搜索功能 注释掉 <ul class="cd-header-buttons"> <li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li> </ul>-->
									<!-- cd-header-buttons 搜索功能 注释掉 <div id="cd-search" class="cd-search"> <form class="form-search" id="searchForm" action="page-search-results.html" method="get"> <input type="text" value="" name="q" id="q" placeholder="Search..."> </form> </div>-->

								</div>
								<!-- END header-wrapper -->

							</header>
							<!-- PAGE TITLE LARGE 2 GRAY -->
							<div class="page-title-cont page-title-large2-cont bg-gray" style="padding-top: 10px;">
								<div class="relative container align-left">
									<div class="row">

										<div class="col-md-8">
											<h1 class="local-page-title">布谷移民在线评估问卷</h1>
										</div>

										<div class="col-md-4">
											<div class="breadcrumbs2 font-poppins">
												<a class="a-inv" href="index.html"></a>
												<span class="slash-divider"></span>
												<span class="bread-current">共12题，答题时间：5分钟</span>
											</div>
										</div>

									</div>
								</div>
							</div>

							<div class="main">

								<div class="item1" v-for="item in list">
									<div class="pen">
										<div class="ti">{{item.title}}
										</div>
										<div class="question">{{item.question}}</div>
									</div>

									<div class="content">
										<div class="details" v-for="qa in item.details">
											<div v-if="qa.subtitle" class="subtitle">{{qa.subtitle}}</div>
											<div class="qas" v-for="(q,index) in qa.q">
												<div class="q">{{q}}</div>
												<div class="a">

													<div class="select-style">
														<select class="w-100">
															<option v-for="op in qa.a[index]" value="op">{{op}}</option>
														</select>
													</div>

													<div class="select-style">
														<select class="w-100">
															<option v-for="op in qa.a[index]" value="op">{{op}}</option>
														</select>
													</div>

													<div class="clear"></div>

												</div>
												<div class="clear"></div>
											</div>
										</div>
									</div>

								</div>

							</div>

							<div id="footer-offset">
								<!-- FOOTER 4 BLACK -->
								<%@include file="/WEB-INF/pages/base/footer.jsp"%>
								</div>
								<!-- End BG -->
							</div>
							<!-- End wrap -->
							<script src="<%=basePath %>javascript/pages/showMarkingOL.js"></script>
							<!-- JS end -->
						</body>

					</html>
