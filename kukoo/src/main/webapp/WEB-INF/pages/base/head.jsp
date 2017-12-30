<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String servicePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
	String myToken  =(String)  request.getSession().getAttribute("sessionToken");
%>
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
	
</head>
<body>

</body>
</html>