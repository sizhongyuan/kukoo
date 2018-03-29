<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<%  
        //project  
        String project=request.getParameter("project");
        String country=request.getParameter("country");
        String search=request.getParameter("search");
     %>
<html>
<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<title>布谷移民——项目列表</title>
</head>
<style>
.input_line{
	font-family: 'Poppins','Open Sans',Arial, Helvetica, sans-serif;
    border: none;
    border-bottom: 1px solid #ccc;
    border-radius: 0px;
    background: transparent;
    color: #323336;
    font-size: 14px;
    margin: 0;
    outline: medium none;
    padding: 8px 20px 8px 0;
    line-height: inherit;
}
</style>
<script type="text/javascript">
	$("document").ready(function() {
		/* 判断session用户是否登录 start*/
		if("${userId}" !== ""){
			$('#userCenter',parent.document).removeClass("hidden");
			$("#signUp",parent.document).addClass("hidden");
			$("#signIn",parent.document).addClass("hidden");
		}
		/* 判断session用户是否登录 end*/
		var search = "${search}";
		var project = "${project}";
		var country = "${country}";
		<%-- var project ="<%=project %>";
	    var country ="<%=country %>";
	    var search ="<%=search %>"; --%>
	    //alert(country +"=request="+project);
		//alert(search+"==search");
		
		if(!search==""){
			$(".haveproject").each(function(i){
				var countryAttr = $(this).attr("country");
				var projectAttr = $(this).attr("project");
				if(countryAttr.indexOf(search)!=-1||projectAttr.indexOf(search)!=-1){
					alert($("#"+$(this).attr("id")));
					$("#"+$(this).attr("id")).show();
				}else{
					$("#"+$(this).attr("id")).hide();
				}
			});
			 
		 }else{
			 if(country.trim()!=""||project.trim()!="" ){
				 $(".haveproject").each(function(i){
					var countryAttr = $(this).attr("country");
					var projectAttr = $(this).attr("project");
					if(countryAttr == country||projectAttr == project){
						$("#"+$(this).attr("id")).show();
					}else{
						$("#"+$(this).attr("id")).hide();
					}
				});
			 }
		 }
		
	});
	/* function mainQuery(){
		var country = $("#country").val().trim();
		var project = $("#project").val().trim();
		//alert("submit"+country+"---"+project);
		window.parent.setiframeSrc(country,project);
	} */
	
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
											<li class="parent megamenu"><a href="/kukoo/list/lists" class=""><div
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
					<ul class="cd-header-buttons" style="z-index: 999;">
						<li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
					</ul>
					<!-- cd-header-buttons -->
					<div id="cd-search" class="cd-search" style="background-color: #FFF;z-index: 99;">
						<form class="form-search" id="searchForm"
							action="/kukoo/list/lists" method="post">
							<input type="text" value="" name="search" id="search"
								placeholder="Search...">
						</form>
						<!-- <div class="row" style="margin-top: 20px;">
						  <div class="col-sm-4 mb-30"></div>
		                  <div class="col-sm-3 mb-30">
		                    <form method="post" action="#" class="form">
		                      <div class="select-styled w-100">
		                      	<select class="w-100" style="font-weight: 300">
		                      	    <option>请选择国家</option>
		                      	    <option>澳大利亚</option>
		                      	    <option>加拿大</option>
		                      	    <option>英国</option>
		                      	</select>
		                      </div>
		                    </form>
		                  </div>
		                  
		                  <div class="col-sm-3 mb-30">
		                  	<div class="w-100">
			                    <input type="text" name="q" placeholder="项目"
			                    		style="height:35px;
			                    		border: none;
			                    		border-top:none;
								    border-bottom: 1px solid #ccc;
								    border-radius: 0px;
								    background: transparent;
								    color: #323336;
								    font-size: 14px;
								    /* margin: 0; */
								    outline: medium none;
								    padding: 0px 20px 5px 1px;
								    margin-top:7px;
								    line-height: inherit";>
							</div>
		                  </div>
		                  <div class="col-sm-2 mb-30">
		                  	<button  type="submit" title="Start Search" style="height: 20px;width: 20px;margin-top:15px;">
		                       <span style="height: 20px;width: 20px;" aria-hidden="true" class="icon_search"></span>
		                     </button>
		                  </div>
		                </div> -->
		                
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
							<h1 class="page-title2">项目列表</h1>
						</div>

						<div class="col-md-4">
							<div class="breadcrumbs2 font-poppins">
								<a class="a-inv" href="/kukoo/homePage/">Kukoo</a><span
									class="slash-divider">/</span><span class="bread-current">项目列表</span>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- COTENT CONTAINER -->
			<div id="project" class="container p-140-cont over-hide" style="padding-top: 0px;">
				<!-- BOUNCE -->
				<div id="project1" country="加拿大" project="加拿大联邦EE快速通道" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<a href="/kukoo/homePage/detail">
								<img class="wow"
									src="<%=basePath %>elementy/images/list/Canada.png"
									alt="img">
							</a>
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>加拿大联邦EE快速通道</h4>
							</div>
							<p class="demo-anim-text">加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。
							获得永居后无工作要求，无加拿大境内居住地限制，目前采用EE快速通道筛选系统，审理快速，周期最快8个月登陆加拿大。
									  本项目具有办理周期短，对语言等条件要求高等特点；适合学历高，年龄轻，英语好的申请人。</p>
						</div>
					</div>
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
					<!-- FLASH -->
				</div>
				
				<div id="project2" country="加拿大" project="萨省提名技术移民SINP" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<img class="wow"
								src="<%=basePath %>elementy/images/list/Canada.png"
								alt="img">
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>萨省提名技术移民SINP</h4>
							</div>
							<p class="demo-anim-text">加拿大萨省省提名移民提名项目 Saskatchewan Immigrant Nominee Program ，简称
								SINP，加拿大SINP里有EE类别和OID，紧缺职业列表是一样的，不需要雇主提供offer就可以申请，但两个类别对语言要求不同，
								EE类别对主申请的雅思最低要求CLB7，OID对雅思最低要求CLB4。EE类别申请提名批准后向加拿大联邦申请永居签证，通过在线
								申请，一般联邦审理周期6个月内签发签证...</p>
						</div>
					</div>
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
				</div>
				<!-- PULSE -->
				<div id="project3" country="加拿大" project="新斯科舍省提名技术移民NSNP" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<img class="wow"
								src="<%=basePath %>elementy/images/list/Canada.png"
								alt="img">
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>新斯科舍省提名技术移民NSNP</h4>
							</div>
							<p class="demo-anim-text">加拿大新斯科舍省移民提名项目 Nova Scotia Nominee Program ，简称 NSNP，加拿大 NSNP 里有EE下有两类，
							A类需要有雇主offer，随时可以申请；另一类是B类，属于紧缺职业类别，不需要雇主提供offer就可以申请，但需要抢配额。中国申请人一般选择B类别
							的技术移民，只要具备NS省需要的技能和经验就有机会获得该省的提名，提名批准后向加拿大联邦申请永居签证...</p>
						</div>
					</div>
					<!-- SHAKE -->
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
				</div>
				<div id="project4" country="加拿大" project="魁北克省技术移民QSW" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<img class="wow"
								src="<%=basePath %>elementy/images/list/Canada.png"
								alt="img">
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>魁北克省技术移民QSW</h4>
							</div>
							<p class="demo-anim-text">魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQ Certificat
							 de sélection du Québec (CSQ – Québec selection certificate)-魁北克移民甄选。魁北克常规技术移民Regular selection program 
							 for skilled workers就是通过申请人自身的技术和才能移民魁北克，只要申请人有一定的法语、英文能力及学历...
							</p>
						</div>
					</div>
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
				</div>
				<div id="project5" country="加拿大" project="安省提名技术移民OINP" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<img class="wow"
								src="<%=basePath %>elementy/images/list/Canada.png"
								alt="img">
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>安省提名技术移民OINP</h4>
							</div>
							<p class="demo-anim-text">加拿大安大略省省提名项目 Ontario Immigrant Nominee Program，简称 OINP。安省省提名包含多个类别：商业类
							，雇主类，非雇主类，中国申请人一般申请非雇主类，其中EE HCP技能优先类别（Human Capital Priorities Stream）是比较常见的一个类别。 HCP
							类别不限制申请人职业（Regulated职业除外），安省从EE系统筛选总分数达到400分的申请人... </p>
						</div>
					</div>
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
				</div>
				<div id="project6" country="加拿大" project="新不伦瑞克省提名技术移民NBPNP" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<img class="wow"
								src="<%=basePath %>elementy/images/list/Canada.png"
								alt="img">
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>新不伦瑞克省提名技术移民NBPNP</h4>
							</div>
							<p class="demo-anim-text">新不伦瑞克省提名项目 New Brunswick Provincial Nominee Program （简称 NBPNP）包含多个类别:NBEE技术
							类别、NB雇主担保类别、NB家庭担保类别、NB企业家类别。其中NBPNP的EE类别只对当前在NB工作及法语是第一语言的申请人开放。NB省提名批准后向加拿
							大联邦申请永居签证，通过EE在线申请，一般联邦审理周期6个月内签发签证...</p>
						</div>
					</div>
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
				</div>
				
				<div id="project7" country="澳大利亚" project="189独立技术移民" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<img class="wow"
								src="<%=basePath %>elementy/images/list/Astralia.png"
								alt="img">
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>189独立技术移民</h4>
							</div>
							<p class="demo-anim-text">澳大利亚Skilled Independent visa (subclass 189) (Points-tested) stream，俗称独立技术移民，不需要
							州担保、雇主以及亲属担保就可以申请。申请189签证成功后可以无限期居住在澳洲，申请人及其家人可以在这里作为永久居民去工作、学习、加入医疗保险、
							担保亲属、申请澳大利亚国籍等...</p>
						</div>
					</div>
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
				</div>
				<div id="project8" country="澳大利亚" project="190州担保技术移民" class="haveproject">
					<div class="row mt-50 mb-60">
						<div class="col-md-3">
							<img class="wow"
								src="<%=basePath %>elementy/images/list/Astralia.png"
								alt="img">
						</div>
						<div class="col-md-9">
							<div class="h4-line">
								<h4>190州担保技术移民</h4>
							</div>
							<p class="demo-anim-text">澳大利亚Skilled Nominated visa (subclass 190)，俗称州担保技术移民，获得某个州的提名函可以
							在EOI打分中获得5分加分，所以适合打分只有55分的申请人。至于能否申请到州担保，取决于申请人评估的职业是否在州担保的职业清单上以及是
							否符合州政府担保的其他特定要求（雅思、工作年限、工作Offer等）。申请190签证成功后可以无限期居住在澳洲...</p>
						</div>
					</div>
					<div style="margin-top:-18px;border:0;border-top:1px solid #eee"></div>
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