<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="container">
	<div>
		<h1>JQuery DOM TEST</h1>
		<p><strong>选择你喜欢的水果?</strong></p>
		<ul>
			<li title="apple">苹果</li>
			<li title="orange">橘子</li>
			<li title="pinapple">菠萝</li>
		</ul>
		<input type="text" id="address" value="请输入邮箱地址" >
	</div>
	
		<br />
	<div>
		<input type="button" class="btn btn-success" onclick="btn_1();" value="测试 html()" >
		<input type="button" class="btn btn-success" onclick="btn_2();" value="测试text()" >
		<input type="button" class="btn btn-success" onclick="btn_3();" value="测试val()" >
		<input type="button" class="btn btn-success" onclick="btn_4();" value="测试next()" >
		<input type="button" class="btn btn-success" onclick="btn_5();" value="测试siblings()" >
		<script >
			//测试 html()
			function btn_1() {
				var p_html = $('p').html();
				alert(p_html);
			}
			//测试text()
			function btn_2() {
				var p_html = $('p').text();
				alert(p_html);
			}
			//测试val()
			function btn_3() {
				var address = $('#address').val();
				alert(address);
			}
			//测试next()
			function btn_4() {
				var $p1=$('p').next();
				alert($p1.html());
			}
			//测试siblings()
			function btn_5() {
				var $p2=$('p').siblings();
				alert($p2.html());
			}
			
			
			$('#address').focus(function(){
				var txt_val = $(this).val(); //获取值
				if(txt_val==this.defaultValue) {
					$(this).val(""); //设置值
				}
			});
			$('#address').blur(function(){
				var txt_val = $(this).val(); //获取值
				if(txt_val=="") {
					$(this).val(this.defaultValue); //设置值
				}
			});
		</script>
	</div>
</div>
 	