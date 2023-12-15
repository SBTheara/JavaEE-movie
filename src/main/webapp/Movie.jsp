<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <style>
        h1{
            color: red;
        }
    </style>
</head>
<body>

<h1> Movie titles </h1>
<ol>
    <c:forEach items="${movie}" var="mv">
        <li>${mv.getName()} <a href="WEB-INF/jsp">add</a></li>
    </c:forEach>
</ol>
</body>
</html>
