<!-- 详情页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html>
<script src="http://echarts.baidu.com/dist/echarts.min.js"></script>
<link rel="stylesheet" href="<%=basePath %>css/detail/detail.css" />
        <div class="container" style="padding:0px 90px 0px 90px">
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
  		
  		<div class="row" style="max-width:1000px;height:200px;padding:0">
  			<div class="leaderboard">
				<div class="row leaderboardMargin" style="padding:0">
					<div class="col-xs-12" style="padding:0">
						<div class="row" style="padding:0">
							  <p>加拿大联邦技术移民-快速通道项目</p>
						</div>
						<div class="row" style="margin-bottom:12px;padding:0">
							  <div class="col-xs-3" style="width:100px;padding:0">项目简介</div>
							  <div class="col-xs-9" style="width:400px；line-height:5px,padding:0" title="加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内居住地限制，目前采用EE快速通道筛选系统，审理快速，周期最快8个月登陆加拿大。
本项目具有办理周期短，对语言等条件要求高等特点；适合学历高，年龄轻，英语好的申请人。">加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无......<br><a style="font-size:12px;color:rgb(51,108,172);float:right;cursor:pointer;margin-top:10px">更多详情</a></div>
						</div>
						<div class="row" style="margin-bottom:10px;padding:0">
							  <div class="col-xs-3" style="width:100px;padding:0">状态</div>
							  <div class="col-xs-9" style="padding:0">开放</div>
						</div>
						<div class="row" style="margin-bottom:32px;padding:0">
							  <div class="col-xs-3" style="width:100px;padding:0">移民局官网</div>
							  <div class="col-xs-3" style="padding:0"><a href="https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers.html">https://www.canada.ca/</a></div>
							  <div class="col-xs-2" style="padding:0"><i class="glyphicon glyphicon-star" style="cursor:pointer;float:right;margin-right:-10px"></i><p style="font-size:12px;color:#333333;float:right;margin-right:5px;cursor:pointer;">收藏</p></div>
							  <div class="col-xs-4" style="padding:0"><div style="float:right;margin-top:-5px"><button class="btn btn-default" style="width:72px;height:28px;color:#FFFFFF;font-size:10px;background-color:rgb(80,81,85);border-radius:0">咨询顾问</button><button class="btn btn-default" style="width:72px;height:28px;margin-left:10px;color:#FFFFFF;font-size:10px;background-color:rgb(12,86,214);border-radius:0">咨询顾问</button></div></div>
						</div>
					</div>
				</div>
  			</div>
            <div style="height:240px;width:260px;box-shadow: 0px 0px 5px #888888;float:right;padding:38px 30px 24px 30px">
            <table class="table table-striped" style="font-size:12px;color:#666666">
            			<tr style="height:32px">
            				<td>签证类型</td>
            				<td>PR/工签+PR</td>
            			</tr>
            			<tr style="height:32px">
            				<td>办理周期</td>
            				<td>2年</td>
            			</tr>
            			<tr style="height:32px">
            				<td>总费用</td>
            				<td>XXX</td>
            			</tr>
            			<tr style="height:32px">
            				<td>居住要求</td>
            				<td>5年2年</td>
            			</tr>
            </table>
            <button class="redbtn" style="width:65px;height:20px">FAQ</button>
            <button class="redbtn" style="width:65px;height:20px">名词解释</button>
            <div style="float:right;"><img src="<%=basePath %>img/detail/share.png" width="16px" height="16px"></div>
            <div style="cursor:pointer;float:right;color:#666666;font-size:12px;"><a>分享</a></div>
              <!-- <p><a class="btn btn-success btn-large" href="#">Start percticing now</a></p> -->
            </div>
  			
		</div>
          <!-- <button class="btn btn-default blackbtn">咨询顾问</button>
          <button class="btn btn-default redbtn">在线评分</button> -->
          <div class="row" style="margin-top:36px">
            <div class="col-md-12" style="height:500px;max-width:670px;box-shadow: 0px 0px 5px #888888;padding:0;">
              <ul class="nav nav-tabs nav-justified">
				<li class="active" >
					<a href="#policy" data-toggle="tab">
						 政策解读
					</a>
				</li>
				<li >
					<a href="#process" data-toggle="tab">
						申请流程
					</a>
				</li>
				<li >
					<a href="#condition" data-toggle="tab">
						申请条件
					</a>
				</li>
				<li >
					<a href="#list" data-toggle="tab">
						材料清单
					</a>
				</li>
				<li >
					<a href="#detail" data-toggle="tab">
						费用详情
					</a>
				</li>
			</ul>
			
			<div id="myTabContent" class="tab-content">
			<!-- 政策解读tab start-->
				<div class="tab-pane fade in active" id="policy" style="height:443px;overflow:auto;padding:30px 30px 30px 30px">
					<div style="border:1px solid black;">
						<p>加同管辖。加拿大联邦技术移民项目（the Federal Skilled Worker Program，“FSW”）即为申请者向加拿大联邦政府递交技术移民申请，由联邦政府发放移民签证并最终成为加拿大永久居民的移民申请项目。</p>
						<p>自2015年开始，加拿大联邦技术移民（FSW）必须通过快速通道方式（Express Entry,“EE”）申请。即在满足FSW申请条件基础上，申请者还需统一按照的EE的综合排名系统（CRS）规则重新打分；最终根据分数排名情况受理移民申请，并在受理后的6个月内获得移民签证。</p>
					</div>
					<div style="border:1px solid black;margin:10px 0px">
						<p>联邦技术移民快速通道（EE）自实施以来，已经进行过71次邀请。最近一次邀请分数为435分，最低邀请分数为413分。历次邀请的CRS分数以及人数统计如下。申请人CRS分数超过430分的被邀请的概率较大。</p>
					</div>	
					<div class="charts" id="charts" style="margin:10px 0px"></div>		
					<table class="table table-striped">
						<thead style="background-color:rgb(12,86,214);color:#FFFFFF;">
							<th>EE邀请日期</th>
							<th>EE邀请人数</th>
							<th>EE邀请分数</th>
							<th>年度邀请次数</th>
							<th>EE总邀请次数</th>
						</thead>
						<tbody>
					
							
							
							<tr><td>2017/9/6</td><td>2772</td><td>435</td><td>21</td><td>71</td></tr>
							<tr><td>2017/8/23</td><td>3035</td><td>434</td><td>20</td><td>70</td></tr>
							<tr><td>2017/8/9</td><td>2991</td><td>433</td><td>19</td><td>69</td></tr>
							<tr><td>2017/8/2</td><td>3264</td><td>441</td><td>18</td><td>68</td></tr>
							<tr><td>2017/7/12</td><td>3202</td><td>440</td><td>17</td><td>67</td></tr>
							<tr><td>2017/6/28</td><td>3409</td><td>449</td><td>16</td><td>66</td></tr>
 <tr>
<td>2017/5/31</td>
<td>3877</td>
<td>413</td>
<td>15</td>
<td>65</td>
 </tr>
 <tr>
<td>2017/5/17</td>
<td>3687</td>
<td>415</td>
<td>12</td>
<td>62</td>
 </tr>
 <tr>
<td>2017/5/4</td>
<td>3796</td>
<td>423</td>
<td>11</td>
<td>61</td>
 </tr>
 <tr>
<td>2017/4/19</td>
<td>3665</td>
<td>415</td>
<td>10</td>
<td>60</td>
 </tr>
 <tr>
<td>2017/4/12</td>
<td>3923</td>
<td>423</td>
<td>9</td>
<td>59</td>
 </tr>
 <tr>
<td>2017/4/5</td>
<td>3753</td>
<td>431</td>
<td>8</td>
<td>58</td>
 </tr>
 <tr>
<td>2017/3/24</td>
<td>3749</td>
<td>441</td>
<td>7</td>
<td>57</td>
 </tr>
 <tr>
<td>2017/3/1</td>
<td>3884</td>
<td>434</td>
<td>6</td>
<td>56</td>
 </tr>
 <tr>
<td>2017/2/22</td>
<td>3611</td>
<td>441</td>
<td>5</td>
<td>55</td>
 </tr>
 <tr>
<td>2017/2/8</td>
<td>3664</td>
<td>447</td>
<td>4</td>
<td>54</td>
 </tr>
 <tr>
<td>2017/1/25</td>
<td>3508</td>
<td>453</td>
<td>3</td>
<td>53</td>
 </tr>
 <tr>
<td>2017/1/11</td>
<td>3334</td>
<td>459</td>
<td>2</td>
<td>52</td>
 </tr>
 <tr>
<td>2017/1/4</td>
<td>2902</td>
<td>468</td>
<td>1</td>
<td>51</td>
 </tr>
 <tr>
<td>2016/12/22</td>
<td>2878</td>
<td>475</td>
<td>27</td>
<td>50</td>
 </tr>
 <tr>
<td>2016/12/16</td>
<td>1936</td>
<td>497</td>
<td>26</td>
<td>49</td>
 </tr>
 <tr>
<td>2016/11/30</td>
<td>559</td>
<td>786</td>
<td>25</td>
<td>48</td>
 </tr>
 <tr>
<td>2016/11/16</td>
<td>2427</td>
<td>470</td>
<td>24</td>
<td>47</td>
 </tr>
 <tr>
<td>2016/11/2</td>
<td>2080</td>
<td>472</td>
<td>23</td>
<td>46</td>
 </tr>
 <tr>
<td>2016/10/19</td>
<td>1804</td>
<td>475</td>
<td>22</td>
<td>45</td>
 </tr>
 <tr>
<td>2016/10/12</td>
<td>1518</td>
<td>484</td>
<td>21</td>
<td>44</td>
 </tr>
 <tr>
<td>2016/9/21</td>
<td>1288</td>
<td>483</td>
<td>20</td>
<td>43</td>
 </tr>
 <tr>
<td>2016/9/7</td>
<td>1000</td>
<td>491</td>
<td>19</td>
<td>42</td>
 </tr>
 <tr>
<td>2016/8/24</td>
<td>750</td>
<td>538</td>
<td>18</td>
<td>41</td>
 </tr>
 <tr>
<td>2016/8/10</td>
<td>754</td>
<td>490</td>
<td>17</td>
<td>40</td>
 </tr>
 <tr>
<td>2016/7/27</td>
<td>755</td>
<td>488</td>
<td>16</td>
<td>39</td>
 </tr>
 <tr>
<td>2016/7/13</td>
<td>747</td>
<td>482</td>
<td>15</td>
<td>38</td>
 </tr>
 <tr>
<td>2016/6/29</td>
<td>773</td>
<td>482</td>
<td>14</td>
<td>37</td>
 </tr>
 <tr>
<td>2016/6/15</td>
<td>752</td>
<td>488</td>
<td>13</td>
<td>36</td>
 </tr>
 <tr>
<td>2016/6/1</td>
<td>762</td>
<td>483</td>
<td>12</td>
<td>35</td>
 </tr>
 <tr>
<td>2016/5/18</td>
<td>763</td>
<td>484</td>
<td>11</td>
<td>34</td>
 </tr>
 <tr>
<td>2016/5/6</td>
<td>799</td>
<td>534</td>
<td>10</td>
<td>33</td>
 </tr>
 <tr>
<td>2016/4/20</td>
<td>1018</td>
<td>468</td>
<td>9</td>
<td>32</td>
 </tr>
 <tr>
<td>2016/4/6</td>
<td>954</td>
<td>470</td>
<td>8</td>
<td>31</td>
 </tr>
 <tr>
<td>2016/3/23</td>
<td>1014</td>
<td>470</td>
<td>7</td>
<td>30</td>
 </tr>
 <tr>
<td>2016/3/9</td>
<td>1013</td>
<td>473</td>
<td>6</td>
<td>29</td>
 </tr>
 <tr>
<td>2016/2/24</td>
<td>1484</td>
<td>453</td>
<td>5</td>
<td>28</td>
 </tr>
 <tr>
<td>2016/2/10</td>
<td>1505</td>
<td>459</td>
<td>4</td>
<td>27</td>
 </tr>
 <tr>
<td>2016/1/27</td>
<td>1468</td>
<td>457</td>
<td>3</td>
<td>26</td>
 </tr>
 <tr>
<td>2016/1/13</td>
<td>1518</td>
<td>453</td>
<td>2</td>
<td>25</td>
 </tr>
 <tr>
<td>2016/1/6</td>
<td>1463</td>
<td>461</td>
<td>1</td>
<td>24</td>
 </tr>
 <tr>
<td>2015/12/18</td>
<td>1503</td>
<td>460</td>
<td>23</td>
<td>23</td>
 </tr>
 <tr>
<td>2015/12/4</td>
<td>1451</td>
<td>461</td>
<td>22</td>
<td>22</td>
 </tr>
 <tr>
<td>2015/11/27</td>
<td>1559</td>
<td>472</td>
<td>21</td>
<td>21</td>
 </tr>
 <tr>
<td>2015/11/13</td>
<td>1506</td>
<td>484</td>
<td>20</td>
<td>20</td>
 </tr>
 <tr>
<td>2015/10/23</td>
<td>1502</td>
<td>489</td>
<td>19</td>
<td>19</td>
 </tr>
 <tr>
<td>2015/10/2</td>
<td>1530</td>
<td>450</td>
<td>18</td>
<td>18</td>
 </tr>
 <tr>
<td>2015/9/18</td>
<td>1545</td>
<td>450</td>
<td>17</td>
<td>17</td>
 </tr>
 <tr>
<td>2015/9/8</td>
<td>1517</td>
<td>459</td>
<td>16</td>
<td>16</td>
 </tr>
 <tr>
<td>2015/8/21</td>
<td>1523</td>
<td>456</td>
<td>15</td>
<td>15</td>
 </tr>
 <tr>
<td>2015/8/7</td>
<td>1402</td>
<td>471</td>
<td>14</td>
<td>14</td>
 </tr>
 <tr>
<td>2015/7/17</td>
<td>1581</td>
<td>451</td>
<td>13</td>
<td>13</td>
 </tr>
 <tr>
<td>2015/7/10</td>
<td>1516</td>
<td>463</td>
<td>12</td>
<td>12</td>
 </tr>
 <tr>
<td>2015/6/26</td>
<td>1575</td>
<td>469</td>
<td>11</td>
<td>11</td>
 </tr>
 <tr>
<td>2015/6/12</td>
<td>1501</td>
<td>482</td>
<td>10</td>
<td>10</td>
 </tr>
 <tr>
<td>2015/5/22</td>
<td>1361</td>
<td>755</td>
<td>9</td>
<td>9</td>
 </tr>
 <tr>
<td>2015/4/17</td>
<td>715</td>
<td>453</td>
<td>8</td>
<td>8</td>
 </tr>
 <tr>
<td>2015/4/10</td>
<td>925</td>
<td>469</td>
<td>7</td>
<td>7</td>
 </tr>
 <tr>
<td>2015/3/27</td>
<td>1637</td>
<td>453</td>
<td>6</td>
<td>6</td>
 </tr>
 <tr>
<td>2015/3/20</td>
<td>1620</td>
<td>481</td>
<td>5</td>
<td>5</td>
 </tr>
 <tr>
<td>2015/2/27</td>
<td>1187</td>
<td>735</td>
<td>4</td>
<td>4</td>
 </tr>
 <tr>
<td>2015/2/20</td>
<td>849</td>
<td>808</td>
<td>3</td>
<td>3</td>
 </tr>
 <tr>
<td>2015/2/7</td>
<td>779</td>
<td>818</td>
<td>2</td>
<td>2</td>
 </tr>
 <tr>
<td>2015/1/31</td>
<td>779</td>
<td>886</td>
<td>1</td>
<td>1</td>
 </tr>
 <tr>
<td>累计人数:</td>
<td>130871</td>
<td></td>
<td>最低分数:</td>
<td>413</td>
 </tr>
						</tbody>
					</table>		
				</div>
				<!-- 政策解读tab end-->
				
				<!-- 申请流程tab start-->
				<div class="tab-pane fade" id="process" style="height:443px;overflow:auto;padding:30px 30px 30px 30px">
					<div style="border:1px solid black;">
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
						<thead style="background-color:rgb(12,86,214);color:#FFFFFF;">
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
				<div class="tab-pane fade" id="condition" style="height:443px;overflow:auto;padding:30px 30px 30px 30px">
					<div style="border:1px solid black;">
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
							<thead style="background-color:rgb(12,86,214);color:#FFFFFF;">
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
							<thead style="background-color:rgb(12,86,214);color:#FFFFFF;">
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
				<div class="tab-pane fade" id="list" style="height:443px;overflow:auto;padding:30px 30px 30px 30px">
					<table class="table table-striped">
						<thead style="background-color:rgb(12,86,214);color:#FFFFFF;">
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
				<div class="tab-pane fade" id="detail" style="height:443px;overflow:auto;padding:30px 30px 30px 30px">
					<div style="border:1px solid black;">
						<p>总共涉及的资金：一人办理约5.2万 人民币 三口之家办理约6万人民币，其中：</p>
						<p>* 布谷服务费：4万人民币</p>
						<p>* 官方及第三方费用：1.2-2万人民币</p>
						<p>（备注：汇率按照1:5计算）</p>
						<br/>
					</div>	
					<table class="table table-striped">
						<thead style="background-color:rgb(12,86,214);color:#FFFFFF;">
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
            <!--/span-->
          <!-- </div> --><!--/row-->
          
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