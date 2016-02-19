<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 1/19/16
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC update user</title>
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/mystyle.css"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>SpringMVC Update User Information</h1>
    <hr/>

    <form:form action="/updateUserPost" method="post" commandName="user" role="form">
        <div class="form-group">
            <label for="firstName">First Name:</label><form:errors path="firstName" cssClass="code"/>
            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter FirstName:"
                   value="${user.firstName}"/>
        </div>
        <div class="form-group">
            <label for="lastName">Last Name:</label><form:errors path="lastName" cssClass="code"/>
            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter LastName:"
                   value="${user.lastName}"/>
        </div>
        <div class="form-group">
            <label for="password">Password:</label><form:errors path="password" cssClass="code"/>
            <input type="text" class="form-control" id="password" name="password" placeholder="Enter Password:"
                   value="${user.password}"/>
        </div>
        <!-- 把 id 一并写入 user 中 -->
        <input type="hidden" id="id" name="id" value="${user.id}"/>

        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">submit</button>
        </div>
    </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
