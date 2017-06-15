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
						<button class="btn btn-block">
							<i class="fa"></i>1、 确认帐户
						</button>
					</div>
					<div class="col-sm-6 col-md-3">
						<button class="btn btn-block">
							<i class="fa"></i>2、 安全验证
						</button>
					</div>
					<div class="col-sm-6 col-md-3">
						<button class="btn btn-block btn-windows-inversed rounded">
							<i class="fa"></i>3、 重置密码
						</button>
					</div>
				</div>

				<div id="modify" class="mod-step-detail">
					<!-- 
					<p class="step-form-tip m_l80">您正在找回的帐号是：dogiant</p>
					 -->
					<form action="passResetApi.do" method="post" id="resetPwdForm">
					
						<div class="input-group col-md-6">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input id="password" name="password" type="password" class="form-control" placeholder="请输入新密码">
						</div>
						<div class="margin-bottom-20"></div>
						<div class="input-group col-md-6">
							<span class="input-group-addon"><i class="fa fa-lock"></i></span>
							<input id="confirmPassword" name="confirmPassword" type="password" class="form-control"
								placeholder="确认新密码">
						</div>
						<div class="margin-bottom-20"></div>
						<div class="margin-bottom-30">
							<button type="submit" class="btn-u">确定</button>
						</div>
					</form>
				</div>

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
			$("#resetPwdForm").validate({
				onkeyup: false,
				rules: {
					"password": {
						required: true,
						regexPassword: true,
						rangelength:[6,18]
					},
					"confirmPassword": {
						required: true,
						equalTo: "#password"
					}
				},
				messages: {
					"password": {
						required: "请输入密码",
						regexPassword:"6~18个字符(字母，数字，符号均可),区分大小写",
						rangelength:$.validator.format("密码长度必须在{0}-{1}个字符之间")
					},
					"confirmPassword": {
						required: "请重复一遍密码",
						equalTo: "您输入的密码跟前面输入的密码不一样"
					}
				},
				debug: true,
				errorElement: "div",
				errorPlacement: function(error, element) {
					element.parent("div").next("div").html(error);
	    		},
		       	submitHandler: function() {  
		       		submit();
		        	return false;  
		        }
			});
		});
		jQuery.validator.addMethod("regexPassword", function(value, element) {  
	        return this.optional(element) || /^[\~\`\!\@\#\$\%\^\&\*\(\)\-\+\=\{\}\[\]\:\;\"\'\<\>\,\.\?\/\w]{6,18}$/.test(value);  
	    }, "6~18个字符(字母，数字，符号均可)");
		
	    var callback = function(data) {
	    	if(data.success){
	    		alert("成功修改密码，将跳转到登录页面.");
	    		if(typeof(data.returnUrl)!="undefined" && data.returnUrl!=""){
	    			//成功，跳转到相应的页面
	    			window.location.href = data.returnUrl;
				}
			} else {
				alert("提示信息：" + data.result);
			}
		};
		var submit = function() {
			var queryString = $("#resetPwdForm").fieldSerialize();
			var options = {
				type : "post",
				dataType : "json",
				url : "api/passResetApi.do",
				data : queryString,
				cache : "false",
				success : callback
			};
			// 异步提交登陆请求  
			$("#resetPwdForm").ajaxSubmit(options);
		};
	</script>
	<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html> 