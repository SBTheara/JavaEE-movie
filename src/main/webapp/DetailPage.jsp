<%--
  Created by IntelliJ IDEA.
  User: Theara
  Date: 12/18/2023
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
    <link href="https://cdn.jsdelivr.net/npm/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.js"></script>
    <link rel="stylesheet" href="/resources/style/header.css">
    <title>Title</title>
    <style>
        #details {
            margin: 10%;
            display: -webkit-inline-flex;
        }

        #details img {
            width: 300px;
            height: 500px;
        }

        #details h1 {
            font-size: 60px;
            font-weight: bold;
        }

        #details .movie-status {
            margin-left: 50px;
        }

        #details .movie-status p {
            font-size: 30px;
            font-weight: bold;
            color: yellow;
        }

        .rated {
            display: flex;
        }

        .rated .pg13 {
            padding-left: 10px;
            padding-right: 10px;
            background-color: blue;
            display: flex;
            justify-content: center;
        }

        .rated .quality {
            padding-left: 10px;
            padding-right: 10px;
            border: blue 1px solid;
            display: flex;
            justify-content: center;
        }

        .rated span {
            margin-left: 20px;
        }
    </style>
</head>
<body>
<header>
    <nav>
        <ul class="nav_link">
            <li><a href="HomePage.jsp">Home</a></li>
            <li><a href="DetailPage.jsp">Detail</a></li>
            <li><a href="">Help</a></li>
            <li><a href="">About</a></li>
        </ul>
    </nav>
    <a href="" class="cta">
        <button>Contact</button>
    </a>
</header>
<div id="app">
    <div id="details" style="height: 50%;">
        <div><img src="https://www.themoviedb.org/t/p/original/qMxAmzGQO722q0UlssCOPhrXmvX.jpg" alt=""></div>
        <div class="movie-status">
            <p>New Episodes</p>
            <h1>Avenger 2012</h1>
            <div class="rated">
                <div class="pg13">PG13</div>
                <div class="quality">HD</div>
                <span>Fantasy, Sci-fi, Action, Adventure</span>
            </div>

            <div class="release-info" style="margin-top: 20px">
                <div class="release-date">
                    <v-icon
                            dark
                            right
                    >
                        mdi-calendar-badge
                    </v-icon>
                    <span>Release data : 12-12-2012</span>
                    <v-icon class="ml-4">mdi-star</v-icon>
                    <span>9.6</span>
                </div>
                <div style="width: 800px">
                    <span>The story revolves around the formation of a superhero team called the Avengers, consisting of Earth's mightiest heroes, who are brought
                    together to save the world from a powerful and malevolent threat.</span>
                </div>
                <div class="share"
                     style="display: flex;
                     align-items: center;
                     justify-content: space-between;
                     border-radius: 40px;
                     background-color: grey;
                     width: 700px;
                     height: 150px;
                     padding: 10px;
                     margin-top: 40px;">
                    <div style="
                        height: 60px;
                        display: flex;
                        width: 100%;
                        justify-content: space-around">
                        <div style="display: grid;align-content: space-between;">
                            <div style="justify-content: center;display: flex;">
                                <v-icon>mdi-share</v-icon>
                            </div>
                            <div><span>share</span></div>
                        </div>
                        <div style="display: grid;align-content: space-between;justify-content: start">
                            <div><h4>Prime video</h4></div>
                            <div><h5>Streaming channel</h5></div>
                        </div>
                        <template>
                            <v-btn height="100%" rounded flat>
                                <v-icon>mdi-video</v-icon>
                            </v-btn>
                        </template>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    new Vue({
        el: "#app",
        vuetify: new Vuetify()
    });
</script>
</body>
</html>
