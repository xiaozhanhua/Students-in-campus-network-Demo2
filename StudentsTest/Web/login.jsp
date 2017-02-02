<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>用户登录</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
	.login_register ul,.myspan{
		display: none;
	}
	a{
		text-decoration: none;
	}
	a:hover{
		text-decoration: underline;
	}
	.loginbox{
		margin:50px auto;
		height:360px;
		border-radius:5px;
	}
	.mylogin{
		margin:20px auto;
		width:310px;
		height:300px;
	}
	.top{
		width:100%;
		height: 35px;
		margin-bottom: 30px;
	}
	.top #welcome{
		width:100px;
		font-size:26px;
		color:#34495E;
		line-height:35px;
		margin-bottom: 10px;
	}
	.top #goreg{
		font-size:14px;
		margin-left: 45px;
		line-height:35px;
	}
	#goreg a{
		color:#3498E1;
	}
	#pas{
		float:right;
		font-size:15px;
		color:#336699;
	}
	.user,.userpas{
		font-size:15px;
		width:300px;
		height:36px;
		padding-left:36px;
		border:1px solid #F0F0F0;
		margin-bottom: 15px;
	}
	.error{
		width:300px;
		height:23px;
		line-height:23px;
		padding-left:10px;
		font-size:14px;
		color:#BF2117;
		margin-left:4px;
		background:#F6E4F5;
		border:1px solid red;
		list-style: none;
	}
	.user{
		background: url(images/user1.png) 4px 6px no-repeat;
	}
	.user:focus{
		border:1px solid #3498DB;
		background: url(images/user2.png) 4px 6px no-repeat;
	}
	.userpas{
		background: url(images/userpas1.png) 4px 6px no-repeat;
	}
	.userpas:focus{
		border:1px solid #3498DB;
		background: url(images/userpas2.png) 4px 6px no-repeat;
	}
	.btn{
		font-size:15px;
		width:304px;
		height:40px;
		border:none;
		border-radius:5px;
		background: #3498DB;
		color:#fff;
	}
	.btn:hover{
		background: #46AAEA;
	}
</style>
</head>

<body>
 <!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
	<div class="loginbox" style="background-color: #fff;">
	<div class="mylogin">
	<div class="top">
		<span id="welcome">欢迎登录</span>
		<span id="goreg">还没有账号？<a href="register.action?param=0">立即注册</a></span>
	</div>
	<form action="login.action" method="post">
		<table  align="center">
			<tr>
				<input type="text" name="user.uname" placeholder="输入用户名" class="user"/>
			</tr>
			<tr >
				<input type="password" name="user.password" placeholder="输入密码" class="userpas"/>
			</tr>
			<tr >
				<td colspan="2">
					<input type="submit" name="btn" value="登录" class="btn">
				</td>
			</tr>
		</table>
	</form>
	</div>	
	</div>
</body>
</html>