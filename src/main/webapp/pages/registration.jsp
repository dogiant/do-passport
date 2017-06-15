<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh-cmn-Hans" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="zh-cmn-Hans" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="zh-cmn-Hans"> <!--<![endif]-->  
<head>
    <title>用户注册_荆楚贷</title>

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
                <li class="active">注册</li>
            </ul>
        </div>
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            	<s:fielderror />
        		<s:form class="reg-page" action="regist_doreg" method="post" id="signupForm">
        			<s:hidden name="activate" value="true"></s:hidden>
					<s:hidden name="returnUrl" value="%{#returnUrl}"></s:hidden>
					<s:hidden name="parentId" value="%{#parentId}"></s:hidden>
                    <div class="reg-header">
                        <h2>注册一个新帐户</h2>
                        <p>已经注册? 点击 <a href="login.do" class="color-green">此处</a> 登录您的帐户.</p>                    
                    </div>
					<div class="row col-sm-12">
                    	<label>用户名</label>
                    	<input id="userName" name="userName" type="text" class="form-control margin-bottom-10">
                    </div>
                    
                    <div class="row col-sm-12">
                    	<label class="margin-top-20">昵称</label>
                    	<input id="nickname" name="nickname" type="text" class="form-control margin-bottom-10">
                    </div>
                    
                    <div class="row col-sm-12">
                    	<label class="margin-top-20">手机/邮箱<span class="color-red">*</span></label>
                    	<input id="account" name="account" type="text" class="form-control margin-bottom-10">
					</div>
					
                    <div class="row">
                        <div class="col-sm-6">
                            <label class="margin-top-20">密码 <span class="color-red">*</span></label>
                            <input id="password" name="password" type="password" class="form-control margin-bottom-10">
                        </div>
                        <div class="col-sm-6">
                            <label class="margin-top-20">确认密码 <span class="color-red">*</span></label>
                            <input id="confirmPassword" name="confirmPassword" type="password" class="form-control margin-bottom-10">
                        </div>
                    </div>
                    
					<div class="row margin-top-20">
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
					<div></div>
                    <hr>

                    <div class="row">
                        <div class="col-lg-6 checkbox">
                            <label>
                                <input id="agreeCheck" type="checkbox" name="agree" />
                                我已阅读 <a href="protocal.html" class="color-green">用户注册协议</a>
                            </label>                        
                        </div>
                        <div class="col-lg-6 text-right">
                            <button class="btn-u" type="submit">注册</button>                        
                        </div>
                    </div>
                </s:form>
            </div>
        </div>
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
</div>

<!-- JS Global Compulsory -->           
<script type="text/javascript" src="assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<!-- JS Implementing Plugins -->            
<script type="text/javascript" src="assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="assets/js/plugins/style-switcher.js"></script>
<script type="text/javascript" src="assets/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery.form.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
		$("#signupForm").validate({
			onkeyup: false,
			rules: {
				"userName": {
					required: false,
					userNameCheck: true,
					minlength: 3,
					maxlength: 20,
					remote:{
						url : "checkUserNameExists.do",
						cache : false,
						type: "post",
				        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
				        data: {
				        	userName: function() {
				            	return $("#userName").val();
				          	}
				        }
					}
				},
				"nickname": {
					required: false,
					minlength: 2,
					nicknameMaxLength: true,
					nicknameCheck: true,
					remote: {
				        url: "checkNicknameExists.do",
				        cache : false,
				        type: "post",
				        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
				        data: {
				        	nickname: function() {
				            	return $("#nickname").val();
				          	}
				        }
				    }
				},
				"account": {
					required: true,
					accountCheck: true,
					remote: {
				        url: "checkAccountExists.do",
				        cache : false,
				        type: "post",
				        contentType: "application/x-www-form-urlencoded; charset=utf-8", 
				        data: {
				        	account: function() {
				            	return $("#account").val();
				          	}
				        }
				    }
				},
				"password": {
					required: true,
					regexPassword: true,
					rangelength:[6,18]
				},
				"confirmPassword": {
					required: true,
					equalTo: "#password"
				},
				"captcha": {
					required: true,
					remote: {
						type: "post",
	        			url : "captchaValidate.do", 
	        			dataType:'json',
	        			data: {
	        				captcha: function() {
				            	return $("#captcha").val();
				          	}
	        			}
					}
				},
				"agree":{
					required: true
				}
			},
			messages: {
				"userName": {
					required: "请输入用户名",
					userNameCheck: "用户名只允许包括小写英文字母、数字和下划线",
					minlength: "用户名至少3位字符",
					maxlength: "用户名不能超过20字符",
					remote: "用户名已存在"
				},
				"nickname": {
					required: "请输入昵称",
					minlength: "昵称至少2个字",
					maxlength: "昵称不能超过16个字符",
					nicknameCheck: "昵称只能包括中文字、英文字母、数字和下划线",
					remote: "昵称已使用"
				},
				"account": {
					required: "请输入手机或邮箱",
					accountCheck: "请输入正确的手机号或者真实的邮箱地址",
					remote: "您输入的手机或邮箱已被使用"
				},
				"password": {
					required: "请输入密码",
					regexPassword:"6~18个字符(字母，数字，符号),区分大小写",
					rangelength:$.validator.format("密码长度必须在{0}-{1}个字符之间")
				},
				"confirmPassword": {
					required: "请重复一遍密码",
					equalTo: "您输入的密码跟前面输入的密码不一样"
				},
				"captcha": {
					required: "请输入验证码",
					remote: "验证码错误"
				},
				"agree":{
					required: "请阅读并同意《用户注册协议》"
				}
			},
			debug: true,
			errorElement: "div",
			errorPlacement: function(error, element) {
				if(element.attr("name")=="captcha" ){
					element.parent().parent().parent().next("div").html("");
					error.appendTo(element.parent().parent().parent().next("div"));
				}else{
					error.appendTo(element.parent());
				}
			},
			highlight: function(element, errorClass, validClass) { 
				if($(element).attr("name")=="captcha" ){
					$('#captchaImg').attr("src","checkcode.do?t="+new Date().getTime());
				}
			},
	       	submitHandler: function() {  
	       		signSubmit();
	        	return false;  
	        }
		});
		$("#captchaChange").click(function(){
        	$('#captchaImg').attr("src","checkcode.do?t="+new Date().getTime());
        	return false;
        });
    });
    
    
 	// 用户名字符验证       
    jQuery.validator.addMethod("userNameCheck", function(value, element) {       
       return this.optional(element) || /^[a-z0-9_]+$/.test(value);       
    }, "用户名只允许包括小写英文字母、数字和下划线");
    jQuery.validator.addMethod("nicknameMaxLength", function(value, element) { 
    	var b = false;
        var len=0;   
        for(var i=0;i<value.length;i++){
        	var c = value.charCodeAt(i) > 255 ? 2 : 1;
            len += c;   
        }
        if(len<=16){
        	b = true;
        }
        return this.optional(element) || b;       
     }, "昵称不能超过16个字符");
 	// 昵称字符验证       
    jQuery.validator.addMethod("nicknameCheck", function(value, element) {
       return this.optional(element) || /^[\u3007\u3400-\u4DB5\u4E00-\u9FCB\uE815-\uE864.@\w]+$/gi.test(value);       
    }, "昵称只能包括中文字、英文字母、数字和下划线");
 	
    jQuery.validator.addMethod("accountCheck", function(value, element) {
    	var b = false;
        if(value.indexOf("@")!=-1){
        	//邮箱验证
        	if(value.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)){ 
        		b = true;
        	}
        }else{
        	//手机
        	if(value.match(/^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/)){
        		b = true;
        	}
        }
        return this.optional(element) || b;        
     }, "请输入正确的手机号或者真实的邮箱地址")
 	
	jQuery.validator.addMethod("regexPassword", function(value, element) {  
        return this.optional(element) || /^[\~\`\!\@\#\$\%\^\&\*\(\)\-\+\=\{\}\[\]\:\;\"\'\<\>\,\.\?\/\w]{6,18}$/.test(value);  
    }, "6~18个字符(字母，数字，符号均可)");
    var signCallBack = function(data) {
    	if(data.success){
    		var href="activate.do"
    		if(typeof(data.key)!="undefined"){
    			href = href + "?key="+data.key;
    		}
    		if(typeof(data.parentId)!="undefined" && data.parentId!=""){
    			href = href + "&parentId="+data.parentId;
    		}
    		if(typeof(data.info.returnUrl)!="undefined" && data.info.returnUrl!=""){
    			href = href + "&returnUrl=" + data.info.returnUrl;
			}
    		window.location.href = href;
		} else {
			alert("注册失败！提示信息：" + data.info.returnMsg);
		}
	};
	var signSubmit = function() {
		var queryString = $("#signupForm").fieldSerialize();
		var options = {
			type : "post",
			dataType : "json",
			url : "api/signUpApi.do",
			data : queryString,
			cache : "false",
			success : signCallBack
		};
		// 异步提交登陆请求  
		$("#signupForm").ajaxSubmit(options);
	};
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html> 