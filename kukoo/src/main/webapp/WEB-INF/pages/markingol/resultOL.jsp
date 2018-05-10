<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/pages/base/head.jsp"%>

		<html>
			<head>
				<link rel="stylesheet" href="<%=basePath %>css/markingol/resultOL.css"/>
				<!-- <link rel="icon" href="../../favicon.ico"> -->
				<title>布谷移民——在线评估结果</title>
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
																	<div class="main-menu-title">在线评估</div>
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
											<h1 class="local-page-title">评估结果</h1>
										</div>

										<div class="col-md-4">
											<div class="breadcrumbs2 font-poppins">
												<a class="a-inv" href="index.html">kukoo</a>
												<span class="slash-divider"></span>
											</div>
										</div>

									</div>
								</div>
							</div>

							<div class="main">

								<div class="col-md-12 mb-20 pb-30 selector">
									<div class="col-md-10">

										<div class="col-md-12">
											<div class="name">预估语言成绩</div>
											<div class="link-a">
												<a href="showMarkingOL">查看修改其他评估信息<i class="fa fa-angle-double-right"></i></a>
											</div>
										</div>

										<div class="con">
											<div class="col-md-6 lang-ti">
												<b>英语雅思</b>
											</div>
											<div class="col-md-6 lang-ti">
												<b>法语水平</b>
											</div>

											<div class="col-md-12 mb-20 line"></div>

											<div class="col-md-12 pb-10 white">

												<div class="col-md-12 ti">
													<div class="col-md-2"></div>
													<div class="col-md-1">听</div>
													<div class="col-md-1">说</div>
													<div class="col-md-1">读</div>
													<div class="col-md-1">写</div>
													<div class="col-md-2"></div>
													<div class="col-md-1">听</div>
													<div class="col-md-1">说</div>
													<div class="col-md-1">读</div>
													<div class="col-md-1">写</div>
												</div>
												<div class="col-md-12 mb-10 M">
													<div class="col-md-2">您</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-2"></div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
												</div>
												<div class="col-md-12 mb-10 W">
													<div class="col-md-2">您的伴侣</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-2"></div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*">
															<option value="-1"></option>

														</select>
													</div>
												</div>

											</div>
											<div class="" style="float:none; clear:both;"></div>
										</div>

									</div>
									<div class="col-md-2 rb-c">
										<div class="col-md-12">
											<div class="ml-5 button rounded small gray">保存评估结果</div>
										</div>
										<div class="share-icons col-md-12">
											<i class="icon icon-basic-share"></i>分享
											<i class="ml-10 fa fa-weibo"></i>
											<i class="fa fa-weixin"></i>
											<i class="fa fa-qq"></i>
										</div>
									</div>
								</div>

								<div class="clearfix"></div>

								<div class="alert alert-success" v-if="rv.recommend.length>0">
									<span aria-hidden="true" class="alert-icon icon_like"></span>
									<strong>恭喜!</strong>
									根据您提供的个人信息，您符合如下项目的申请条件：
								</div>

								<project-score :msg="rv.recommend" :type="'recommend'"></project-score>

								<div class="alert alert-warning" v-if="rv.promote.length>0">
									<span aria-hidden="true" class="alert-icon icon_error-triangle_alt"></span>
									<strong>提醒!</strong>
									若您及您伴侣（如有）能进一步提高语言成绩，可满足如下项目申请条件：（您可在本页顶部调整预估语言成绩，判断如下项目申请难度）
								</div>

								<project-score :msg="rv.promote" :type="'promote'"></project-score>

								<div class="alert alert-info" v-if="rv.Quebec.length>0">
									<span aria-hidden="true" class="alert-icon icon_error-triangle_alt"></span>
									<strong>补充!</strong>
									若您希望申请如下项目，请进一步补充相关信息进行评估：
								</div>

								<project-score :msg="rv.Quebec" :type="'Quebec'"></project-score>

							</div>

							<div id="footer-offset">
								<!-- FOOTER 4 BLACK -->
								<%@include file="/WEB-INF/pages/base/footer.jsp"%>
								</div>
								<!-- End BG -->
							</div>
							<!-- End wrap -->

							<script type="text/x-template" id="project-template">
								<span>
									<div class="pricing-horizontal clearfix item1" :class="type" v-for="item in msg">
										<div class="pricing-horizontal-content-container col-md-10">
											<div class="col-md-12 title">
												<span class="pname">{{item.projectName}}</span>
												<span class="pcountry label label-default">{{item.country}}</span>
												<span class="ptype label label-default">{{item.projectType}}</span>
											</div>
											<div class="col-md-12 content">
												<div class="col-md-4 pl-0 con">
													<div class="col-md-6 pl-0">
														<div class="col-md-6 plr-0">
															<span>
																<b>主申</b>
															</span>
															<span>
																<b>资金要求</b>
															</span>
														</div>
														<div class="col-md-6 plr-0">
															<span>{{item.major}}</span>
															<span>{{item.capital}}</span>
														</div>
													</div>
													<div class="col-md-6 plr-0">
														<div class="col-md-6 plr-0">
															<span>
																<b>签证类别</b>
															</span>
															<span>
																<b>处理周期</b>
															</span>
														</div>
														<div class="col-md-6 plr-0">
															<span>{{item.visaType}}</span>
															<span>{{item.period}}</span>
														</div>
													</div>
												</div>
												<div class="col-md-8">
													<div class="intro">{{item.intro}}</div>
													<div class="link">
														<a href="#">项目详情</a>
													</div>
												</div>
											</div>
										</div>
										<div class="pricing-horizontal-price-container col-md-2">
											<div class="price-container get-score">
												<span>{{item.score}}</span>
												得分
											</div>
											<div class="price-button-container pass-score">
												<span>{{item.pass}}</span>
												通过分
											</div>
										</div>
									</div>
								</span>
							</script>

							<script src="<%=basePath %>javascript/dist/Verify.js"></script>
							<script src="<%=basePath %>javascript/pages/resultOL.js"></script>
							<!-- JS end -->
						</body>

					</html>
