<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-cmn-Hans" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="zh-cmn-Hans" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="zh-cmn-Hans"> <!--<![endif]-->  
<head>
    <title>用户登录_荆楚贷</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='http://fonts.useso.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="assets/css/headers/header-default.css">
    <link rel="stylesheet" href="assets/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/animate.css">
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->    
    <link rel="stylesheet" href="assets/css/pages/page_log_reg_v1.css">    

    <!-- CSS Theme -->    
    <link rel="stylesheet" href="assets/css/theme-colors/default.css" id="style_color">
    <link rel="stylesheet" href="assets/css/theme-skins/dark.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="assets/css/custom.css">
</head> 

<body>  
<div class="wrapper">
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">用户中心</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="/index.html">首页</a></li>
                <li class="active">登录</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">		
    	<div class="row">
            <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                <form  id="loginForm" action="auth_login.do" method="post" class="reg-page">
                	<s:hidden name="returnUrl" value="%{#returnUrl}"></s:hidden>
                    <div class="reg-header">            
                        <h2>登录</h2>
                        <p>还没有账户？ 点击 <a class="color-green" href="register.do">此处</a> 去注册.</p> 
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" id="account" name="account" placeholder="手机/邮箱/用户名" class="form-control">
                    </div>
                    <div class="margin-bottom-20"></div>      
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password"  id="password" name="password" placeholder="密 码" class="form-control">
                    </div>                    
					<div class="margin-bottom-20"></div> 
                    <div class="row">
                        <div class="col-md-6 checkbox">
                            <label><input type="checkbox" id="rememberMe" name="rememberMe"> 记住登录</label>                        
                        </div>
                        <div class="col-md-6">
                            <button class="btn-u pull-right" type="submit">登录</button>                        
                        </div>
                    </div>

                    <hr>

                    <h4>忘记密码 ?</h4>
                    <p>别担心, <a class="color-green" href="getPassIndex.do">点击此处</a> 重置密码.</p>
                </form>            
            </div>
        </div><!--/row-->
    </div><!--/container-->		
    <!--=== End Content Part ===-->

    <!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">                     
                        <p>
                            <script>document.write(new Date().getFullYear());</script> &copy; All Rights Reserved.
                        </p>
                    </div>
                </div>
            </div> 
        </div><!--/copyright-->
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
        
        $("#loginForm").validate({
			onkeyup: false,
			rules: {
				"account": {
					required: true
				},
				"password": {
					required: true
				}
			},
			messages: {
				"account": {
					required: "请输入用户名/邮箱/手机"
				},
				"password": {
					required: "请输入密码"
				}
			},
			debug: true,
			errorElement: "div",
			errorPlacement: function(error, element) {
				element.parent().next("div").html("");
				error.appendTo(element.parent().next("div"));
			},
			success: function(label) {
				label.attr("class","");
			}, 
	       	submitHandler: function() {  
	       		loginSubmit();
	        	return false;  
	        }
		});

    });
    
    var loginCallBack = function(data) {
    	if(data.success){
    		if(data.info.returnUrl && data.info.returnUrl!=""){
    			window.location.href=data.info.returnUrl;
    		}
    	}else{
    		alert("登录失败！提示信息：" + data.info.returnMsg);
    	}
    };
	var loginSubmit = function (){
	    var queryString = $("#loginForm").fieldSerialize();
	    var options = {  
	        type : "post",  
	        dataType : "json",  
	        url : "api/loginApi.do",  
	        data : queryString, 
	        cache : "false", 
	        success : loginCallBack
	    };  
	    $("#loginForm").ajaxSubmit(options);  
	};
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html> 