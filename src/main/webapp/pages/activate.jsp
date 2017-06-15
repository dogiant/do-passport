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
<title>帐户激活_荆楚贷</title>

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
					<li class="active">帐户激活</li>
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
					<h2>还差一步即可完成注册</h2>
				</div>

				<div class="mod-step-detail" style="position: relative;">
					<div class="forgot-auth-container">

						<p class="step-form-info">我们已经向您的
						<s:if test="%{#activateType==1 }">手机 ${activateReceiver} 发送了一条包含激活验证码的短信</s:if>
						<s:elseif test="%{#activateType==2 }">邮箱 ${activateReceiver } 发送了一封包含激活验证码的邮件</s:elseif>
						，请在下面的表单输入激活验证码！</p>
						<div class="forgot-auth-type m-t10" id="email-auth">
						
								<div class="forgot-auth-title"><s:if test="%{#activateType==1 }">手机</s:if><s:elseif test="%{#activateType==2 }">邮箱</s:elseif>验证</div>
								<div class="row">
									<div class="col-md-4">
										<div class="margin-bottom-30">
										<label class="form-2-label">
										<s:if test="%{#activateType==1 }">手机：</s:if>
										<s:elseif test="%{#activateType==2 }">邮箱：</s:elseif>
										</label>
										<span>${activateReceiver}</span>
										</div>
									</div>
									<div class="col-md-8">
										<div class="margin-bottom-30">
											没收到激活验证码? <a id="sendAgain" class="link" style="cursor: pointer;" activateType="${activateType }" key="${key }">再发送一次</a>
										</div>
									</div>
								</div>
								<p class="verify-method">验证码：</p>
								<div class="row">
									<s:form method="post" id="activateForm">
										<s:hidden name="autoLogin" value="true"></s:hidden>
										<s:hidden name="key" value="%{#key}"></s:hidden>
										<s:hidden name="activateType" value="%{#activateType}"></s:hidden>
										<s:hidden name="returnUrl" value="%{#returnUrl}"></s:hidden>
										<s:hidden name="parentId" value="%{#parentId}"></s:hidden>
										<div class="col-md-4">
											<div class="input-group margin-bottom-30 ">
												<span class="input-group-addon"><i class="fa fa-key"></i></span>
												<input id="activateCode" name="activateCode" type="text" class="form-control" placeholder="请输入验证码">
											</div>
											<div></div>
										</div>
										<div class="col-md-8">
											<div class="margin-bottom-30">
												<button type="submit" class="btn-u">提交验证激活</button>
											</div>
										</div>
									</s:form>
								</div>

						</div>
					</div>
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
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
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
		$("#activateForm").validate({
			onkeyup: false,
			rules: {
				"activateCode": {
					required: true,
					rangelength:[4,6]
				}
			},
			messages: {
				"activateCode": {
					required: "请输入验证码",
					rangelength:$.validator.format("验证码长度在{0}-{1}个字符之间")
				}
			},
			debug: true,
			errorElement: "div",
			errorPlacement: function(error, element) {
				element.parent("div").next("div").html(error);
    		},
	       	submitHandler: function() {  
	       		activateSubmit();
	        	return false;  
	        }
		});
		$("#sendAgain").click(function(){
			var key = $(this).attr("key");
			var activateType = $(this).attr("activateType");
			$.post("api/activateCodeSendAgainApi.do",{"key":key,"activateType":activateType},function(result){
			    if(result.success){
			    	alert("激活验证码重新发送成功!")
			    }else{
			    	if(typeof(data.result)!='undefined'){
			    		alert(data.result);
			    	}
			    }
			});
		});
    });
    var activateCallBack = function(data) {
    	if(data.success){
    		alert("您的帐户激活成功！感谢注册荆楚贷！");
    		if(typeof(data.info.returnUrl)!="undefined" && data.info.returnUrl!=""){
    			//成功，跳转到相应的页面
    			window.location.href = data.info.returnUrl;
			}
		} else {
			alert("提示信息：" + data.result);
		}
	};
	var activateSubmit = function() {
		var queryString = $("#activateForm").fieldSerialize();
		var options = {
			type : "post",
			dataType : "json",
			url : "api/activateApi.do",
			data : queryString,
			cache : "false",
			success : activateCallBack
		};
		// 异步提交登陆请求  
		$("#activateForm").ajaxSubmit(options);
	};
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html> 