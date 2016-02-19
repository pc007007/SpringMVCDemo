<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 1/19/16
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SpringMVC user manage</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>SpringMVC User Manage</h1>
    <hr/>
    <h3>All users<a href="/addUser" type="button" class="btn btn-default btn-sm">Add</a> </h3>
    <!-- 如果用户列表为空 -->
    <c:if test="${empty userList}">
        <p class="bg-warning">
            <br/>
            User table is empty,please<a href="/addUser" type="button" class="btn btn-default btn-sm">Add</a>
            <br/>
            <br/>
        </p>
    </c:if>
    <!-- 如果用户列表非空 -->
    <c:if test="${!empty userList}">
        <table class="table table-bordered table-striped">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Password</th>
                <th>Action</th>
            </tr>

            <c:forEach items="${userList}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.firstName} ${user.lastName}</td>
                    <td>${user.password}</td>
                    <td>
                        <a href="/showUser/${user.id}" type="button" class="btn btn-sm btn-success">More</a>
                        <a href="/updateUser/${user.id}" type="button" class="btn btn-sm btn-warning">Change</a>
                        <a href="/deleteUser/${user.id}" type="button" class="btn btn-sm btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
</div>


<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</body>
</html>
