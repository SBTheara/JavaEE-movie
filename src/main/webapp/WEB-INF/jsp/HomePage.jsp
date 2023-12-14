<%--
  Created by IntelliJ IDEA.
  User: Theara
  Date: 12/11/2023
  Time: 12:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <link href="https://cdn.jsdelivr.net/npm/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.js"></script>
    <title>Title</title>
    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            background-color: black;
        }
        header{
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 30px 10%;
        }
        .nav_link{
            list-style: none;
        }
        .nav_link li{
            display: inline-block;
            padding: 0px 20px;
        }
        .nav_link li a{
            transition: all 0.3s ease 0s;
        }
        .nav_link li a:hover{
            color: blue;
        }
        button{
            padding: 9px 25px;
            background-color: rgba(0,136,169,1);
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease 0s;
        }
        button:hover{
            color: blue;
        }
    </style>
</head>
<body>
<header>
    <nav>
        <ul class="nav_link">
            <li><a href="">Service</a></li>
            <li><a href="">Project</a></li>
            <li><a href="">Help</a></li>
            <li><a href="">About</a></li>
        </ul>
    </nav>
    <a href="" class="cta"><button>Contact</button></a>
</header>

<script>
    new Vue({
        el: '#app',
        vuetify: new Vuetify(),
        data() {
            return {

            };
        },
    });
</script>
</body>
</html>
