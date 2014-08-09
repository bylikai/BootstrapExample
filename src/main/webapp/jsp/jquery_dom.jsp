<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<style>
	.highlight{ background:#FF3300;}
</style>

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
		
		<div id="panel">
			<h2 class="head">什么是JQuery?</h2>
			<div class="content">
				Jquery是继prototype之后又一个优秀的Javascrīpt框架。它是轻量级的js库(压缩后只有21k) ，
				它兼容CSS3，还兼容各种浏览器 （IE 6.0+, FF 1.5+, Safari 2.0+, Opera 9.0+）。
				jQuery使用户能更方便地处理HTML documents、events、实现动画效果，并且方便地为网站提供AJAX交互。
				jQuery还有一个比较大的优势是，它的文档说明很全，而且各种应用也说得很详细，同时还有许多成熟的插件可供选择。
				jQuery能够使用户的html页保持代码和html内容分离，
				也就是说，不用再在html里面插入一堆js来调用命令了，只需定义id即可。
			</div>
		</div>
		
		<div id="bubble">
			外层div元素
			<span>内层span元素</span>
			外层div元素
		</div>
		<div id="msg"></div>
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
			
			//测试绑定事件
			$(function(){
				//测试点击事件
/* 				$("#panel h2.head").bind("click", function() {
					var $content = $(this).next();
					if( $content.is(":visible") ){
						$content.hide();
					}
					else {
						$content.show();
					}
				});	 */
				
				//测试鼠标移动事件
				$("#panel h2.head").bind("mouseover", function() {
					$(this).addClass("highlight");
					$(this).next().show();
				}).bind("mouseout", function(){
					$(this).removeClass("highlight");
					$(this).next().hide();
				});
				
				//测试光标悬停事件 hover( enter, leave )
/* 				$("#panel h2.head").hover( function(){
					$(this).next().show();
				}, function(){
					$(this).next().hide();
				});
				 */
				//测试 toggle
/* 				$("#panel h2.head").toggle( function(){
					$(this).next().show();
				}, function(){
					$(this).next().hide();
				}); */
				
				//测试SlideUp / Down
/* 				$("#panel h2.head").toggle(function(){
					$(this).next().slideUp(3000);
				}, function(){
					$(this).next().slideDown(3000);
				});	 */			
			});
			
			
/* 			$(function(){
				// 冒泡事件
				// 为span元素绑定click事件
				$("span").bind("click", function(){
					var txt = $("#msg")+"<p>内层span元素被单击</p>";
					$("#msg").html(txt);
					$(this).hide(5000);
				});
			}); */
		</script>
	</div>
</div>
 	