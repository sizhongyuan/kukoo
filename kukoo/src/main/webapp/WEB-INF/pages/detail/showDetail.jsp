<!-- 详情页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html>
<script src="http://echarts.baidu.com/dist/echarts.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/detail/detail.css" />
        <div class="container">
        		<!-- <div class="leaderboard">
	  			<div class="row">
					  <div class="col-xs-9"><h1>kukoo</h1></div>
					  <div class="col-xs-3">收藏</div>
				</div>
				<div class="row">
					  <div class="col-xs-3">项目简介</div>
					  <div class="col-xs-6">啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</div>
					  <div class="col-xs-3"><button class="btn btn-default">咨询顾问</button></div>
				</div>
				<div class="row">
					  <div class="col-xs-3">状态</div>
					  <div class="col-xs-6">开放</div>
					  <div class="col-xs-3"><button class="btn btn-default">咨询顾问</button></div>
				</div>
				<div class="row">
					  <div class="col-xs-3">移民局官网</div>
					  <div class="col-xs-9">www.baidu.com</div>
				</div>
  			</div> -->
  			
  			<div class="leaderboard">
				<div class="row">
					<div class="col-xs-10">
						<div class="row">
							  <h3>加拿大联邦技术移民-快速通道项目</h3>
						</div>
						<div class="row">
							  <div class="col-xs-2">项目简介</div>
							  <div class="col-xs-10">加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内居住地限制，目前采用EE快速通道筛选系统，审理快速，周期最快8个月登陆加拿大。
本项目具有办理周期短，对语言等条件要求高等特点；适合学历高，年龄轻，英语好的申请人。</div>
							  
						</div>
						<div class="row">
							  <div class="col-xs-2">状态</div>
							  <div class="col-xs-10">开放</div>
						</div>
						<div class="row">
							  <div class="col-xs-2">移民局官网</div>
							  <div class="col-xs-10"><a href="https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers.html">https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers.html</a></div>
						</div>
					</div>
					<div class="col-xs-2">
						<div>
							<center><div class="row">
								<a style="cursor:pointer;color:black">收藏</a>
								<a style="cursor:pointer;color:black">分享</a>
							</div></center>
							<br>
							<div class="row">
								<center><button style="background-color:rgb(70,67,79);box-shadow:0px 0px 5px #888888;color:#FFFFFF;cursor:pointer" class="btn btn-default">咨询顾问</button></center>
							</div>
							<br>
							<div class="row">
								<center><button style="background-color:rgb(252,64,77);box-shadow:0px 0px 5px #888888;color:#FFFFFF;cursor:pointer" class="btn btn-default"class="btn btn-default">在线评分</button></center>
							</div>
						</div>	
					</div>
				</div>
  			</div>

          
          <br>
          
          <div class="row">
            <div class="col-md-7" style="height:600px;box-shadow: 0px 0px 5px #888888;">
              <ul class="nav nav-tabs nav-justified">
				<li class="active">
					<a href="#policy" data-toggle="tab">
						 政策解读
					</a>
				</li>
				<li>
					<a href="#process" data-toggle="tab">
						申请流程
					</a>
				</li>
				<li>
					<a href="#condition" data-toggle="tab">
						申请条件
					</a>
				</li>
				<li>
					<a href="#list" data-toggle="tab">
						材料清单
					</a>
				</li>
				<li>
					<a href="#detail" data-toggle="tab">
						费用详情
					</a>
				</li>
			</ul>
			
			<div id="myTabContent" class="tab-content">
			<!-- 政策解读tab start-->
				<div class="tab-pane fade in active" id="policy" style="height:500px;overflow:auto">
					<div style="border:1px solid black;margin:10px 0px">
						<p>加同管辖。加拿大联邦技术移民项目（the Federal Skilled Worker Program，“FSW”）即为申请者向加拿大联邦政府递交技术移民申请，由联邦政府发放移民签证并最终成为加拿大永久居民的移民申请项目。</p>
						<p>自2015年开始，加拿大联邦技术移民（FSW）必须通过快速通道方式（Express Entry,“EE”）申请。即在满足FSW申请条件基础上，申请者还需统一按照的EE的综合排名系统（CRS）规则重新打分；最终根据分数排名情况受理移民申请，并在受理后的6个月内获得移民签证。</p>
					</div>
					<div style="border:1px solid black;margin:10px 0px">
						<p>联邦技术移民快速通道（EE）自实施以来，已经进行过71次邀请。最近一次邀请分数为435分，最低邀请分数为413分。历次邀请的CRS分数以及人数统计如下。申请人CRS分数超过430分的被邀请的概率较大。</p>
					</div>	
					<div class="charts" id="charts" style="margin:10px 0px"></div>		
					<table class="table table-striped">
						<thead style="background-color:rgb(252,64,77);color:#FFFFFF;">
							<th>EE邀请日期</th>
							<th>EE邀请人数</th>
							<th>EE邀请分数</th>
							<th>年度邀请次数</th>
							<th>EE总邀请次数</th>
						</thead>
						<tbody>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
						</tbody>
					</table>		
				</div>
				<!-- 政策解读tab end-->
				
				<!-- 申请流程tab start-->
				<div class="tab-pane fade" id="process" style="height:500px;overflow:auto">
					<div style="border:1px solid black;margin:10px 0px">
						<p>1  确认满足联邦技术移民项目（FSW）评分标准</p>
						<p>申请者应首先满足联邦技术移民项目（FSW）评分标准。</p>
						<p>FSW具体评分标准参见“申请条件”页。您也可使用布谷的在线评分系统进行自测。</p>
						<br/>
						<p>2  录入EE系统的MyCIC账户并进行（CRS）打分</p>
						<p>确认满足联邦技术移民项目（FSW）要求后，申请者可将自己的信息录入EE系统的MyCIC账户。填写完毕后，EE系统的综合排名体系（Comprehensive Ranking System, CRS）会根据CRS的评分标准重新计算分数，并根据分数排名等待获得移民申请邀请（Invitation to Apply， “ITA”）;我们把这个过程叫做“入池”。</p>
						<p>CRS的具体评分标准参见“申请条件”页。您也可使用布谷的在线评分系统进行自测。</p>
						<br/>
						<p>3  根据EE系统CRS打分获得移民邀请</p>
						<p>移民局会不定期根据CRS评分情况，对高于特定分数的申请者发出移民申请邀请（ITA）。当申请人的CRS分数高于移民局邀请的分数时，申请人可以获得移民局的移民邀请（ITA），并开始正式的移民申请。</p>
						<p>EE历次邀请人数及CRS分数线统计参见“政策解读”页。</p>
						<br/>
						<p>4  申请人递交正式的移民申请</p>
						<p>申请人获得移民邀请ITA后，递交正式的移民申请，此时移民部承诺大部分申请6个月以内审理完毕（从递交之日算起）。</p>			
						<br/>
					</div>	
					<table class="table table-striped">
						<thead style="background-color:rgb(252,64,77);color:#FFFFFF;">
							<th></th>
							<th>事项</th>
							<th>周期</th>
							<th>办理内容</th>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>缴纳第一阶段咨询服务费</td>
								<td>1天</td>
								<td>签约、缴纳服务费</td>
							</tr>
							<tr>
								<td>1</td>
								<td>缴纳第一阶段咨询服务费</td>
								<td>1天</td>
								<td>签约、缴纳服务费</td>
							</tr>
							<tr>
								<td>1</td>
								<td>缴纳第一阶段咨询服务费</td>
								<td>1天</td>
								<td>签约、缴纳服务费</td>
							</tr>						
						</tbody>
					</table>		
				</div>
				<!-- 申请流程tab end-->
				
				<!-- 申请条件tab start-->
				<div class="tab-pane fade" id="condition" style="height:500px;overflow:auto">
					<div style="border:1px solid black;margin:10px 0px">
						<p>申请加拿大联邦技术移民-快速通道项目需满足如下条件：</p>
						<br/>
						<p>1 满足联邦技术移民项目（FSW）评分标准</p>
						<p>2 按照CRS评分标准打分，并根据分数高低获得联邦邀请（通常要求430分以上）</p>
						<br/>
						<p>FSW及CRS具体评分标准如下。您也可使用布谷的在线评分系统进行自测。</p>
						<br/>
					</div>
					<div style="border:1px solid black;margin:10px 0px">
						<h5>* FSW评分标准</h5>
						<p>一 工作经验</p>
						<p>1 至少有一年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 工作年限按照同一个NOC职业代码（in the same NOC skill type (0, A or B)）计算；</p>
						<p>4 近10年的职业属于2011年版NOC的 level 0、A或B；</p>
						<p>二 语言能力</p>
						<p>雅思达到CLB7的水平（雅思4个6），2年有效期。</p>
						<p>三 学历要求</p>
						<p>完成加拿大ECA学历认证；</p>
						<p>四 FSW打分超过67分（满分100分）</p>
						FSW评分标准如下所示：
						<br/>
						<table class="table table-striped">
							<thead style="background-color:rgb(252,64,77);color:#FFFFFF;">
								<th></th>
								<th>事项</th>
								<th>周期</th>
								<th>办理内容</th>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>缴纳第一阶段咨询服务费</td>
									<td>1天</td>
									<td>签约、缴纳服务费</td>
								</tr>
								<tr>
									<td>1</td>
									<td>缴纳第一阶段咨询服务费</td>
									<td>1天</td>
									<td>签约、缴纳服务费</td>
								</tr>
								<tr>
									<td>1</td>
									<td>缴纳第一阶段咨询服务费</td>
									<td>1天</td>
									<td>签约、缴纳服务费</td>
								</tr>						
							</tbody>
						</table>		
					</div>	
					
					<div style="border:1px solid black;margin:10px 0px">
						<h5>* CRS评分标准</h5>
						<p>EE评分系统的CRS综合排名体系 (Comprehensive Ranking System)，满分1200分，主要涉及4个方面：核心要素（年龄、教育、语言和加拿大工作经验）；配偶加分（教育、语言和加拿大工作经验）；适应能力（教育、工作经验和加拿大资格证书）；雇主offer和省提名。总分 1200=核心分数+配偶加分+适应分数+其他分数。</p>
						<br/>
						<p>下面标准适用于2016-11-19后新的 EE 评分标准。</p>
						<br/>
						<table class="table table-striped">
							<tbody>
								<tr style="background-color:rgb(20,159,236)">
									<td>I.核心评分要素</td>
									<td>有配偶，最高460分</td>
									<td>单身，最高500分</td>
								</tr>
								<tr>
									<td>年龄加分</td>
									<td>已婚最高100分</td>
									<td>单身最高110分</td>
								</tr>
								<tr>
									<td>未超过17周岁</td>
									<td>0</td>
									<td>0</td>
								</tr>					
							</tbody>
						</table>		
					</div>	
					
					<div style="border:1px solid black;margin:10px 0px">
						<h5>* CRS评分标准</h5>
						<br/>
						<p>联邦技术移民快速通道（EE）自实施以来，已经进行过71次邀请。最近一次邀请分数为435分，最低邀请分数为413分。历次邀请的CRS分数以及人数统计如下：</p>
						<br/>
						<div class="charts" id="charts1" style="margin:10px 0px"></div>		
						<br/>
						<table class="table table-striped">
							<thead style="background-color:rgb(252,64,77);color:#FFFFFF;">
								<th>EE邀请日期</th>
								<th>EE邀请人数</th>
								<th>EE邀请分数</th>
								<th>年度邀请次数</th>
								<th>EE总邀请次数</th>
							</thead>
							<tbody>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
								<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							</tbody>
						</table>			
					</div>	
				</div>
				<!-- 申请条件tab end-->
				
				<!-- 材料清单tab start-->
				<div class="tab-pane fade" id="list" style="height:500px;overflow:auto">
					<br/>
					<table class="table table-striped">
						<thead style="background-color:rgb(252,64,77);color:#FFFFFF;">
							<th>材料</th>
							<th>主申/副申/子女</th>
							<th>是否必须</th>
							<th>样例及说明</th>
						</thead>
						<tbody>
							<tr>
								<td>移民信息表</td>
								<td></td>
								<td>是</td>
								<td></td>
							</tr>
							<tr>
								<td>护照复印件</td>
								<td></td>
								<td>是</td>
								<td>护照</td>
							</tr>
							<tr>
								<td>身份证复印件</td>
								<td></td>
								<td>是</td>
								<td>身份证</td>
							</tr>
							<tr>
								<td>出生医学证明复印件</td>
								<td></td>
								<td>是</td>
								<td>子女出生医学证明</td>
							</tr>
							<tr>
								<td>户口本复印件</td>
								<td></td>
								<td>是</td>
								<td>户口本</td>
							</tr>
							<tr>
								<td>照片</td>
								<td></td>
								<td>是</td>
								<td>照片指引</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业证/学位证复印件</td>
								<td></td>
								<td>是</td>
								<td>学历学位证</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业成绩单复印件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>	
							<tr>
								<td>雅思或TEF成绩原件</td>
								<td></td>
								<td>是</td>
								<td>雅思成绩单</td>
							</tr>
							<tr>
								<td>近十年所有工作证明信复印件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>聘用合同复印件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>近十年所有个税税单复印件</td>
								<td></td>
								<td>是</td>
								<td>个人所得税完税证明</td>
							</tr>				
						</tbody>
					</table>		
				</div>
				<!-- 材料清单tab end-->
				
				<!-- 费用详情tab start-->
				<div class="tab-pane fade" id="detail" style="height:500px;overflow:auto">
					<div style="border:1px solid black;margin:10px 0px">
						<p>总共涉及的资金：一人办理约5.2万 人民币 三口之家办理约6万人民币，其中：</p>
						<p>* 布谷服务费：4万人民币</p>
						<p>* 官方及第三方费用：1.2-2万人民币</p>
						<p>（备注：汇率按照1:5计算）</p>
						<br/>
					</div>	
					<table class="table table-striped">
						<thead style="background-color:rgb(252,64,77);color:#FFFFFF;">
							<th>费用详情</th>
							<th>费用项</th>
							<th>收费机构</th>
							<th>金额</th>
							<th>收费时间/阶段</th>
							<th>退款标准</th>
						</thead>
						<tbody>
							<tr>
								<td>咨询服务费</td>
								<td>咨询服务费</td>
								<td>布谷</td>
								<td>4万人民币</td>
								<td>签约</td>
								<td>可退</td>
							</tr>
							<tr>
								<td>第三方费用</td>
								<td>翻译、公证费</td>
								<td>相关机构</td>
								<td>按量收取，3000-5000人民币/户</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>
							<tr>
								<td>第三方费用</td>
								<td>学历认证费</td>
								<td>学历认证机构</td>
								<td>按量收取，1600-3000人民币/份</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>		
							<tr>
								<td>第三方费用</td>
								<td>学历认证费</td>
								<td>学历认证机构</td>
								<td>按量收取，1600-3000人民币/份</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>		
						</tbody>
					</table>	
					<div style="border:1px solid black;margin:10px 0px">
						<p>备注：</p>
						<p>1. 以上涉及的翻译、公证、认证可委托布谷办理或自行办理</p>
						<p>2. 因移民局或第三方代办机构调整费用，以及客户文件的数量不同，以上费用以实际发生为准</p>
						<br/>
					</div>	
				</div>
				<!-- 费用详情tab end-->
				
			</div>
            </div><!--/span-->
            <div class="col-md-1"></div>
            <div class="col-md-4" style="height:300px;box-shadow: 0px 0px 5px #888888;">
            <table class="table table-striped" style="margin:50px 5px;">
            			<tr>
            				<td>签证类型</td>
            				<td>PR/工签+PR</td>
            			</tr>
            			<tr>
            				<td>办理周期</td>
            				<td>2年</td>
            			</tr>
            			<tr>
            				<td>总费用</td>
            				<td>XXX</td>
            			</tr>
            			<tr>
            				<td>居住要求</td>
            				<td>5年2年</td>
            			</tr>
            </table>
            <button style="background-color:rgb(252,64,77);box-shadow:0px 0px 5px #888888;color:#FFFFFF;cursor:pointer" class="btn btn-default"class="btn btn-default">FAQ</button>
            <button style="background-color:rgb(252,64,77);box-shadow:0px 0px 5px #888888;color:#FFFFFF;cursor:pointer" class="btn btn-default"class="btn btn-default">名称解释</button>
            <a style="cursor:pointer;float:right;color:black">分享</a>
              <!-- <p><a class="btn btn-success btn-large" href="#">Start percticing now</a></p> -->
            </div><!--/span-->
          </div><!--/row-->
          
          	<!-- <div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordion" 
						   href="#collapseThree">
							点击我进行展开，再次点击我进行折叠。第 3 部分
						</a>
					</h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse">
					<div class="panel-body">
						Nihil anim keffiyeh helvetica, craft beer labore wes anderson 
						cred nesciunt sapiente ea proident. Ad vegan excepteur butcher 
						vice lomo.
					</div>
				</div>
			</div> -->
          
    </div><!--/.fluid-container-->
    
    <script>
 	// 获取到这个DOM节点，然后初始化

    var myChart = echarts.init(document.getElementById("charts"));
    var myChart1 = echarts.init(document.getElementById("charts1"));
	// option 里面的内容基本涵盖你要画的图表的所有内容
	        // 定义样式和数据
	    		var option = {
                        backgroundColor: '#FBFBFB',
                        tooltip : {
                            trigger: 'axis'
                        },
                        legend: {
                            data:['充值','消费']
                        },

                        calculable : true,


                        xAxis : [
                            {
                                axisLabel:{
                                    rotate: 30,
                                    interval:0
                                },
                                axisLine:{
                                  lineStyle :{
                                      color: '#CECECE'
                                  }
                                },
                                type : 'category',
                                boundaryGap : false,
                                data : function (){
                                    var list = [];
                                    for (var i = 10; i <= 18; i++) {
                                        if(i<= 12){
                                            list.push('2016-'+i + '-01');
                                        }else{
                                            list.push('2017-'+(i-12) + '-01');
                                        }
                                    }
                                    return list;
                                }()
                            }
                        ],
                        yAxis : [
                            {

                                type : 'value',
                                axisLine:{
                                    lineStyle :{
                                        color: '#CECECE'
                                    }
                                }
                            }
                        ],
                        series : [
                            {
                                name:'充值',
                                type:'line',
                                symbol:'none',
                                smooth: 0.2,
                                color:['#66AEDE'],
                                data:[800, 300, 500, 800, 300, 600,500,600]
                            },
                            {
                                name:'消费',
                                type:'line',
                                symbol:'none',
                                smooth: 0.2,
                                color:['#90EC7D'],
                                data:[600, 300, 400, 200, 300, 300,200,400]
                            }
                        ]
                    };
	    
	// 一定不要忘了这个，具体是干啥的我忘了，官网是这样写的使用刚指定的配置项和数据显示图表。  
		myChart1.setOption(option);
	    myChart.setOption(option);
	    

	</script>
</html>