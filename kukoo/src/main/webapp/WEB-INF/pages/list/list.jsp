<!-- 列表页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%> 
<link rel="stylesheet" href="<%=basePath %>css/jquery-ui/jquery-ui-1.10.4.custom.min.css" />
<link rel="stylesheet" href="<%=basePath %>css/list/list.css" />
<script src="<%=basePath %>javascript/jquery-ui/jquery-ui-1.10.4.custom.min.js"></script>

<!-- <link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css"> -->
  <%  
        //project  
        String project=request.getParameter("project");
        String country=request.getParameter("country");
     %>  
<script>
	$(function() {
	    $( "#slider-range-min" ).slider({
	      range: "min",
	      value: 37,
	      min: 1,
	      max: 700,
	      slide: function( event, ui ) {
	        $( "#amount" ).val( "$" + ui.value );
	      }
	    });
	    $( "#amount" ).val( "$" + $( "#slider-range-min" ).slider( "value" ) );
	    var project ="<%=project %>";
	    var country ="<%=country %>";
	    //alert(country+"==="+project);
	    $("#project1").hide();
		 $("#project2").hide();
		 $("#project3").hide();
		 $("#project4").hide();
		 //alert("submit"+country+"---"+project);
		 if(country.trim()=="" && project.trim()==""){
			 $("#project1").show();
			 $("#project2").show();
			 $("#project3").show();
			 $("#project4").show();
		 }
		 if(country.trim()=="加拿大" || country.trim()==""){
			 //alert(country);
			 if("加拿大联邦技术移民-快速通道项目".indexOf(project.trim())!=-1){
			    $("#project1").show();
			 }
			 if("加拿大萨省省提名移民提名项目".indexOf(project.trim())!=-1){
			    $("#project2").show();
			 }
			 if("魁北克技术移民项目".indexOf(project.trim())!=-1){
			    $("#project3").show();
			 }
			 if("加拿大新斯科舍省移民提名项目".indexOf(project.trim())!=-1){
			    $("#project4").show();
			 }
		 }
	  });
	 
	 //$('select').children('option').eq(1).attr("color", "#eee");
	 function submitBtn(){
		 var country = $("#country").val().trim();
		 var project = $("#project").val().trim();
		 $("#project1").hide();
		 $("#project2").hide();
		 $("#project3").hide();
		 $("#project4").hide();
		 //alert("submit"+country+"---"+project);
		 if(country=="" && project==""){
			 $("#project1").show();
			 $("#project2").show();
			 $("#project3").show();
			 $("#project4").show();
		 }
		 if(country=="加拿大" || country=="请选择国家"){
			 //alert(country);
			 if("加拿大联邦技术移民-快速通道项目".indexOf(project)!=-1){
			    $("#project1").show();
			 }
			 if("加拿大萨省省提名移民提名项目".indexOf(project)!=-1){
			    //alert('2');
			    $("#project2").show();
			 }
			 if("魁北克技术移民项目".indexOf(project)!=-1){
			    　　//alert('3');
			    $("#project3").show();
			 }
			 if("加拿大新斯科舍省移民提名项目".indexOf(project)!=-1){
			    　　//alert('4');
			    $("#project4").show();
			 }
		 }
		 
	 }
	 function resetBtn(){
		 $("#country ").val("请选择国家");
		 $("#project ").val("");
		 //alert("reset");
	 }
</script>

<html>
	<!-- <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid"> 
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#kukoo-navbar-collapse">
				<span class="sr-only">切换导航</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Kukoo</a>
		</div>
		<div class="collapse navbar-collapse" id="kukoo-navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">全部项目</a></li>
			    <li><a href="#">移民评估</a></li>
			    <li><a href="#">注册</a></li>
			    <li><a href="#">登录</a></li>
			</ul>
		</div>
		</div>
	</nav> -->
	<!-- <div style="margin-top:30px;border:0;border-top:1px solid #eee"></div> -->
	
	
    <div class="container" style="margin-top:30px;max-width: 1000px;min-height:650px;">
    		<div class="panel panel-default" style="border-radius: 0px;">
		    <div class="panel-body">
		        <div class="row">
					<div class="col-xs-12">
						<form class="form-horizontal" role="form">
							<div class="form-group" style="margin-left: 24px;">
								<div class="col-sm-2 font14_c6">国家项目</div>
								<div class="col-sm-4">
									<select id="country" class="form-control" style="border-radius: 0px;color: #999999">
										<option>请选择国家</option>
										<option style="color: #333;">加拿大</option>
										<option style="color: #333;">英国</option>
										<option style="color: #333;">澳大利亚</option>
									</select>
								</div>
								<div class="col-sm-4">
									<input  id="project" style="border-radius: 0px;" class="form-control" type="text"  value="" placeholder="该选择项目">
									<!-- <input style="border-radius: 0px;" class="form-control" type="text"  value="" placeholder="该选择地区"> -->
								</div>
								<label class="col-sm-2 control-label"></label>
							</div>
							<!-- <div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
							<div class="form-group" style="margin-left: 24px;">
								<div class="col-sm-2 font14_c6">项目</div>
								<div class="col-sm-4">
									<input style="border-radius: 0px;" class="form-control" type="text"  value="" placeholder="该选择项目">
								</div>
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-4"></div>
							</div> -->
							<div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
							<!-- <div class="form-group">
								<label class="col-sm-2 control-label">申请周期</label>
								<div class="col-sm-4">
									<input class="form-control" type="text"  value="该选择申请周期">
								</div>
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-4"></div>
							</div>
							<div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">费用范围</label>
								<div class="col-sm-8">
									 <div id="slider-range-min" style="margin-top:10px;"></div>
									<p>
									  <label for="amount"></label>
									  <input type="text" id="amount" style="border:0; color:#aaa; font-weight:bold;" disabled="disabled">
								 	</p>  
								</div>
								<label class="col-sm-2 control-label"></label>
							</div>
							<div class="form-group"  data-toggle="collapse" data-target="#more-query">
								<label class="col-sm-2 control-label">
									<span class="glyphicon glyphicon-filter" style="color:#66ccff;"></span>
									<small style="color: #66ccff;">更多筛选条件</small>
								</label>
								<label class="col-sm-10 control-label"></label>
							</div>
							
							<div id="more-query" class="collapse">
								<div class="form-group">
									<label class="col-sm-2 control-label">申请周期</label>
									<div class="col-sm-4">
										<input class="form-control" type="text"  value="该选择申请周期">
									</div>
									<label class="col-sm-2 control-label"></label>
									<div class="col-sm-4"></div>
								</div>
								<div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
									<div class="form-group">
									<label class="col-sm-2 control-label">国家地区</label>
									<div class="col-sm-4">
										<select class="form-control">
											<option>请选择国家</option>
											<option>选择A</option>
											<option>选择B</option>
											<option>选择C</option>
										</select>
									</div>
									<div class="col-sm-4">
										<input class="form-control" type="text"  value="该选择地区">
									</div>
									<label class="col-sm-2 control-label"></label>
								</div>
							</div> -->
							<div class="form-group" style="margin-left: 24px;">
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-2">
									<button type="button" onclick="resetBtn()" style="width:120px;height:28px;background-color:#16a2d3;color: #FFF" data-toggle="button">重置</button>
								</div>
								<div class="col-sm-2">
									<button type="button" onclick="submitBtn()" style="width:120px;height:28px;background-color:#16a2d3;color: #FFF" data-toggle="button">搜索</button>
								</div>
								<div class="col-sm-6"></div>
							</div>
							<!-- <div class="form-group has-success">
								<label class="col-sm-2 control-label" for="inputSuccess">
									输入成功
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputSuccess">
								</div>
							</div>
							<div class="form-group has-warning">
								<label class="col-sm-2 control-label" for="inputWarning">
									输入警告
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputWarning">
								</div>
							</div>
							<div class="form-group has-error">
								<label class="col-sm-2 control-label" for="inputError">
									输入错误
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputError">
								</div>
							</div> -->
						</form>
					</div>
				</div>
		    </div>
		</div>
		
         <div class="panel panel-default" style="border-radius: 0px;margin-top: 32px;">
		    <div class="panel-body p-body">
		        <div class="row">
					<div class="col-xs-12">
						<div class="row">
							<!-- <ol class="breadcrumb p-body">
							    <li><a href="#">Home</a></li>
							    <li><a href="#">一级</a></li>
							    <li class="active">二级</li>
							</ol> -->
							<ul class="list-group" style="margin-top: -15px;margin-bottom: -15px;">
							    <li style="display:none" id="project1" class="list-group-item p-body">
								    	<div class="row">
										<div class="col-xs-2">
											<a href="/kukoo/detail/showDetail/">
									            <img style="margin-left: 24px;" class="img-circle" src="<%=basePath %>img/list/Canada.png" alt="">
									        </a>
										</div>
										<div class="col-xs-10" style="max-height: 92px;">
											<div style="margin-left: -44px;">
												<a href="/kukoo/detail/showDetail/"><span class="font14_c3">加拿大联邦技术移民-快速通道项目</span></a>
											    <p class="font12_c6" style="text-indent:25px;margin:10px 0;">加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无......</p>
											</div>
										</div>
										<!-- <div class="col-xs-1">
										<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
										</div>
										<div class="col-xs-1">
										<button type="button" class="btn btn-primary" data-toggle="button"> 标签2</button>
										</div> -->
									</div>
							    </li>
							    <li style="display:none" id="project2" class="list-group-item p-body">
								    	<div class="row">
										<div class="col-xs-2">
											<a href="/kukoo/detail/showDetail_Canada_SINP/">
									            <img style="margin-left: 24px;" class="img-circle" src="<%=basePath %>img/list/Canada.png" alt="">
									        </a>
										</div>
										<div class="col-xs-10" style="max-height: 92px;">
											<div style="margin-left: -44px;">
												<a href="/kukoo/detail/showDetail_Canada_SINP/"><span class="font14_c3">加拿大萨省省提名移民提名项目</span></a>
											    <p class="font12_c6" style="text-indent:25px;margin:10px 0;">加拿大萨省省提名移民提名项目 Saskatchewan Immigrant Nominee Program ，简称 SINP，加拿大SINP里有EE类别和OID，紧缺职业......</p>
											</div>
										</div>
										<!-- <div class="col-xs-1">
										<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
										</div>
										<div class="col-xs-1">
										<button type="button" class="btn btn-primary" data-toggle="button"> 标签2</button>
										</div> -->
									</div>
							    </li>
							    <li style="display:none" id="project3" class="list-group-item p-body">
								    	<div class="row">
										<div class="col-xs-2">
											<a href="/kukoo/detail/showDetail_Canada_QSW/">
									            <img style="margin-left: 24px;" class="img-circle" src="<%=basePath %>img/list/Canada.png"
									                 alt="">
									        </a>
										</div>
										<div class="col-xs-10" style="max-height: 92px;">
											<div style="margin-left: -44px;">
												<a href="/kukoo/detail/showDetail_Canada_QSW/"><span class="font14_c3">魁北克技术移民项目</span></a>
											    <p class="font12_c6" style="text-indent:25px;margin:10px 0;">魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQ Certificat de sélection du......</p>
											</div>
										</div>
										<!-- <div class="col-xs-1">
											<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
										</div>
										<div class="col-xs-1">
											<button type="button" class="btn btn-primary" data-toggle="button"> 标签2</button>
										</div> -->
									</div>
							    </li>
							    <li style="display:none" id="project4" class="list-group-item p-body">
								    	<div class="row">
										<div class="col-xs-2">
											<a href="/kukoo/detail/showDetail_Canada_NS">
									            <img style="margin-left: 24px;" class="img-circle" src="<%=basePath %>img/list/Canada.png"
									                 alt="">
									        </a>
										</div>
										<div class="col-xs-10" style="max-height: 92px;">
											<div style="margin-left: -44px;">
												<a href="/kukoo/detail/showDetail_Canada_NS"><span class="font14_c3">加拿大新斯科舍省移民提名项目</span></a>
											    <p class="font12_c6" style="text-indent:25px;margin:10px 0;">加拿大新斯科舍省移民提名项目 Nova Scotia Nominee Program ，简称 NSNP，加拿大 NSNP 里有EE下有两类，A类需要有雇主offer......</p>
											</div>
										</div>
										<!-- <div class="col-xs-1">
										<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
										</div>
										<div class="col-xs-1">
										<button type="button" class="btn btn-primary" data-toggle="button"> 标签2</button>
										</div> -->
									</div>
							    </li>
							   
							    
							    <!-- <li class="list-group-item">
							        <span class="badge">新</span>
							        折扣优惠
							    </li> -->
							</ul>
							<!-- <div style="text-align: center;">
								<ul class=" pagination pagination-sm">
								    <li><a href="#">&laquo;</a></li>&nbsp;
								    <li><a href="#">1</a></li>&nbsp;
								    <li><a href="#">2</a></li>&nbsp;
								    <li><a href="#">3</a></li>&nbsp;
								    <li><a href="#">4</a></li>&nbsp;
								    <li><a href="#">...</a></li>&nbsp;
								    <li><a href="#">&raquo;</a></li>&nbsp;
								</ul>
							</div>
							
							<div class="panel panel-default">
								    <div class="panel-body p-body">
								    		<h3 class="panel-title">
								            热门项目推荐
								        </h3>
								        加拿大项目 | 加拿大项目 | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目 
								    </div>
							</div> -->
							
							<!-- <div class="copyright">
								<div class="container">
									<div class="row">
										<div class="col-sm-12">
											<span>Copyright © <a href="http://www.youzhan.org">优站精选</a></span>
											| <span><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备11008151号</a></span>
										</div>
									</div>
								</div>
							</div> -->
						</div>
					</div>
				</div>
		    </div>
		</div>
   </div><!--/.fluid-container-->
   
</html>