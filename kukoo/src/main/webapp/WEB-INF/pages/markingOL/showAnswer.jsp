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
		
		}
		
		//提交答题
		function completeQuestion(){
		
			var question1 = document.getElementsByTagName("question1");
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
		    }
			$.ajax({
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
			});
		
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
       	 			<input type="radio" name="question1" id="question1Option1" value="option1" > 低于20岁
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question1" id="question1Option2" value="option2" > 20到35岁之间
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question1" id="question1Option3" value="option3" > 36到40岁
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question1" id="question1Option4" value="option4" > 40岁以上
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
       	 			<input type="radio" name="question2" id="question2Option1" value="option1" > 低于大专
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option2" value="option1" > 大专
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option3" value="option1" > 本科
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option4" value="option1" > 双本科
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option5" value="option1" > 研究生
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question2" id="question2Option6" value="option1" > 博士及以上
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
       	 			<input type="radio" name="question3" id="question3Option1" value="option1" > 12分专业
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question3" id="question3Option2" value="option1" > 9分专业
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question3" id="question3Option3" value="option1" > 其他专业
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
       	 			<input type="radio" name="question4" id="question4Option1" value="option1" > 1年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option2" value="option1" > 2年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option3" value="option1" > 3年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option4" value="option1" > 4年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option5" value="option1" > 5年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option6" value="option1" > 6年
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question4" id="question4Option7" value="option1" > 7年＋
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
       	 			<input type="radio" name="question7" id="question7Option1" value="option1" > 0
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question7" id="question7Option2" value="option1" > 1
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question7" id="question7Option3" value="option1" > 2个以上
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
       	 			<input type="radio" name="question8" id="question8Option1" value="option1" > 有在萨省工作或者学习一年以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option2" value="option1" > 有在新斯科舍工作或者学习一年以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option3" value="option1" > 有在魁北克工作或者学习6个月以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option4" value="option1" > 有在其他加拿大地区工作学习一年以上
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question8" id="question8Option5" value="option1" > 没有在加拿大任何地区工作学习一年以上
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
       	 			<input type="radio" name="question9" id="question9Option1" value="option1" > 有
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question9" id="question9Option2" value="option1" > 没有
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
       	 			<input type="radio" name="question10" id="question10Option1" value="option1" > 有
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question10" id="question10Option2" value="option1" > 没有
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
       	 			<input type="radio" name="question11" id="question11Option1" value="option1" > 雅思5555
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option2" value="option1" > 雅思5.5
    			</label>
    			
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option3" value="option1" > 雅思6666
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option4" value="option1" > 雅思6.5
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question11" id="question11Option5" value="option1" > 雅思7777以上
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
       	 			<input type="radio" name="question12" id="question12Option1" value="option1" > B2
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question12" id="question12Option2" value="option1" > C1
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question12" id="question12Option3" value="option1" > C2
    			</label>
    			</br>
    			<label class="radio-inline">
       	 			<input type="radio" name="question12" id="question12Option4" value="option1" > 无法语成绩
    			</label>
	  		</div>
	  		
	  		<nav aria-label="...">
			  <ul class="pager">
			    <li class="previous"><a href="javascript:void(0);" onclick="changeQuestion('question11')"><span aria-hidden="true">&larr;</span> 上一题</a></li>
			    <li class="next"><a href="javascript:void(0);" onclick="completeQuestion()">完成 <span aria-hidden="true">&rarr;</span></a></li>
			  </ul>
			</nav>
		</div>
	
	
	
	</div>
	
  
  
  
  </body>
</html>
