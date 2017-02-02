<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 引入bootstrap.css文件 -->
    <link href="css/lib/bootstrap.css" rel="stylesheet">
    <style type="text/css">
   	.myname{
    		color:#fff;
    		line-height:45px;
    	}
    </style>
    <!--[if lt IE 8]>
    <script src="js/lib/html5.js"></script>
    <script src="js/lib/respond.js"></script>
    <![endif]-->
</head>

<body>
<!--导航栏-->
<div class="navbar navbar-inverse" role="navigation">
    <div class="navbar-header">
        　<!-- .navbar-toggle样式用于toggle收缩的内容，即nav-collapse collapse样式所在元素 -->
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="sr-only">Toggle Navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!-- 确保无论是宽屏还是窄屏，navbar-brand都显示 -->
        <a href="index.jsp" class="navbar-brand">学生校园网</a>
    </div>
    <!-- 屏幕宽度小于768px时，div.navbar-responsive-collapse容器里的内容都会隐藏，显示icon-bar图标，当点击icon-bar图标时，再展开。屏幕大于768px时，默认显示。 -->
    <div class="collapse navbar-collapse navbar-responsive-collapse">
        <ul class="nav navbar-nav">
            <li><a href="index.jsp">首页</a></li>
            <li><a href="query.action?">论坛社区</a></li>
            <li><a href="productquery.action?">闲鱼市场</a></li>
        </ul>
          		<%
					String user = "${userinfo.uname}";
					if(user!=null){%>
				 <p class="myname nav pull-right">${userinfo.uname } |<a class="exit" href="login.jsp"> 切换帐号</a></p> 
				<% } else{%>
        <ul class=" nav navbar-nav navbar-right">
            <li><a href="login.jsp">登录 / 注册</a></li>
        </ul>
        <% }%>
</div>
</div>
<!-- 引入js文件 -->
<script src="js/lib/jquery.js"></script>
<script src="js/lib/bootstrap.js"></script>
</body>
</html>