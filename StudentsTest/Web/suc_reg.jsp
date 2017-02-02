<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>注册成功</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

.wrap {
	width: 1150px;
	height: 500px;
	margin: 0 auto;
	margin-top: 30px;
}

.wrap_header {
	height: 60px;;
	border-bottom: 1px solid #ccc;
}

.wrap_header ul {
	list-style-type: none;
}

.wrap_header ul li {
	float: left;
}

.head1 {
	margin-left: 15px;
	font-weight: bolder;
	font-size: 20px;
	margin-top: 25px;
	border-bottom: 3px solid #008DF3;
	padding-bottom: 8px;
}

.title {
	width: 700px;
	height: 200px;
	margin: 0 auto;
	margin-top: 80px;
}

#mes {
	font-size: 32px;
	color: red;
}

a {
	color: red;
}

a:hover {
	color: blue;
}
</style>
<script language="javascript" type="text/javascript">
	var i = 3;
	intervalid = setInterval("fun()", 1000);
	function fun() {
		if (i == 0) {
			window.location.href = "login.jsp";
			clearInterval(intervalid);
		}
		document.getElementById("mes").innerHTML = i;
		i--;
	}
</script>
</head>
<body>
	<!-- 导入顶部导航栏 -->
	<%@ include file="header.jsp"%>
	<div class="wrap">
		<div class="title">
			<h1 align="center" style="color: #000;">注册成功</h1>
			<div align="center">
				<i id="mes">3</i>&nbsp;秒后将自动返回登录页面，<a href="login.jsp">立即跳转</a>
			</div>
		</div>

	</div>
	<!--最底部信息结束-->
	<%@ include file="footer.jsp"%>
</body>
</html>