<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/28
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>留言列表</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div style="margin:0px auto;" class="keleyitable"><h2>添加留言</h2>

    <form:form action="/user/addMessage/addP" method="post" role="form">
        <div class="form-group">
            <label for="messageTitle">标题:</label>
            <input type="text" class="form-control" id="messageTitle" name="messageTitle" placeholder="请输入标题"/>
        </div>
        <%--<div class="form-group">--%>
        <%--<label for="userByUserId.userId">留言人id:</label>--%>
        <%--<input type="text" class="form-control" id="userByUserId.userId" name="userByUserId.userId" placeholder="请输入id"/>--%>
        <%--</div>--%>
        <div class="form-group">
            <label for="userName">留言人:</label>
            <input type="text" class="form-control" id="userName" name="userName" placeholder="请输入用户名"/>
        </div>
        <div class="form-group">
            <label for="messageContent">内容:</label>
            <textarea class="form-control" id="messageContent" name="messageContent" rows="3" placeholder="请输入内容"></textarea>
        </div>
        <%--<input type="hidden" id="isShow" name="isShow" value="${message.isShow}"/>--%>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
