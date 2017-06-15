<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-cmn-Hans" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="zh-cmn-Hans" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh-cmn-Hans">
<!--<![endif]-->
<head>
<title>忘记密码_荆楚贷</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='http://fonts.useso.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="assets/css/headers/header-default.css">
<link rel="stylesheet" href="assets/css/footers/footer-v1.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="assets/plugins/animate.css">
<link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="assets/plugins/brand-buttons/brand-buttons.css">
<link rel="stylesheet"
	href="assets/plugins/brand-buttons/brand-buttons-inversed.css">

<!-- CSS Page Style -->
<link rel="stylesheet" href="assets/css/pages/page_log_reg_v2.css"> 
<style>

.input-group-addon { min-width: 40px;}
</style>

<!-- CSS Theme -->
<link rel="stylesheet" href="assets/css/theme-colors/default.css"
	id="style_color">
<link rel="stylesheet" href="assets/css/theme-skins/dark.css">

<!-- CSS Customization -->
<link rel="stylesheet" href="assets/css/custom.css">
</head>

<body>
	<div class="wrapper">
		<!--=== Breadcrumbs ===-->
		<div class="breadcrumbs">
			<div class="container">
				<h1 class="pull-left">帐户设置</h1>
				<ul class="pull-right breadcrumb">
					<li><a href="/index.html">首页</a></li>
					<li class="active">忘记密码</li>
				</ul>
			</div>
		</div>
		<!--/breadcrumbs-->
		<!--=== End Breadcrumbs ===-->

		<!--=== Content Part ===-->
		<div class="container content">

			<div
				class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 reg-page">
				<div class="reg-header">
					<h2>取回密码</h2>
				</div>
				<div class="row brand-page margin-bottom-40">
					<div class="col-sm-6 col-md-3">
						<button class="btn btn-block btn-windows-inversed rounded">
							<i class="fa"></i>1、 确认帐户
						</button>
					</div>
					<div class="col-sm-6 col-md-3">
						<button class="btn btn-block">
							<i class="fa"></i>2、 安全验证
						</button>
					</div>
					<div class="col-sm-6 col-md-3">
						<button class="btn btn-block">
							<i class="fa"></i>3、 重置密码
						</button>
					</div>
				</div>
				<form action="passIndexApi.do" method="post" id="getPassIndexForm">
					<div class="mod-step-detail">
						<p class="step-email-info">请填写您需要找回的帐户:</p>
						<div class="input-group col-md-6">
							<span class="input-group-addon"><i class="fa fa-user"></i></span>
							<input type="text" id="account" name="account" placeholder="手机/邮箱/用户名" class="form-control">
						</div>
						<div class="margin-bottom-30"></div>

						<div class="hide" id="confirmLoginType">
							<p>请协助我们确认一下您输入的内容，便于更快的定位您的信息：</p>
							<div class="radio">
								<label class="radio"><input type="radio" name="radio"
									class="username"><i class="rounded-x"></i>我输入的是用户名</label>
							</div>
							<div class="radio">
								<label class="radio"><input type="radio" name="radio"
									class="securemobile"><i class="rounded-x"></i>我输入的是手机号</label>
							</div>
						</div>

						<div class="row">
							<div class="col-md-4">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-key"></i></span>
									<input type="text" id="captcha" name="captcha" class="form-control" placeholder="请输入验证码">
								</div>
							</div>
							<div class="col-md-8">
								<div>
									<img id="captchaImg" src="checkcode.do"
										onclick="this.src='checkcode.do?t='+new Date().getTime();"
										width="100" height="34" style="cursor: pointer" /> <span><span>看不清？</span><a
										id="captchaChange" class="link" style="cursor: pointer">换一张</a></span>
								</div>
							</div>
						</div>
						<div class="margin-bottom-30"></div>

						<div class="margin-bottom-30">
							<button type="submit" class="btn-u">下一步</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!--/container-->
		<!--=== End Content Part ===-->

		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								<script>
									document.write(new Date().getFullYear());
								</script>
								&copy; All Rights Reserved.
							</p>
						</div>
					</div>
				</div>
			</div>
			<!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
		<!--/wrapper-->
	</div>
	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
	<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery.validate.min.js"></script>
	<script type="text/javascript" src="assets/plugins/jquery.form.js"></script>
	<!-- JS Customization -->
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<!-- JS Page Level -->
	<script type="text/javascript" src="assets/js/app.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
    		$("#getPassIndexForm").validate({
    			onkeyup: false,
    			rules: {
    				"account": {
    					required: true,
   						remote: {
       						type: "post",
       	        			url : "checkUserNameAccountExists.do", 
       	        			dataType:'json',
       	        			data: {
       	        				account: function() {
       				            	return $("#account").val();
       				          	}
       	        			}
       					}
    				},
    				"captcha": {
    					required: true,
    					remote: {
    						type: "post",
    	        			url : "getPassIndex_captchaValidate.do", 
    	        			dataType:'json',
    	        			data: {
    	        				captcha: function() {
    				            	return $("#captcha").val();
    				          	}
    	        			}
    					}
    				}
    			},
    			messages: {
    				"account": {
    					required: "请输入您注册的手机/邮箱/用户名",
    					remote: "您输入的手机/邮箱/用户名不存在"
    				},
    				"captcha": {
    					required: "请输入验证码",
    					remote: "验证码错误"
    				}
    			},
    			debug: true,
    			errorElement: "div",
    			errorContainer: $("#warning, #summary"),
    			errorPlacement: function(error, element) {
					if(element.attr("name")=="captcha" ){
						element.parent().parent().parent().next("div").html("");
						error.appendTo(element.parent().parent().parent().next("div"));
					}else{
						element.parent().next("div").html("");
						error.appendTo(element.parent().next("div"));
					}
    			},
    			highlight: function(element, errorClass, validClass) { 
    				if($(element).attr("name")=="captcha" ){
    					$('#captchaImg').attr("src","checkcode.do?t="+new Date().getTime());
    				}
    			},
    			success: function(label) {
    				label.addClass("success");
    			}, 
    	       	submitHandler: function() {  
    	       		submit();
    	        	return false;  
    	        }
    		});

            $("#captchaChange").click(function(){
            	$('#captchaImg').attr("src","checkcode.do?t="+new Date().getTime());
            	return false;
            });
		});
		
		var submit = function (){
		    var queryString = $("#getPassIndexForm").fieldSerialize();
		    var options = {  
		        type : "post",  
		        dataType : "json",  
		        url : "api/passIndexApi.do",  
		        data : queryString,  
		        cache : "false",  
		        success : successCallBack
		    };  
		    $("#getPassIndexForm").ajaxSubmit(options);  
		};
        var successCallBack = function(data) {
        	if(data.success){
        		if(data.info.returnUrl && data.info.returnUrl!=""){
        			window.location.href=data.info.returnUrl;
        		}
        	}else{
        		if(data.info.returnCode=="-13"){
        			alert("对不起，您没有注册邮箱或手机号信息!不能通过验证码重置密码!");
        		}else{
        			alert("取回密码操作失败！提示信息：" + data.info.returnMsg);
        		}
        	}
        };
	</script>
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html> 