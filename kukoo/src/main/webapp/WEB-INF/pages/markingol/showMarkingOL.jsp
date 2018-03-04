<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println(basePath+"....."+path);

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
	
	<!-- 引用JS -->
	<script src="<%=basePath %>javascript/jquery/1.12.4/jquery.min.js"></script>
	<script src="<%=basePath %>javascript/jquery/cookie/jquery.cookie.js"></script>
	<script src="<%=basePath %>javascript/jquery/form/jquery.form.js"></script>
	<script src="<%=basePath %>javascript/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	
    
    <style>
    
    body{ text-align:center} 
	#markingOL{margin:0 auto;width:50%;height:50%}
    </style>
	
	
	<script type="text/javascript">
		$(document).ready(function(){
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
			document.getElementById("result").style.display="none";
		});
		
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
			var checked1 = $('input[name="question1"]:checked').val();
			var checked2 = $('input[name="question2"]:checked').val();
			var checked3 = $('input[name="question3"]:checked').val();
			var checked4 = $('input[name="question4"]:checked').val();
			//var checked5 = $('input[name="question5"]:checked').val();
			var checked7 = $('input[name="question7"]:checked').val();
			var checked8 = $('input[name="question8"]:checked').val();
			var checked9 = $('input[name="question9"]:checked').val();
			var checked10 = $('input[name="question10"]:checked').val();
			var checked11 = $('input[name="question11"]:checked').val();
			var checked12 = $('input[name="question12"]:checked').val();
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
			$("#resulttext1").text("联邦："+federalscore+"分");
			$("#resulttext2").text("萨省："+saskatchewanscore+"分");
			$("#resulttext3").text("新斯科特："+scotiascore+"分");
			$("#resulttext4").text("魁北克："+quebecscore+"分");
			document.getElementById("question12").style.display="none";
			document.getElementById("result").style.display="block";
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
	
	</script>
  </head>
  
  <body>
  	<br>


	<div id="markingOl">
		<div class="panel panel panel-primary" id="question1">
	  		<div class="panel-heading">
	    		<h3 class="panel-title">1.您的年龄</h3>
	  		</div>
	  		<div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question1" id="question1Option1" value="1" > 低于20岁
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question1" id="question1Option2" value="2" > 20到35岁之间
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question1" id="question1Option3" value="3" > 36到40岁
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question1" id="question1Option4" value="4" > 40岁以上
    			</label>
	  		</div>
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
		</div>
		
		<div class="panel panel panel-primary" id="question2" style="dispaly:none">
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
		</div>
		
		<div class="panel panel panel-primary" id="question3" style="dispaly:none">
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
	    		<!-- <label class="radio-inline">
       	 			<input type="radio" name="question5" id="question4Option1" value="option1" > 1年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question5" id="question4Option2" value="option1" > 2年
    			</label> -->
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
	  		<!-- <div class="panel-body">
	    		<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option1" value="option1" > 1年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option2" value="option1" > 2年
    			</label>
	  		</div> -->
	  		
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
		</div>
	
		<div class="panel panel panel-primary" id="question12" style="dispaly:none">
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
		</div>
		<div class="panel panel panel-primary" id="result" style="dispaly:none">
	  		<div class="panel-heading">
	    		<p class="text-left">测试得分：</p>
	  		</div>
	  		<div class="panel-body">
	    		<span id="resulttext1" class=""></span></br>
	    		<span id="resulttext2" class=""></span></br>
	    		<span id="resulttext3" class=""></span></br>
	    		<span id="resulttext4" class=""></span>
	  		</div>
	  		
	  		
		</div>
	
	
	
	</div>
	
  
  
  
  </body>
</html>
