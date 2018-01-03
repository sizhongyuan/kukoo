<!-- 注册页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html>
<br/>
<br/>
<br/>
	<!-- 注册 start-->
	<div class="container" id="regist">
	    <div class="row" >
	        <div class="col-md-offset-3 col-md-6">
	            <form id="registForm" class="form-horizontal" action="/kukoo/user/SignUp" method="post">
	            	<span class="heading">用户注册</span>
	            		<div class="form-group">
		            		<label for="phone" class="col-sm-3 control-label">手机号:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="手机号">
		                </div>
		                <div class="hidden text-center" id="mobileMsg"><span id="mobileSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
	                <div class="form-group">
		            		<label for="password" class="col-sm-3 control-label">密码:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="password" name="password" placeholder="密码">
		                </div>
		                <div class="hidden text-center" id="pwdMsg"><span id="pwdSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
		             <div class="form-group">
		            		<label for="conpsw" class="col-sm-3 control-label">再输一次:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="conpsw" disabled placeholder="密码">
		                </div>
		                <div class="hidden text-center" id="pwdAgMsg"><span id="pwdAgSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
		             <div class="form-group">
		            		<label for="userName" class="col-sm-3 control-label">用户名:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="userName" name="userName" placeholder="用户名">
		                </div>
		                <div class="hidden text-center" id="userNameMsg"><span id="userNameSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<div class="checkbox">
								<label>
									<input id="alreadyRead" type="checkbox">我已阅读并接受<a href="#">注册条款</a>
								</label>
							</div>
							<div class="hidden text-center" id="checkMsg"><span id="checkSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
						</div>
					</div>
	                <div class="form-group">
	                		<button type="button" id="btn_regist" class="btn btn-default">立即注册</button>
	                </div>
	            </form>
	        </div>
	    </div>
	</div>
	<!-- 注册 end-->
	<script>  
		/*注册按钮事件 start*/
		$("#btn_regist").click(function(){
			/* 手机号 */
			if($("#mobileMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#mobile").val() == ""){
				$("#mobileSpan").text("请填写手机号");
				$("#mobileMsg").removeClass("hidden");
				return false;
			}else{
				$("#mobileMsg").addClass("hidden");
			}
			/* 密码 */
			if($("#pwdMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#password").val() == ""){
				$("#pwdSpan").text("请填写手机号");
				$("#pwdMsg").removeClass("hidden");
				return false;
			}else{
				$("#pwdMsg").addClass("hidden");
			}
			/* 再次密码 */
			if($("#pwdAgMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#password").val() == ""){
				$("#pwdAgSpan").text("请填写手机号");
				$("#pwdAgMsg").removeClass("hidden");
				return false;
			}else{
				$("#pwdAgMsg").addClass("hidden");
			}
			/* 用户名 */
			if($("#userNameMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#userName").val() == ""){
				$("#userNameSpan").text("请填写手机号");
				$("#userNameMsg").removeClass("hidden");
				return false;
			}else{
				$("#userNameMsg").addClass("hidden");
			}
			/* 我已阅读条款 */
			if($("#checkMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#alreadyRead").prop("checked") == false){
				$("#checkSpan").text("请勾选");
				$("#checkMsg").removeClass("hidden");
				return false;
			}else{
				$("#checkMsg").addClass("hidden");
			}
			/* 提交注册 */
			$("#registForm").ajaxSubmit(function (data) {
				parent.changeframsrc("/kukoo/user/showSignIn");
        		});
		})
		/*注册按钮事件 end*/
		/* 手机号是否注册校验 start*/
      	$("#mobile").change(function(){
      		var checkObject = new Object();
      		checkObject.mobile = $("#mobile").val();
      		var checkJson = JSON.stringify(checkObject); 
      		var url = "/kukoo/user/validateSignUp";
      		$.post(url,
      			  {"checkObj":checkJson},
      			  function(e){
      				  e=JSON.parse(e);
      				  if(e.mobileInUse){
      					  $("#mobileSpan").text("手机号已经注册");
      					  $("#mobileMsg").removeClass("hidden");
      					  
      				  }else{
      					  $("#mobileMsg").addClass("hidden");
      				  }
      			  });
      	});
		/* 手机号是否注册校验 end*/
		/* 密码框事件 start*/
		$("#password").change(function(){
			var password = $("#password").val();
			if(password.length < 8){
				$("#pwdMsg").removeClass("hidden");
				$("#pwdSpan").text("密码至少为8位");
			}else{
				$("#pwdMsg").addClass("hidden");
				$("#conpsw").prop("disabled",false);
			}
		});
		/* 密码框事件 end*/
		/* 校验两次密码是否一样 start*/
		$("#conpsw").change(function(){
			var password = $("#password").val();
			var conpsw = $("#conpsw").val();
			if(password !== conpsw){
				$("#pwdAgMsg").removeClass("hidden");
				$("#pwdAgSpan").text("两次密码输入不一致");
			}else{
				$("#pwdAgMsg").addClass("hidden");
			}
		});
		/* 校验两次密码是否一样 end*/
        </script>  
</html>
