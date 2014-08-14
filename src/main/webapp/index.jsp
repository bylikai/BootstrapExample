<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>BootstrapExample</title>
<script type="text/javascript" language="javascript"
	src="<%=basePath%>/js/jquery.min.js"></script>
<script type="text/javascript" language="javascript"
	src="<%=basePath%>/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css">
</head>

<body class="container">
	<!-- tab表头信息 -->
	<ul class="nav nav-tabs">
		<li class="active"><a href="#home" data-toggle="tab">首页</a>
		</li>
		<li><a href="#profile" data-toggle="tab">介绍</a>
		</li>
		<li><a href="#messages" data-toggle="tab">消息</a>
		</li>
		<li><a href="#jquery_form" data-toggle="tab">表格/表单</a>
		</li>
		<li><a href="#jquery_dom" data-toggle="tab">JQuery DOM</a>
		</li>
	</ul>

	<!-- tab内容 -->
	<div class="tab-content">
		<div class="tab-pane active" id="home"><%@ include file='/jsp/home.jsp'%></div>
		<div class="tab-pane" id="profile">2</div>
		<div class="tab-pane" id="messages">3</div>
		<div class="tab-pane" id="jquery_form"><%@ include file='/jsp/jquery_form.jsp'%></div>
		<div class="tab-pane" id="jquery_dom"><%@ include file='/jsp/jquery_dom.jsp'%></div>
	</div>
		
	
</body>
</html>
