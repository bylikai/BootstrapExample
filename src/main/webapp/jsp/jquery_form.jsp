<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="container">
	<h2>表格展开关闭</h2>
	<div><span>筛选:</span><input type="text" id="filterName"/></div>
	<table class="table table-bordered table-hover">
		<thead>
			<tr><th class="col-md-4">姓名</th><th class="col-md-4">性别</th><th class="col-md-4">暂住地</th></tr>
		</thead>
		<tbody>
			<tr class="parent" id="row_01"><td colspan="3">前台设计组</td></tr>
			<tr class="child_row_01"><td>张山</td><td>女</td><td>浙江宁波</td></tr>
			<tr class="child_row_01"><td>张三</td><td>女</td><td>浙江杭州</td></tr>
			
			<tr class="parent" id="row_02"><td colspan="3">前台开发组</td></tr>
			<tr class="child_row_02"><td>李山</td><td>男</td><td>浙江宁波</td></tr>
			<tr class="child_row_02"><td>李三</td><td>男</td><td>浙江杭州</td></tr>
			
			<tr class="parent" id="row_03"><td colspan="3">后台架构组</td></tr>
			<tr class="child_row_03"><td>王山</td><td>男</td><td>浙江宁波</td></tr>
			<tr class="child_row_03"><td>网三</td><td>男</td><td>浙江杭州</td></tr>
			
			<tr class="parent" id="row_04"><td colspan="3">后台开发组</td></tr>
			<tr class="child_row_04"><td>刘山</td><td>男</td><td>浙江宁波</td></tr>
			<tr class="child_row_04"><td>刘三</td><td>男</td><td>浙江杭州</td></tr>
		</tbody>
	</table>
	
	
	<h2>网页选项卡</h2>
	<div >		
		<ul class="nav nav-tabs">
			<li class="active "><a href="#tab01" data-toggle="tab">时事</a></li>
			<li ><a href="#tab02" data-toggle="tab">体育</a></li>
			<li ><a href="#tab03" data-toggle="tab">娱乐</a></li>
			<li ><a href="#tab04" data-toggle="tab">新闻</a></li>
		</ul>
		
		<div class="tab-content tab_box">
			<div class="tab-pane active" id="tab01">时事</div>
			<div class="tab-pane" id="tab02">体育</div>
			<div class="tab-pane" id="tab03">娱乐</div>
			<div class="tab-pane" id="tab04">新闻</div>
		</div>
	</div>
	
	<script>
		$(function(){
			$("tr.parent").click(function(){
				$(this).toggleClass("selected").siblings(".child_"+this.id).toggle();
			});	
			
			//过滤:获取过滤值,判断是否包含
			$("#filterName").keyup(function(){
				$("table tbody tr").hide().filter(":contains('"+$(this).val()+"')").show();	
			});			
		});
	</script>
</div>
 	