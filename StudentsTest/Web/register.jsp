<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<title>新用户注册</title>
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
	.pic{
		float:left;
		width:630px;
		height:380px;
	}
	.loginbox{
		margin:50px auto;
		height:370px;
		background: #fff;
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
	.top #register{
		width:100px;
		font-size:26px;
		color:#34495E;
		line-height:35px;
		margin-bottom: 10px;
	}
	.top #gologin{
		font-size:14px;
		margin-left: 60px;
		line-height:35px;
	}
	#gologin a{
		color:#3498E1;
	}
	.user,.userpas{
		font-size:12px;
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
		list-style: none;
		background:#F6E4F5;
		border:1px solid red;
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
		color:#fff;
		background: #46AAEA;
	}
</style>
</head>

<body>
	<!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
	<div class="loginbox">
	<div class="mylogin">
	<div class="top">
		<span id="register">用户注册</span>
		<span id="gologin">已有账号？<a href="login.jsp">马上登录</a></span>
	</div>
	<s:form action="register.action" method="post">
		<table  align="center">
			<tr>
				<input type="hidden" name="param" value="1"/>
				<input type="text" name="user.uname" value="${user.uname }" placeholder="输入11位数字的学号" class="user"/>
			</tr>
			<tr >
				<input type="password" name="user.password" value="${user.password }" placeholder="设置密码" class="userpas"/>
			</tr>
			<tr >
				<td colspan="2">
					<input type="submit" name="btn" value="立即注册" class="btn">
				</td>
			</tr>
		</table>
	</s:form>
	</div>	
	</div>
</body>
</html>