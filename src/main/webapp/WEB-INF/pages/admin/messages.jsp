<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/28
  Time: 15:15
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
    <title>管理留言列表</title>

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
<div style="margin:0px auto;" class="keleyitable"><h2>留言列表</h2>

    <c:forEach items="${messageList}" var="message">
        <table class="table table-bordered table-striped">
            <tr>
                <td>留言人：${message.userName}</td>
            </tr>
            <tr>
                <td>标题：${message.messageTitle}</td>
            </tr>
            <tr>
                <td>内容：${message.messageContent}</td>
            </tr>
            <tr>
                <td>时间：${message.submitTime}</td>
            </tr>
            <tr>
                <td>
                    <a href="/admin/messages/update/${message.messageId}" type="button" class="btn btn-sm btn-warning">修改</a>
                    <a href="/admin/messages/delete/${message.messageId}" type="button"
                       class="btn btn-sm btn-danger">删除</a>
                    <c:if test="${message.isShow == 1 || message.isShow == null}">
                        展示
                    </c:if>
                    <c:if test="${message.isShow == 0}">
                        不展示
                    </c:if>
                </td>
            </tr>
        </table>
    </c:forEach>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>