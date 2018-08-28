<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/28
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>修改留言</title>

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
<div class="container">
    <h1>修改留言</h1>
    <hr/>
    <form:form action="/admin/messages/updateP" method="post" role="form">
        <div class="form-group">
            <label>留言人:${message.userName}</label>
        </div>
        <div class="form-group">
            <label for="messageTitle">标题:</label>
            <input type="text" class="form-control" id="messageTitle" name="messageTitle" placeholder="请输入留言标题"
                   value="${message.messageTitle}"/>
        </div>
        <div class="form-group">
            <label for="messageContent">Content:</label>
            <textarea class="form-control" id="messageContent" name="messageContent" rows="3"
                      placeholder="Please Input Content">${message.messageContent}</textarea>
        </div>
        <div class="form-group">
            <label for="isShow">是否展示:</label>
                <%--<input type="text" class="form-control" id="isShow" name="isShow" placeholder="请输入留言标题" value="${message.isShow}"/>--%>
            <select class="form-control" id="isShow" name="isShow">
                <option value="1">展示</option>
                <option value="0">不展示</option>
            </select>
        </div>
        <%--<input type="hidden" id="isShow" name="isShow" value="${message.isShow}"/>--%>
        <input type="hidden" id="messageId" name="messageId" value="${message.messageId}"/>
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