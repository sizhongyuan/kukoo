<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8" />
        <title>kukoo后台管理系统</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <!-- google font -->

        <!-- styles -->
        <link href="<%=basePath %>backstage/css/bootstrap.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/bootstrap-responsive.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn-responsive.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn-helper.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn-icon.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/font-awesome.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/animate.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/uniform.default.css" rel="stylesheet" />
        
        <link href="<%=basePath %>backstage/css/DT_bootstrap.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/responsive-tables.css" rel="stylesheet" />

        <link href="<%=basePath %>backstage/css/select2.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/fullcalendar.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/bootstrap-wysihtml5.css" rel="stylesheet" />

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    </head>
	<body>
        <!-- section header -->
        <header class="header">
            <!--nav bar helper-->
            <div class="navbar-helper">
                <div class="row-fluid">
                    <!--panel site-name-->
                    <div class="span2">
                        <div class="panel-sitename">
                            <h2><a href="index.html"><span class="color-teal">Ku</span>koo</a></h2>
                        </div>
                    </div>
                    <!--/panel name-->

                    <div class="span6">
                        <!--panel search-->
                        <div class="panel-search">
                            <form class="form-search" />
                                <div class="input-icon-append">
                                    <button type="submit" rel="tooltip-bottom" title="search" class="icon"><i class="icofont-search"></i></button>
                                    <input class="input-large search-query grd-white" maxlength="23" placeholder="Search here..." type="text" />
                                </div>
                            </form>
                        </div><!--/panel search-->
                    </div>
                    <div class="span4">
                        <!--panel button ext-->
                        <div class="panel-ext dropdown pull-right">
                            
                            <div class="btn-group user-group">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <img class="corner-all" align="middle" src="<%=basePath %>img/user-thumb.jpg" title="John Doe" alt="john doe" /> <!--this for display on PC device-->
                                    <button class="btn btn-small btn-inverse">John Doe</button> <!--this for display on tablet and phone device-->
                                </a>
                                <ul class="dropdown-menu dropdown-user" role="menu" aria-labelledby="dLabel">
                                    <li>
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="img-circle" src="<%=basePath %>img/user.jpg" title="profile" alt="profile" />
                                            </a>
                                            <div class="media-body description">
                                                <p><strong>John Doe</strong></p>
                                                <p class="muted">johndoe@mail.com</p>
                                                <p class="action"><a class="link" href="#">Activity</a> - <a class="link" href="#">Setting</a></p>
                                                <a href="bonus-page/resume/index.html" class="btn btn-primary btn-small btn-block">View Profile</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="dropdown-footer">
                                        <div>
                                            <a class="btn btn-small pull-right" href="login.html">Logout</a>
                                            <a class="btn btn-small" href="#">Add Account</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div><!--panel button ext-->
                    </div>
                </div>
            </div><!--/nav bar helper-->
        </header>

        <!-- section content -->
        <section class="section">
            <div class="row-fluid">
                <!-- span side-left -->
                <div class="span1">
                    <!--side bar-->
                    <aside class="side-left">
                        <ul class="sidebar">
                            <li class="active first"> <!--always define class .first for first-child of li element sidebar left-->
                                <a href="javascript:index();" title="dashboard">
                                    <div class="helper-font-24">
                                        <i class="icofont-dashboard"></i>
                                    </div>
                                    <span class="sidebar-text">用户管理</span>
                                </a>
                            </li>
                            <li>
                                <a href="interface.html" title="interface">
                                    <div class="helper-font-24">
                                        <i class="icofont-magnet"></i>
                                    </div>
                                    <span class="sidebar-text">项目介绍</span>
                                </a>
                            </li>
                            <li>
                                <a href="charts.html" title="charts">
                                    <div class="helper-font-24">
                                        <i class="icofont-bar-chart"></i>
                                    </div>
                                    <span class="sidebar-text">在线答题</span>
                                </a>
                            </li>
                            <li>
                                <a href="tables.html" title="table">
                                    <div class="helper-font-24">
                                        <i class="icofont-table"></i>
                                    </div>
                                    <span class="sidebar-text">详细信息采集</span>
                                </a>
                            </li>
                            <li>
                                <a href="grids.html" title="grids">
                                    <div class="helper-font-24">
                                        <i class="icofont-columns"></i>
                                    </div>
                                    <span class="sidebar-text">时间轴配置</span>
                                </a>
                            </li>
                            <li>
                                <a href="grids.html" title="grids">
                                    <div class="helper-font-24">
                                        <i class="icofont-columns"></i>
                                    </div>
                                    <span class="sidebar-text">用户日志采集</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons.html" title="icons">
                                    <div class="helper-font-24">
                                        <i class="icofont-star"></i>
                                    </div>
                                    <span class="sidebar-text">权限管理</span>
                                </a>
                            </li>
                           
                            <li>
                                <a href="#" title="more">
                                    <div class="badge badge-important">5</div>
                                    <div class="helper-font-24">
                                        <i class="icofont-th-large"></i>
                                    </div>
                                    <span class="sidebar-text">More</span>
                                </a>
                                <ul class="sub-sidebar corner-top shadow-silver-dark">
                                    <li>
                                        <a href="404.html" title="not found">
                                            <div class="helper-font-24">
                                                <i class="icofont-warning-sign"></i>
                                            </div>
                                            <span class="sidebar-text">404</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="login.html" title="login">
                                            <div class="helper-font-24">
                                                <i class="icofont-lock"></i>
                                            </div>
                                            <span class="sidebar-text">Login</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="invoice.html" title="invoice">
                                            <div class="helper-font-24">
                                                <i class="icofont-barcode"></i>
                                            </div>
                                            <span class="sidebar-text">Invoice</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="pricing.html" title="pricing table">
                                            <div class="helper-font-24">
                                                <i class="icofont-briefcase"></i>
                                            </div>
                                            <span class="sidebar-text">Pricing</span>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="bonus-page/resume/index.html" title="resume">
                                            <div class="helper-font-24">
                                                <i class="icofont-user"></i>
                                            </div>
                                            <span class="sidebar-text">Resume</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </aside><!--/side bar -->
                </div><!-- span side-left -->
                
                <!-- span content -->
                <div class="span11">
                    <!-- content -->
                    <div class="content">
                        <!-- content-header -->
                        <div class="content-header">
                          
                            <h2><i class="icofont-home"></i> 用户日志管理 <small>welcome to Kukoo</small></h2>
                        </div><!-- /content-header -->
                        
                        <!-- content-breadcrumb -->
                        <div class="content-breadcrumb">
                            <!--breadcrumb-nav-->
                            <!--
                            <ul class="breadcrumb-nav pull-right">
                                <li class="divider"></li>
                                <li class="btn-group">
                                    <a href="#" class="btn btn-small btn-link dropdown-toggle" data-toggle="dropdown">
                                        <i class="icofont-tasks"></i> Tasks
                                        <i class="icofont-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Some Action</a></li>
                                        <li><a href="#">Other Action</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Something Else</a></li>
                                    </ul>
                                </li>
                                <li class="divider"></li>
                                <li class="btn-group">
                                    <a href="#" class="btn btn-small btn-link">
                                        <i class="icofont-money"></i> Orders <span class="color-red">(+12)</span>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li class="btn-group">
                                    <a href="#" class="btn btn-small btn-link">
                                        <i class="icofont-user"></i> Users <span class="color-red">(+34)</span>
                                    </a>
                                </li>
                            </ul>-->
                            <!--/breadcrumb-nav-->
                            
                            <!--breadcrumb-->
                            <ul class="breadcrumb">
                                <li><a href="index.html"><i class="icofont-home"></i> Kukoo</a> <span class="divider">&rsaquo;</span></li>
                                <li class="active">用户日志管理</li>
                            </ul><!--/breadcrumb-->
                        </div><!-- /content-breadcrumb -->
                        
                        <!-- content-body -->
                        <div class="content-body">
                            <!-- dashboar -->
                            <!-- <div class="divider-content"><span></span></div>-->
                            
                            <!-- tab stat -->
                            <!-- /tab stat -->

                            <!-- tab resume content -->
                            <div class="row-fluid" id="paging">
                                <div class="span12">
                                    <div class="box corner-all">
                                        <div class="box-header grd-white corner-top">
                                            <div class="header-control">
                                                <a data-box="collapse"><i class="icofont-caret-up"></i></a>
                                                <a data-box="close" data-hide="bounceOutRight">&times;</a>
                                            </div>
                                            <span>详细信息列表</span>
                                        </div>
                                        <div class="box-body">
                                            <table id="datatablestools" class="table table-hover responsive">
                                                <thead>
                                                    <tr>
                                                    	   <th>序号</th>
                                                        <th>用户名</th>
                                                        <th>用户Ip地址</th>
                                                        <th>日志标题</th>
                                                        <th>请求链接</th>
                                                        <th>请求时长</th>
                                                        <th>访问时间</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="index" items="${page.list }" varStatus="status">
                                                    	   <tr class="gradeA">
	                                                        <td>${status.index+1 }</td>
	                                                        <td>${index.user_id}</td>
	                                                        <td>${index.remote_addr }</td>
	                                                        <td class="center">${index.title }</td>
	                                                        <td class="center">${index.request_uri }</td>
	                                                        <td class="center">${index.timeout }</td>
	                                                        <td class="center">${index.operate_date }</td>
	                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                            <div class="row-fluid">
                                                <div class="span4">
	                                                <div class="message">
								                        共<i class="blue">${page.total}</i>条记录，当前显示第&nbsp;<i
								                            class="blue">${page.pageNum}/${page.pages}</i>&nbsp;页
							                    	   </div>
                                                </div>
                                                <div class="span8">
                                                    <div class="pagination pagination-right">
	                                                  <ul>
	                                                      <!-- <li class="disabled"><a href="#">Prev</a></li>
	                                                      <li class="active"><a href="#">1</a></li>
	                                                      <li><a href="#">2</a></li>
	                                                      <li><a href="#">3</a></li>
	                                                      <li><a href="#">4</a></li>
	                                                      <li><a href="#">Next</a></li> -->
	                                                         <c:if test="${!page.isFirstPage}">
								                                <li><a href="<%=basePath %>/main/showSystemLog?pageNum=${page.firstPage}">首页</a></li>
								                                <li><a href="javascript:queryLogs(${page.prePage});">上一页</a></li>
								                            </c:if>
								                            <c:forEach items="${page.navigatepageNums}" var="navigatepageNum">
								                            
								                                <c:if test="${navigatepageNum==page.pageNum}">
								                                    <li class="active"><a href="<%=basePath %>/main/showSystemLog?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
								                                </c:if>
								                                <c:if test="${navigatepageNum!=page.pageNum}">
								                                    <li><a href="<%=basePath %>/main/showSystemLog?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
								                                </c:if>
								                            </c:forEach>
								                            <c:if test="${!page.isLastPage}">
								                                <li><a href="javascript:queryLogs(${page.nextPage});">下一页</a></li>
								                                <li><a href="javascript:queryLogs(${page.lastPage});">最后一页</a></li>
								                            </c:if>
	                                                   </ul>
	                                              </div>  
                                                </div>
                                            </div>
                                            
											                                          
                                        </div><!-- /box-body -->
                                    </div><!-- /box -->
                                </div><!-- /span -->
                                
                            </div><!-- tab stat -->
                            
                            <!--/dashboar-->
                        </div><!--/content-body -->
                    </div><!-- /content -->
                </div><!-- /span content -->
                
                
            </div>
        </section>

        <!-- section footer -->
        <footer>
            <a rel="to-top" href="#top"><i class="icofont-circle-arrow-up"></i></a>
        </footer>

        <!-- javascript
        ================================================== -->
        <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
        <script src="<%=basePath %>backstage/js/jquery.js"></script>
        <script src="<%=basePath %>backstage/js/jquery-ui.min.js"></script>
        <script src="<%=basePath %>backstage/js/bootstrap.js"></script>
        <script src="<%=basePath %>backstage/js/uniform/jquery.uniform.js"></script>
        <script src="<%=basePath %>backstage/js/peity/jquery.peity.js"></script>
        
        <script src="<%=basePath %>backstage/js/datatables/jquery.dataTables.min.js"></script>
        <script src="<%=basePath %>backstage/js/datatables/extras/ZeroClipboard.js"></script>
        <script src="<%=basePath %>backstage/js/datatables/extras/TableTools.min.js"></script>
        <script src="<%=basePath %>backstage/js/datatables/DT_bootstrap.js"></script>
        <script src="<%=basePath %>backstage/js/responsive-tables/responsive-tables.js"></script>

        <script src="<%=basePath %>backstage/js/select2/select2.js"></script>
        <script src="<%=basePath %>backstage/js/knob/jquery.knob.js"></script>
        <script src="<%=basePath %>backstage/js/flot/jquery.flot.js"></script>
        <script src="<%=basePath %>backstage/js/flot/jquery.flot.resize.js"></script>
        <script src="<%=basePath %>backstage/js/flot/jquery.flot.categories.js"></script>
        <script src="<%=basePath %>backstage/js/wysihtml5/wysihtml5-0.3.0.js"></script>
        <script src="<%=basePath %>backstage/js/wysihtml5/bootstrap-wysihtml5.js"></script>
        <script src="<%=basePath %>backstage/js/calendar/fullcalendar.js"></script> <!-- this plugin required jquery ui-->

        <!-- required stilearn template js, for full feature-->
        <script src="<%=basePath %>backstage/js/holder.js"></script>
        <script src="<%=basePath %>backstage/js/stilearn-base.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                // try your js
                
                // normalize event tab-stat, we hack something here couse the flot re-draw event is any some bugs for this case
                $('#tab-stat > a[data-toggle="tab"]').on('shown', function(){
                    if(sessionStorage.mode == 4){ // this hack only for mode side-only
                        $('body,html').animate({
                            scrollTop: 0
                        }, 'slow');
                    }
                });
                
                // peity chart
                $("span[data-chart=peity-bar]").peity("bar");
                
                // Input tags with select2
                $('input[name=reseiver]').select2({
                    tags:[]
                });
                
                // uniform
                $('[data-form=uniform]').uniform();
                
                // wysihtml5
                $('[data-form=wysihtml5]').wysihtml5()
                toolbar = $('[data-form=wysihtml5]').prev();
                btn = toolbar.find('.btn');
                
                $.each(btn, function(k, v){
                    $(v).addClass('btn-mini')
                });
                
                // Server stat circular by knob
                $("input[data-chart=knob]").knob();
                
                // system stat flot
                d1 = [ ['jan', 231], ['feb', 243], ['mar', 323], ['apr', 352], ['maj', 354], ['jun', 467], ['jul', 429] ];
                d2 = [ ['jan', 87], ['feb', 67], ['mar', 96], ['apr', 105], ['maj', 98], ['jun', 53], ['jul', 87] ];
                d3 = [ ['jan', 34], ['feb', 27], ['mar', 46], ['apr', 65], ['maj', 47], ['jun', 79], ['jul', 95] ];
                
                var visitor = $("#visitor-stat"),
                order = $("#order-stat"),
                user = $("#user-stat"),
                
                data_visitor = [{
                        data: d1,
                        color: '#00A600'
                    }],
                data_order = [{
                        data: d2,
                        color: '#2E8DEF'
                    }],
                data_user = [{
                        data: d3,
                        color: '#DC572E'
                    }],
                 
                
                options_lines = {
                    series: {
                        lines: {
                            show: true,
                            fill: true
                        },
                        points: {
                            show: true
                        },
                        hoverable: true
                    },
                    grid: {
                        backgroundColor: '#FFFFFF',
                        borderWidth: 1,
                        borderColor: '#CDCDCD',
                        hoverable: true
                    },
                    legend: {
                        show: false
                    },
                    xaxis: {
                        mode: "categories",
                        tickLength: 0
                    },
                    yaxis: {
                        autoscaleMargin: 2
                    }
        
                };
                
                // render stat flot
                $.plot(visitor, data_visitor, options_lines);
                $.plot(order, data_order, options_lines);
                $.plot(user, data_user, options_lines);
                
                // tootips chart
                function showTooltip(x, y, contents) {
                    $('<div id="tooltip" class="bg-black corner-all color-white">' + contents + '</div>').css( {
                        position: 'absolute',
                        display: 'none',
                        top: y + 5,
                        left: x + 5,
                        border: '0px',
                        padding: '2px 10px 2px 10px',
                        opacity: 0.9,
                        'font-size' : '11px'
                    }).appendTo("body").fadeIn(200);
                }

                var previousPoint = null;
                $('#visitor-stat, #order-stat, #user-stat').bind("plothover", function (event, pos, item) {
                    
                    if (item) {
                        if (previousPoint != item.dataIndex) {
                            previousPoint = item.dataIndex;

                            $("#tooltip").remove();
                            var x = item.datapoint[0].toFixed(2),
                            y = item.datapoint[1].toFixed(2);
                            label = item.series.xaxis.ticks[item.datapoint[0]].label;
                            
                            showTooltip(item.pageX, item.pageY,
                            label + " = " + y);
                        }
                    }
                    else {
                        $("#tooltip").remove();
                        previousPoint = null;            
                    }
                    
                });
                // end tootips chart
                
                
                // Schedule Calendar
                var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		
                var calendar = $('#schedule').fullCalendar({
                    header: {
                        left: 'title',
                        center: '',
                        right: 'prev,next today,month,basicWeek,basicDay'
                    },
                    events: [
                        {
                            title: 'Start a project',
                            start: new Date(y, m, 1)
                        },
                        {
                            title: 'interview and data collection',
                            start: new Date(y, m, 3),
                            end: new Date(y, m, 7)
                        },
                        {
                            title: 'Creating design interface',
                            start: new Date(y, m, 9),
                            end: new Date(y, m, 12)
                        },
                        {
                            title: 'Meeting',
                            start: new Date(y, m, 19, 10, 30),
                            allDay: false
                        },
                        {
                            title: 'Meeting',
                            start: new Date(y, m, 28, 10, 30),
                            allDay: false
                        },
                        {
                            title: 'Date',
                            start: new Date(y, m, d, 12, 0),
                            end: new Date(y, m, d, 14, 0),
                            allDay: false
                        },
                        {
                            title: 'Birthday Party',
                            start: new Date(y, m, d+1, 19, 0),
                            end: new Date(y, m, d+1, 22, 30),
                            allDay: false
                        }
                    ]
                });
                // end Schedule Calendar
            });
      
            function queryLogs(pageNum) {
            		alert(pageNum);
                $("#paging").load("<%=basePath %>/main/showSystemLog?pageNum=" + pageNum);
            }
            function index(){
            		alert("index");
            }
            $("#waitWork").click(function(){
	            	 var url = "请求地址";
	            	 var data = {type:1};
	            	 $.ajax({
		            	  type : "get",
		            	  async : false, //同步请求
		            	  url : url,
		            	  data : data,
		            	  timeout:1000,
		            	  success:function(dates){
			            	  //alert(dates);
			            	  $("#mainContent").html(dates);//要刷新的div
		            	  },
		            	  error: function() {
	            	        // alert("失败，请稍后再试！");
	            	      }
	            	 });
            	 });
        </script>
    </body>
</html>