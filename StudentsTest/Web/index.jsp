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
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <title>学生校园网</title>
</head>

 <!-- 导入顶部导航栏 -->
 	<%@ include file="header.jsp" %>
<!--轮播图-->
<div id="carousel-example-generic" class=" carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active center-block">
            <img src="images/02.jpg" alt="图片"   style="width: 100%;height: 400px">
            <div class="carousel-caption">
                <h3>【毕业季】</h3>
                <p>你总说毕业遥遥无期,才发现时间从不停留</p>
            </div>
        </div>
        <div class="item">
            <img src="images/01.jpg" alt="图片" style="width: 100%;height: 400px">
        <div class="carousel-caption">
            <h3>【毕业季】</h3>
            <p>你总说毕业遥遥无期,才发现时间从不停留</p>
        </div>
         </div>
        <div class="item">
            <img src="images/03.jpg" alt="图片"  style="width: 100%;height: 400px">
            <div class="carousel-caption">
                <h3>【毕业季】</h3>
                <p>你总说毕业遥遥无期,才发现时间从不停留</p>
            </div>
        </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<!--content-->
<div class="content">
    <div class="container">
        <div class="content-top-top">
        <div class="content-top">
            <div class="col-md-4 wel">
                <div class="content-text">
                    <h5><strong>学校要闻</strong></h5>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 wel">
                <div class="content-text">
                    <h5><strong>番职资讯</strong></h5>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="col-md-4 wel">
                <div class="content-text">
                    <h5><strong>校园动态</strong></h5>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div><!-- container结束-->


    <div class="events">
        <div class="container">
            <h2>校园天地</h2>
            <div class="events-top">
                <div class="col-sm-4 top-event">
                    <a href="single.html"><img src="images/1.png" class="img-responsive" alt=""></a>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                    <div class="col-sm-4 top-event">
                    <a href="single.html"><img src="images/2.png" class="img-responsive" alt=""></a>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                    <div class="col-sm-4 top-event">
                    <a href="single.html"><img src="images/3.png" class="img-responsive" alt=""></a>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                <div class="clearfix"> </div>
            </div>
            <div class="events-top">
                <div class="col-sm-4 top-event">
                    <a href="single.html"><img src="images/4.png" class="img-responsive" alt=""></a>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                    <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                    <div class="col-sm-4 top-event">
                    <a href="single.html"><img src="images/5.png" class="img-responsive" alt=""></a>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                    <div class="col-sm-4 top-event">
                    <a href="single.html"><img src="images/6.png" class="img-responsive" alt=""></a>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                        <a href="#">刘佳环率队参加广州大学创新创业交流会</a><br>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!--even结束-->
</div>
</div>
	<!--最底部信息结束-->
<%@ include file="footer.jsp" %>
<!-- 引入js文件 -->
<script src="js/lib/jquery.js"></script>
<script src="js/lib/bootstrap.js"></script>
</body>
</html>