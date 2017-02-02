<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.hzboy.orm.Post"%>
<html>
<head>

<title>论坛社区-学生校园网</title>
<style type="text/css">
	   .navbar{
            margin-bottom:10px;
        }
	 .btn_post{
            margin-left:15px;
        }
	
</style>
</head>
<body>
	 <!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
 	
 <div class=" alert alert-info alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <strong>社区公告：</strong> 请各位小伙伴文明发帖！
</div>
<a href="#" class="btn_post btn btn-info" data-backdrop="static" data-toggle="modal" data-target="#postPopUp">前往发帖</a>
<div class="panel-body" >
	<table  class="table table-hover" >
		     <tr>
                <th>帖子主题</th>
                <th>发帖人</th>
            </tr>
		<c:forEach var="post" items="${posts}">
			<tr>
				<td><a href="showpost.action?param=0&id=${post.postid}">${post.title}</a></td>
				<td>${post.uid}</td>
			</tr>
		</c:forEach>
	</table>
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
                    <form action="postAction.action" method="post" class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="title" class="col-sm-2 control-label">帖子主题</label>
                            <div class="col-sm-10">
                             <input type="hidden" name="param" value="1"/> 
                            <input type="text" name="post.title" value="${post.title}" class="form-control" id="title" placeholder="请输入主题..." />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="content" class="col-sm-2 control-label">帖子内容</label>
                            <div class="col-sm-10">
                            <textarea name="post.content" value="${post.content}" class="form-control" id="content" placeholder="请输入内容..." cols="79" rows="10" size="18"></textarea>
                             <input type="hidden" name="post.uid" value="${userinfo.id }" />
                            </div>
                        </div>
                        <div class="form-group" style="margin-right:10px;">
                    		<input type="submit" class=" pull-right btn btn-info "  value="发布" >
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	
	<!--最底部信息结束-->
<%@ include file="footer.jsp" %>
</body>
</html>
