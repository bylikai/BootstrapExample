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

<body>
	<!-- tab表头信息 -->
	<ul class="nav nav-tabs">
		<li><a href="#home" data-toggle="tab">首页</a>
		</li>
		<li><a href="#profile" data-toggle="tab">介绍</a>
		</li>
		<li><a href="#messages" data-toggle="tab">消息</a>
		</li>
		<li><a href="#settings" data-toggle="tab">设置</a>
		</li>
		<li class="active"><a href="#jquery_dom" data-toggle="tab">JQuery DOM</a>
		</li>
	</ul>

	<!-- tab内容 -->
	<div class="tab-content">
		<div class="tab-pane" id="home"><%@ include file='/jsp/home.jsp'%></div>
		<div class="tab-pane" id="profile">2</div>
		<div class="tab-pane" id="messages">3</div>
		<div class="tab-pane" id="settings">4</div>
		<div class="tab-pane active" id="jquery_dom"><%@ include file='/jsp/jquery_dom.jsp'%></div>
	</div>
		
	
</body>
</html>
