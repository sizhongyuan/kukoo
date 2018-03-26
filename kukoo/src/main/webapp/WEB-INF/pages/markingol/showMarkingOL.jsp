<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println(basePath+"....."+path);

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html id="markingOlhtml">
  <head>
  	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="<%=basePath %>javascript/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
	<!-- 网站公共部分样式 -->
	<link rel="stylesheet" href="<%=basePath %>css/base/base.css" />
	<link rel="stylesheet" href="<%=basePath %>css/markingol/showMarkingOL.css" />
	
	<!-- 引用JS -->
	<script src="<%=basePath %>javascript/jquery/1.12.4/jquery.min.js"></script>
	<script src="<%=basePath %>javascript/jquery/cookie/jquery.cookie.js"></script>
	<script src="<%=basePath %>javascript/jquery/form/jquery.form.js"></script>
	<script src="<%=basePath %>javascript/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	
    
    <style>
    
    /* body{ text-align:center}  
	#markingOL{margin:0 auto;width:70%}*/
    </style>
	
	
	<script type="text/javascript">
		$(document).ready(function(){
			//document.getElementById("question2").style.display="none";
			//document.getElementById("question3").style.display="none";
			//document.getElementById("question4").style.display="none";
			//document.getElementById("question5").style.display="none";
			//document.getElementById("question6").style.display="none";
			//document.getElementById("question7").style.display="none";
			//document.getElementById("question8").style.display="none";
			//document.getElementById("question9").style.display="none";
			//document.getElementById("question10").style.display="none";
			//document.getElementById("question11").style.display="none";
			//document.getElementById("question12").style.display="none";
			document.getElementById("sheet2").style.display="none";
			document.getElementById("result").style.display="none";
		});
		//点击下一页
		function changeNextPage(){
			var checked1 = $('input[name="answer_q-1"]:checked').val();
			var checked2 = $('input[name="answer_q-2"]:checked').val();
			var checked3 = $('input[name="answer_q-3"]:checked').val();
			var checked4 = $('input[name="answer_q-4"]:checked').val();
			if(checked1!=undefined&&checked2!=undefined&&checked3!=undefined&&checked4!=undefined){
				document.getElementById("sheet1").style.display="none";
				document.getElementById("sheet2").style.display="block";
				document.getElementById("nextPage").style.display="none";
				document.getElementById("warning").style.display="none";
				document.getElementById("toSubmit").style.display="inline-block";
				document.getElementById("previousPage").style.display="inline-block";
				
				$(function(){location.href="#markingOlhtml";});
			}else{
				//document.getElementById("warning").style.display="block";
				if(checked1==undefined){
					$(function(){location.href="#markingOlhtml";});
					document.getElementById("warning1").style.display="block";
				}else if(checked2==undefined){
					$(function(){location.href="#herf1";});
					document.getElementById("warning1").style.display="none";
					document.getElementById("warning2").style.display="block";
				}else if(checked3==undefined){
					$(function(){location.href="#herf2";});
					document.getElementById("warning2").style.display="none";
					document.getElementById("warning1").style.display="none";
					document.getElementById("warning3").style.display="block";
				}else if(checked4==undefined){
					$(function(){location.href="#herf3";});
					document.getElementById("warning1").style.display="none";
					document.getElementById("warning2").style.display="none";
					document.getElementById("warning3").style.display="none";
					document.getElementById("warning4").style.display="block";
				}
			}
			
		}
		//点击上一页
		function changeUpPage(){
			document.getElementById("warning1").style.display="none";
			document.getElementById("warning2").style.display="none";
			document.getElementById("warning3").style.display="none";
			document.getElementById("warning4").style.display="none";
			document.getElementById("sheet2").style.display="none";
			document.getElementById("sheet1").style.display="block";
			document.getElementById("nextPage").style.display="inline-block";
			document.getElementById("previousPage").style.display="none";
			document.getElementById("toSubmit").style.display="none";
			$(function(){location.href="#markingOlhtml";});
			//document.documentElement.scrollTop=0;
			//window.pageYOffset=0;
			//document.body.scrollTop=0
		}
		//题目页变更
		function changeQuestion(obj){
		
			document.getElementById("question1").style.display="none";
			document.getElementById("question2").style.display="none";
			document.getElementById("question3").style.display="none";
			document.getElementById("question4").style.display="none";
			document.getElementById("question5").style.display="none";
			document.getElementById("question6").style.display="none";
			document.getElementById("question7").style.display="none";
			document.getElementById("question8").style.display="none";
			document.getElementById("question9").style.display="none";
			document.getElementById("question10").style.display="none";
			document.getElementById("question11").style.display="none";
			document.getElementById("question12").style.display="none";
			document.getElementById(obj).style.display="block";
			var question1 = document.getElementsByTagName("question1");
		}
		
		//提交答题
		function completeQuestion(){
			var federalscore = 0;
			var saskatchewanscore = 0;
			var scotiascore = 0;
			var quebecscore = 0;
			var checked1 = $('input[name="answer_q-1"]:checked').val();
			var checked2 = $('input[name="answer_q-2"]:checked').val();
			var checked3 = $('input[name="answer_q-3"]:checked').val();
			var checked4 = $('input[name="answer_q-4"]:checked').val();
			//var checked5 = $('input[name="question5"]:checked').val();
			var checked7 = $('input[name="answer_q-7"]:checked').val();
			var checked8 = $('input[name="answer_q-8"]:checked').val();
			var checked9 = $('input[name="answer_q-9"]:checked').val();
			var checked10 = $('input[name="answer_q-10"]:checked').val();
			var checked11 = $('input[name="answer_q-11"]:checked').val();
			var checked12 = $('input[name="answer_q-12"]:checked').val();
			
			if(checked7==undefined){
				$(function(){location.href="#markingOlhtml";});
				document.getElementById("warning7").style.display="block";
				//document.getElementById("warning").style.display="block";
				return;
			}else if(checked8==undefined){
				$(function(){location.href="#herf7";});
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="block";
				return;
			}else if(checked9==undefined){
				$(function(){location.href="#herf8";});
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="block";
				return;
			}else if(checked10==undefined){
				$(function(){location.href="#herf9";});
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="none";
				document.getElementById("warning10").style.display="block";
				return;
			}else if(checked11==undefined){
				$(function(){location.href="#herf10";});
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="none";
				document.getElementById("warning10").style.display="none";
				document.getElementById("warning11").style.display="block";
				return;
			}else if(checked12==undefined){
				$(function(){location.href="#herf11";});
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="none";
				document.getElementById("warning10").style.display="none";
				document.getElementById("warning11").style.display="none";
				document.getElementById("warning12").style.display="block";
				return;
			}
			
			if("1"==checked1){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked1){
				federalscore += 12;
				saskatchewanscore += 12;
				scotiascore += 12;
				quebecscore += 16;
			}else if("3"==checked1){
				federalscore += 10;
				saskatchewanscore += 10;
				scotiascore += 10;
				quebecscore += 10;
			}else if("4"==checked1){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}
			if("1"==checked2){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked2){
				federalscore += 21;
				saskatchewanscore += 15;
				scotiascore += 21;
				quebecscore += 8;
			}else if("3"==checked2){
				federalscore += 21;
				saskatchewanscore += 20;
				scotiascore += 21;
				quebecscore += 10;
			}else if("4"==checked2){
				federalscore += 22;
				saskatchewanscore += 20;
				scotiascore += 22;
				quebecscore += 10;
			}else if("5"==checked2){
				federalscore += 23;
				saskatchewanscore += 23;
				scotiascore += 23;
				quebecscore += 12;
			}else if("6"==checked2){
				federalscore += 25;
				saskatchewanscore += 23;
				scotiascore += 25;
				quebecscore += 14;
			}
			
			if("1"==checked4){
				federalscore += 9;
				saskatchewanscore += 2;
				scotiascore += 9;
				quebecscore += 4;
			}else if("2"==checked4){
				federalscore += 11;
				saskatchewanscore += 4;
				scotiascore += 11;
				quebecscore += 6;
			}else if("3"==checked4){
				federalscore += 11;
				saskatchewanscore += 6;
				scotiascore += 11;
				quebecscore += 6;
			}else if("4"==checked4){
				federalscore += 13;
				saskatchewanscore += 8;
				scotiascore += 13;
				quebecscore += 8;
			}else if("5"==checked4){
				federalscore += 13;
				saskatchewanscore += 10;
				scotiascore += 13;
				quebecscore += 8;
			}else if("6"==checked4){
				federalscore += 15;
				saskatchewanscore += 10;
				scotiascore += 15;
				quebecscore += 8;
			}else if("7"==checked4){
				federalscore += 0;
				saskatchewanscore += 12;
				scotiascore += 0;
				quebecscore += 0;
			}
			if("1"==checked7){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked7){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 4;
			}else if("3"==checked7){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 8;
			}
			if("1"==checked8){
				federalscore += 0;
				saskatchewanscore += 5;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked8){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 5;
				quebecscore += 0;
			}else if("3"==checked8){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 5;
			}else if("4"==checked8){
				federalscore += 5;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("5"==checked8){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}
			
			if("1"==checked9){
				federalscore += 0;
				saskatchewanscore += 20;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked9){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 5;
				quebecscore += 0;
			}else if("3"==checked9){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 3;
			}
			if("1"==checked10){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked10){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 8;
			}
			if("1"==checked11){
				federalscore += 0;
				saskatchewanscore += 14;
				scotiascore += 0;
				quebecscore += 4;
			}else if("2"==checked11){
				federalscore += 0;
				saskatchewanscore += 16;
				scotiascore += 0;
				quebecscore += 4;
			}else if("3"==checked11){
				federalscore += 16;
				saskatchewanscore += 18;
				scotiascore += 16;
				quebecscore += 4;
			}else if("4"==checked11){
				federalscore += 20;
				saskatchewanscore += 20;
				scotiascore += 20;
				quebecscore += 4;
			}else if("5"==checked11){
				federalscore += 24;
				saskatchewanscore += 20;
				scotiascore += 24;
				quebecscore += 5;
			}
			
			if("1"==checked12){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 12;
			}else if("2"==checked12){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 14;
			}else if("3"==checked12){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 16;
			}
			$("#federalscore").text("联邦："+federalscore+"分");
			$("#saskatchewanscore").text("萨省："+saskatchewanscore+"分");
			$("#scotiascore").text("新斯科特："+scotiascore+"分");
			$("#quebecscore").text("魁北克："+quebecscore+"分");
			//document.getElementById("question12").style.display="none";
			document.getElementById("result").style.display="block";
			document.getElementById("sheet2").style.display="none";
			document.getElementById("nextPage").style.display="none";
			document.getElementById("previousPage").style.display="none";
			document.getElementById("toSubmit").style.display="none";
			document.getElementById("warning").style.display="none";
			/* 
			var checked1 = "";
			var question2 = document.getElementsByTagName("question2");
			var checked2 = "";
			var question3 = document.getElementsByTagName("question3");
			var checked3 = "";
			var question4 = document.getElementsByTagName("question4");
			var checked4 = "";
			//var question5 = document.getElementsByTagName("question5");
			//var checked5 = "";
			var question7 = document.getElementsByTagName("question7");
			var checked7 = "";
			var question8 = document.getElementsByTagName("question8");
			var checked8 = "";
			var question9 = document.getElementsByTagName("question9");
			var checked9 = "";
			var question10 = document.getElementsByTagName("question10");
			var checked10 = "";
			var question11 = document.getElementsByTagName("question11");
			var checked11 = "";
			var question12 = document.getElementsByTagName("question12");
			var checked12 = "";
			
		    for(var i=0; i<question1.length; i ++){
		        if(question1[i].checked){
		            checked1 = question1[i].value;
		            alert(checked1);
		        }
		    }
		    for(var i=0; i<question2.length; i ++){
		        if(question2[i].checked){
		            checked2 = question2[i].value;
		        }
		    }
		    for(var i=0; i<question3.length; i ++){
		        if(question3[i].checked){
		            checked3 = question3[i].value;
		        }
		    }
		    for(var i=0; i<question4.length; i ++){
		        if(question4[i].checked){
		            checked4 = question4[i].value;
		        }
		    }
		    for(var i=0; i<question7.length; i ++){
		        if(question7[i].checked){
		            checked7 = question7[i].value;
		        }
		    }
		    for(var i=0; i<question8.length; i ++){
		        if(question8[i].checked){
		            checked8 = question8[i].value;
		        }
		    }
		    for(var i=0; i<question9.length; i ++){
		        if(question9[i].checked){
		            checked9 = question9[i].value;
		        }
		    }
		    for(var i=0; i<question10.length; i ++){
		        if(question10[i].checked){
		            checked10 = question10[i].value;
		        }
		    }
		    for(var i=0; i<question11.length; i ++){
		        if(question11[i].checked){
		            checked11 = question11[i].value;
		        }
		    }
		    for(var i=0; i<question12.length; i ++){
		        if(question12[i].checked){
		            checked12 = question12[i].value;
		        }
		    } */
			/* $.ajax({
				url:urlPath+"/markingOLController/addMarkingOL",
				type: "POST",
				data:{checked1:checked1,
						checked2:checked2,
						checked3:checked3,
						checked4:checked4,
						checked7:checked7,
						checked8:checked8,
						checked9:checked9,
						checked10:checked10,
						checked11:checked11,
						checked12:checked12
						
						
						},
				dataType:"json",
				success: function (result) {
				
				}
			}); */
		
		}
	function aaas(){
		var checked1 = $('input[name="answer_q-1"]:checked').val();
		alert(checked1);
	}
	</script>
  </head>
  
  <body  style="overflow: hidden;">

	<div id="markingOl" class="container" style="margin-top:20px;overflow:hidden;">
		<div class="panel panel-default">
			<div class="panel-body">
				<h1 class="survey_title" style="display: block;"> 
					<div class="inner"> 
					<div class="title_content">
					<p>布谷移民在线评估问卷</p>
					</div> 
					</div> 
				</h1>
		
				<div class="survey_container" id="sheet1">
					<div class="survey_page">
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question1">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >1</span>.</span>您的年龄？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-1" value="1">
									 <label for="option_q-1-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">低于20岁</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-2" value="2"> 
									<label for="option_q-1-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>20到35岁之间</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-3" value="3"> 
									<label for="option_q-1-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>36到40岁</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-4" value="4"> 
									<label for="option_q-1-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>40岁以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning1" style="color: #f00;display: none;">此题为必填项！</div>
							<div  id="herf1">
					  			Tips：建议客户考虑去加拿大读书或者先选择可以移民的专业在国内读书。
					  		</div>
					  		<div >
					  			Tips：由于技术移民倾向年轻化，超过35岁开始减分，建议年龄高于40岁的申请人考虑其他移民项目。
					  		</div>
						</div>
					</div>
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					<!-- 2 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question2" style="display: block;">
								<div>
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >2</span>.</span>您的学历？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-1" value="1">
									 <label for="option_q-2-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >低于大专</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-2" value="2"> 
									<label for="option_q-2-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>大专</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-3" value="3"> 
									<label for="option_q-2-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>本科</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-4" value="4"> 
									<label for="option_q-2-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>双本科</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-5" value="5"> 
									<label for="option_q-2-5"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>研究生</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-6" value="6"> 
									<label for="option_q-2-6"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>博士及以上</p>
										</div>
										<div  id="herf2"></div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							
							<div id="warning2" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					<!-- 3 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question3" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >3</span>.</span>您高等教育的专业？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-3" id="option_q-3-1" value="1">
									 <label for="option_q-3-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >12分专业</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-3" id="option_q-3-2" value="2"> 
									<label for="option_q-3-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>9分专业</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-3" id="option_q-3-3" value="3"> 
									<label for="option_q-3-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>其他专业</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							<div id="warning3" style="color: #f00;display: none;">此题为必填项！</div>
							<div id="herf3">
	  							Tips：本题只影响魁北克省申请。如果不考虑魁北克省，可以跳过。
	  						</div>
						</div>
					</div>
					
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					<!-- 4 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question4" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >4</span>.</span>您的工作年限？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-1" value="1">
									 <label for="option_q-4-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >1年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-2" value="2"> 
									<label for="option_q-4-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>2年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-3" value="3"> 
									<label for="option_q-4-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>3年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-4" value="4"> 
									<label for="option_q-4-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>4年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-5" value="5"> 
									<label for="option_q-4-5"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>5年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-6" value="6"> 
									<label for="option_q-4-6"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>6年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-7" value="7"> 
									<label for="option_q-4-7"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>7年及以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							<div id="warning4" style="color: #f00;display: none;">此题为必填项！</div>
							<div id="herf4">
							</div>
						</div>
					</div>
					
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					<!-- 5 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question5" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >5</span>.</span>您的工作职位？</p>
									</h3>
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div >
	  						<span>Tips：只针对萨省申请，使用不需要认证的职位，如果不在列表里，提示需要先做职业认证再申请萨省。</span>
	  						</div>
						</div>
					</div>
					
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					<!-- 6 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question6" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >6</span>.</span>婚姻状况？</p>
									</h3>
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div >
	  						<span>Tips：如有配偶，请考虑配偶也许评分更高更适合做主申请人。</span>
	  						</div>
						</div>
					</div>
					
					
					
					
					</div>
				</div>
				<div class="survey_page" id="sheet2">
					<!-- 7 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question7" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >7</span>.</span>子女？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-7" id="option_q-7-1" value="1">
									 <label for="option_q-7-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >0</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-7" id="option_q-7-2" value="2"> 
									<label for="option_q-7-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>1</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-7" id="option_q-7-3" value="3"> 
									<label for="option_q-7-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>2个以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							<div id="warning7" style="color: #f00;display: none;">此题为必填项！</div>
							<div id="herf7">
	  							Tips：本题只对魁省申请有影响。
	  						</div>
						</div>
					</div>
					
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					<!-- 8 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question8">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >8</span>.</span>是否有在加拿大工作或学习超过一年以上？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-1" value="1">
									 <label for="option_q-8-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">有在萨省工作或者学习一年以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-2" value="2"> 
									<label for="option_q-8-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>有在新斯科舍工作或者学习一年以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-3" value="3"> 
									<label for="option_q-8-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>有在魁北克工作或者学习6个月以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-4" value="4"> 
									<label for="option_q-8-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>有在其他加拿大地区工作学习一年以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-5" value="5"> 
									<label for="option_q-8-5"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>没有在加拿大任何地区工作学习一年以上</p>
										</div>
										<div id="herf8"></div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning8" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					
					<!-- 9 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question9">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >9</span>.</span>是否有加拿大亲属？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-9" id="option_q-9-1" value="1">
									 <label for="option_q-9-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">有</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-9" id="option_q-9-2" value="2"> 
									<label for="option_q-9-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>没有</p>
										</div>
										<div id="herf9"></div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning9" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					<!-- 10 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question10">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >10</span>.</span>现在或未来是否有魁北克省的工作offer？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-10" id="option_q-10-1" value="1">
									 <label for="option_q-10-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">有</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-10" id="option_q-10-2" value="2"> 
									<label for="option_q-10-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>没有</p>
										</div>
										<div id="herf10"></div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning10" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					
					<!-- 11 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question11">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >11</span>.</span>英语成绩<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-1" value="1">
									 <label for="option_q-11-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">雅思5</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-2" value="2"> 
									<label for="option_q-11-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>雅思5.5</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-3" value="3"> 
									<label for="option_q-11-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>雅思6</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-4" value="4"> 
									<label for="option_q-11-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>雅思6.5</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-5" value="5"> 
									<label for="option_q-11-5"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>雅思7以上</p>
										</div>
										<div id="herf11"></div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning11" style="color: #f00;display: none;">此题为必填项！</div>
							
						</div>
					</div>
					<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
					
					<!-- 12 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question12">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >12</span>.</span>法语成绩<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-1" value="1">
									 <label for="option_q-12-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">B2</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-2" value="2"> 
									<label for="option_q-12-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>C1</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-3" value="3"> 
									<label for="option_q-12-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>C2</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-4" value="4"> 
									<label for="option_q-12-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>无法语成绩</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning12" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					
					
				
				</div>
				
				<div class="survey_page" id="result">
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title"  style="display: block;">
								<div>
									<h3 class="title_text" >
										<p style="margin:0px;">评估结果：</p>
									</h3>
								</div>
							</div>
							<div class="description">
								<div class="description_text"></div>
							</div>
							<div class="inputs">
								<div class="option_item" style="width: 100%;" >
									 <label > 
										<div class="option_text" >
											<p id="federalscore">0</p>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  >
									<label > 
										<div class="option_text" >
											<p id="saskatchewanscore">1</p>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  >
									<label > 
										<div class="option_text" >
											<p id="scotiascore">1</p>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  >
									<label > 
										<div class="option_text" >
											<p id="quebecscore">1</p>
										</div>
									</label>
								</div>
							</div>
						</div>
					</div>
					
				</div>	
				<!-- <div class="survey_control" id="warning" style="display: none;">
					<p style="color: #f00;">至少有一项没有选择！</p>
				</div> -->
				<div class="survey_control">
					<div class="inner">
						<a href="javascript:;" title="上一页" id="previousPage" aria-label="上一页" role="button" 
							class="survey_btn survey_prevpage" onclick="changeUpPage()" style="display: none;">上一页</a> 
						<a href="javascript:;" title="提交" id="toSubmit" aria-label="提交" role="button"
							class="survey_btn survey_submit" onclick="completeQuestion()"  style="display: none;">提交</a> 
						<a href="javascript:;" title="下一页" id="nextPage" aria-label="下一页" role="button"
							class="survey_btn survey_nextpage" onclick="changeNextPage()" style="display: inline-block;">下一页</a>
					</div>
				</div>

			</div> 
		</div>
		
		 
		<!-- <div class="panel panel panel-primary" id="question1" style="border-radius:0px;" >
			<dl>
				<dt><h3 class="panel-title" style="color: #333;font-size: 100%;">1.您的年龄</h3></dt>
				<dd><input type="radio" name="question1" id="question1Option1" value="1" > 低于20岁</dd>
				<dd><input type="radio" name="question1" id="question1Option2" value="2" > 20到35岁之间</dd>
				<dd><input type="radio" name="question1" id="question1Option3" value="3" > 36到40岁</dd>
				<dd><input type="radio" name="question1" id="question1Option4" value="4" > 40岁以上</dd>
			</dl>
		
		
	  		
	  		<div  id="old20">
	  			Tips：建议客户考虑去加拿大读书或者先选择可以移民的专业在国内读书。
	  		</div>
	  		<div  id="old40">
	  			Tips：由于技术移民倾向年轻化，超过35岁开始减分，建议年龄高于40岁的申请人考虑其他移民项目。
	  		</div>
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous disabled"><a href="" onclick=""><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question2')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div> -->
		
		<!-- <div class="panel panel panel-primary" id="question2" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">2.您的学历</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option1" value="1" > 低于大专
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option2" value="2" > 大专
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option3" value="3" > 本科
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option4" value="4" > 双本科
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option5" value="5" > 研究生
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option6" value="6" > 博士及以上
    			</label>
	  		</div>
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question1')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question3')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div> -->
		
		<!-- <div class="panel panel panel-primary" id="question3" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">3.您高等教育的专业</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question3" id="question3Option1" value="1" > 12分专业
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question3" id="question3Option2" value="2" > 9分专业
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question3" id="question3Option3" value="3" > 其他专业
    			</label>
    			
	  		</div>
	  		<div >
	  			Tips：本题只影响魁北克省申请。如果不考虑魁北克省，可以跳过。
	  		</div>
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question2')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question4')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
	
		<div class="panel panel panel-primary" id="question4" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">4.您的工作年限</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option1" value="1" > 1年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option2" value="2" > 2年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option3" value="3" > 3年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option4" value="4" > 4年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option5" value="5" > 5年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option6" value="6" > 6年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option7" value="7" > 7年＋
    			</label>
	  		</div>
	  		
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question3')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question5')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
		
		<div class="panel panel panel-primary" id="question5" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">5.您的工作职位</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question5" id="question4Option1" value="option1" > 1年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question5" id="question4Option2" value="option1" > 2年
    			</label>
	  		</div>
	  		<div >
	  			<span>Tips：只针对萨省申请，使用不需要认证的职位，如果不在列表里，提示需要先做职业认证再申请萨省。</span>
	  		</div>
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question4')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question6')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
		
		<div class="panel panel panel-primary" id="question6" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">6.婚姻状况</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option1" value="option1" > 1年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option2" value="option1" > 2年
    			</label>
	  		</div>
	  		
	  		<div >
	  			Tips：如有配偶，请考虑配偶也许评分更高更适合做主申请人。
	  		</div>
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question5')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question7')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
	
		<div class="panel panel panel-primary" id="question7" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">7.子女</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question7" id="question7Option1" value="1" > 0
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question7" id="question7Option2" value="2" > 1
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question7" id="question7Option3" value="3" > 2个以上
    			</label>
	  		</div>
	  		
	  		<div >
	  			Tips：本题只对魁省申请有影响
	  		</div>
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question6')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question8')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
		
		<div class="panel panel panel-primary" id="question8" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">8.是否有在加拿大工作或学习超过一年以上</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option1" value="1" > 有在萨省工作或者学习一年以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option2" value="2" > 有在新斯科舍工作或者学习一年以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option3" value="3" > 有在魁北克工作或者学习6个月以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option4" value="4" > 有在其他加拿大地区工作学习一年以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option5" value="5" > 没有在加拿大任何地区工作学习一年以上
    			</label>
	  		</div>
	  		
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question7')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question9')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
		
		<div class="panel panel panel-primary" id="question9" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">9.是否有加拿大亲属</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question9" id="question9Option1" value="1" > 有
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question9" id="question9Option2" value="2" > 没有
    			</label>
    			
	  		</div>
	  		
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question8')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question10')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
		
		
		<div class="panel panel panel-primary" id="question10" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">10.现在或未来是否有魁北克省的工作offer</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question10" id="question10Option1" value="1" > 有
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question10" id="question10Option2" value="2" > 没有
    			</label>
    			
	  		</div>
	  		
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question9')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question11')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
		
		<div class="panel panel panel-primary" id="question11" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">11.英语成绩</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option1" value="1" > 雅思5555
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option2" value="2" > 雅思5.5
    			</label>
    			
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option3" value="3" > 雅思6666
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option4" value="4" > 雅思6.5
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option5" value="5" > 雅思7777以上
    			</label>
	  		</div>
	  		
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question10')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="changeQuestion('question12')">下一题 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div> -->
	
		<!-- <div class="panel panel panel-primary" id="question12" style="dispaly:none">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">12.法语成绩</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question12" id="question12Option1" value="1" > B2
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question12" id="question12Option2" value="2" > C1
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question12" id="question12Option3" value="3" > C2
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question12" id="question12Option4" value="4" > 无法语成绩
    			</label>
	  		</div>
	  		
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question11')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="completeQuestion()">完成 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div> -->
		<!-- <div class="panel panel panel-primary" id="result" style="dispaly:none">
	  		<div class="panel-heading">
	    		<p class="text-left">测试得分：</p>
	  		</div>
	  		<div class="panel-body">
	    		<span id="resulttext1" class=""></span></br>
	    		<span id="resulttext2" class=""></span></br>
	    		<span id="resulttext3" class=""></span></br>
	    		<span id="resulttext4" class=""></span>
	  		</div>
	  		
	  		
		</div> -->
	
	
	
	</div>
	
  
  
  
  </body>
</html>
