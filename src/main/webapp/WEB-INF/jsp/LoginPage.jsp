<%--
  Created by IntelliJ IDEA.
  User: sambathth
  Date: 12/11/2023
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
  <link href="https://cdn.jsdelivr.net/npm/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.js"></script>
  <style>
    #login-container{
      background-color: aquamarine;
      width: 100%;
      height: 100%;
    }
  </style>
  <title>Login page</title>
</head>
<body>
  <div id="app" style="height: 100%;width: 100%;display:flex;align-items: center;justify-content: center">
    <form action="login" method="post">
      <input type="text" name="username"><br><br>
      <input type="password" name="password"><br><br>
      <input type="submit" value="submit"><br><br>
    </form>
  </div>
</body>
</html>
