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
    <script src="/resources/javascript/App.js"></script>
    <link rel="stylesheet" href="/resources/style/header.css">
    <title>Title</title>
</head>
<body>
    <div id="app">
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
        <div style="display: block;justify-content: center;height:100vh" class="overflow">
            <db-slider :items="movies" style="object-fit: contain;display: flex">
            </db-slider>
        </div>
        <div style="display: flex;justify-content: center;">
            <db-connect></db-connect>
        </div>
        <br>
        <h1>Continue watching</h1>
        <br>
        <db-list-movie :items="movies"></db-list-movie>
    </div>
<script>
    new Vue({
        el: '#app',
        vuetify: new Vuetify(),
        data() {
            return {
                items: [
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg',
                    },
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/sky.jpg',
                    },
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/bird.jpg',
                    },
                    {
                        src: 'https://cdn.vuetifyjs.com/images/carousel/planet.jpg',
                    },
                ],
                movies: [
                    {
                        movie: 'Avenger 2012',
                        src: 'https://www.themoviedb.org/t/p/original/qMxAmzGQO722q0UlssCOPhrXmvX.jpg'
                    },
                    {
                        movie: 'Avenger Age of ultrons',
                        src: 'https://www.komar.de/media/catalog/product/cache/5/image/9df78eab33525d08d6e5fb8d27136e95/4/-/4-4125_avengers_age_of_ultron-movie-poster_web.jpg'
                    },
                    {
                        movie: 'Avenger infinity war',
                        src: 'https://cdn.europosters.eu/image/750/plastic-frame-avengers-infinity-war-one-sheet-i69678.jpg'
                    },
                    {
                        movie: 'Avenger end game',
                        src: 'https://images-na.ssl-images-amazon.com/images/I/91zzAMkVCUL._AC_UL600_SR600,600_.jpg'
                    },
                    {
                        movie: 'Spiderman Homecoming',
                        src: 'https://cdn.europosters.eu/image/750/posters/spider-man-homecoming-teaser-i47518.jpg'
                    },
                    {
                        movie: 'Spiderman no way home',
                        src: 'https://i.ebayimg.com/images/g/EtoAAOSwYUFj~R7m/s-l1200.webp'
                    },

                ]
            };
        },
    });
</script>
</body>
</html>
