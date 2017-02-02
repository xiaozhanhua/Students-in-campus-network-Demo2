<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>帖子-学生校园网</title>
    <style type="text/css">
        .myleft{
            margin-bottom: 10px;
            padding-left: 10px;
            padding-right: 10px;
        }
        .myright{
            margin-bottom: 30px;
        }
    </style>
    <!-- 引入bootstrap.css文件 -->
    <link href="css/lib/bootstrap.css" rel="stylesheet">
    <!--[if lt IE 8]>
    <script src="js/lib/html5.js"></script>
    <script src="js/lib/respond.js"></script>
    <![endif]-->
</head>

<body style="background: #fff;">

 <!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
    <div class="container"style="margin-top:20px; ">
        <ol class=" breadcrumb">
            <li><a href="query.action?">论坛社区首页</a></li>
          
	          <li class="active">${post.title }</li>
        </ol>
        <div class=" myleft table-bordered">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                <input type="hidden" name="param" value="1"/>
                    <h2 style="text-align: center"><strong>${post.title }</strong></h2>
                    <small style="display:block;text-align: center">用户：${post.uid }&nbsp;&nbsp;发帖时间：${post.time} </small>
                    <hr>
                    <h4 style="line-height: 30px">
                    ${post.content }
                    </h4>
                </div>
            </div>
        </div>
        <div class=" myright table-bordered">
            <h3 style="margin-left: 10px"><strong>最新评论</strong></h3>
         	<!-- <form action="queryreply.action">
			<input type="submit" value="显示我的回帖" />
		   </form> -->
		   <c:forEach var="reply" items="${replys}">
	         <div class="list-group myitem">
                <a href="#" class="list-group-item ">
                    <h4 class="list-group-item-heading">${reply.uid}</h4>
                    <p class="list-group-item-text">${reply.content}</p>
                </a>
            </div>
            </c:forEach>
            <a href="#" class="btn_post btn btn-danger" data-backdrop="static" data-toggle="modal" data-target="#postPopUp" style="margin-left: 10px;margin-bottom: 30px">我要回帖</a>
        </div>
    </div>
 
    <!--发帖弹框-->
    <div class="modal fade" id="postPopUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_modal2" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h3 class="modal-title" id="myModalLabel_modal2">发布我的帖子</h3>
                </div>
                <div class="modal-body">
                    <form action="replyAction.action" method="post" class="form-horizontal" role="form">
               		    <div class="form-group">
                            <div class="col-sm-10">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-sm-2 control-label">帖子内容</label>
                            <div class="col-sm-10">
                             <input type="hidden" name="param" value="1"/> 
                            <textarea name="reply.content" value="${reply.content}" class="form-control" id="content" placeholder="请输入内容..." cols="79" rows="10"></textarea>
                            <input type="hidden" name="reply.uid" value="${userinfo.id }" />
                             <input type="hidden" name="reply.pid" value="${post.postid}" />
                            </div>
                        </div>
                        <div class="form-group" style="margin-right:10px;">
                    		<input type="submit" class=" pull-right btn btn-info "  value="回复" >
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	
<!--最底部信息结束-->
<%@ include file="footer.jsp" %>
<!-- 引入js文件 -->
<script src="js/lib/jquery.js"></script>
<script src="js/lib/bootstrap.js"></script>
</body>
</html>