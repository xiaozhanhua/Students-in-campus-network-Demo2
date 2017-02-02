<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>帖子-学生校园网</title>
<style type="text/css">
@media only screen and (min-width:982px) and (max-width: 1500px) {
	.myleft {
		width: 50%;
		height: 500px;
		padding-top: 20px;
		float: left;
		padding-right: 50px;
	}
	.myleft img {
		height: 450px;
	}
	.myright {
		float: right;
		width: 50%;
		height: 500px;
		padding: 15px;
	}
}

@media screen and (max-width: 980px) {
	.myleft {
		width: 100%;
	}
	.myleft img {
		height: 450px;
		width: 100%;
	}
	.myright {
		width: 100%;
	}
}

}
</style>
<!-- 引入bootstrap.css文件 -->
<link href="css/lib/bootstrap.css" rel="stylesheet">
<!--[if lt IE 8]>
    <script src="js/lib/html5.js"></script>
    <script src="js/lib/respond.js"></script>
    <![endif]-->
</head>

<body>

	<!-- 导入顶部导航栏 -->
	<%@ include file="header.jsp"%>
	
 <div class="container" style="margin-top:20px; ">
	 <ol class=" breadcrumb">
            <li><a href="productquery.action?">二手市场首页</a></li>
          
	          <li class="active">${product.title }</li>
        </ol>
        </div>
	<div class="container">
		<div class="myleft">
		 <input type="hidden" name="param" value="1"/>
			<img src="save/${product.photoPath }">
		</div>
		<div class="myright">
			<h2 style="text-align: center; margin-bottom: 30px;">${product.title }</h2>
			<h4>
				价格：<span style="color:red">${product.price} 元</span></h4>
			<h4>
				发布者：${product.uid}</h4>
			<h4>
				发布时间： ${product.time}</h4>
			<h4>
				商品描述：${product.content }</h4>
		</div>
	</div>

<!--最底部信息结束-->
<%@ include file="footer.jsp" %>
	<!-- 引入js文件 -->
	<script src="js/lib/jquery.js"></script>
	<script src="js/lib/bootstrap.js"></script>
</body>
</html>