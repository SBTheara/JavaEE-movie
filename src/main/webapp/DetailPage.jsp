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
    <script src="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/@mdi/font/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/vuetify@2.5.0/dist/vuetify.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/style/header.css">
    <link rel="stylesheet" href="/resources/style/dbComponent.css">
    <title>Title</title>
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
    <div id="details">
        <img alt="" src="https://www.themoviedb.org/t/p/original/qMxAmzGQO722q0UlssCOPhrXmvX.jpg"/>
        <div class="movie-status">
            <p>New Episodes</p>
            <h1>Avenger 2012</h1>
            <div class="rated">
                <div class="pg13">PG13</div>
                <div class="quality">HD</div>
                <span>Fantasy, Sci-fi, Action, Adventure</span>
            </div>

            <div class="release-info">
                <div class="release-date">
                    <v-icon
                            dark
                            right
                    >
                        mdi-calendar-badge
                    </v-icon>
                    <span>Release data : 12-12-2012</span>
                    <v-icon class="rated-icon ml-4">mdi-star</v-icon>
                    <span>9.6</span>
                </div>
                <div class="story-line">
                    <span>The story revolves around the formation of a superhero team called the Avengers, consisting of Earth's mightiest heroes, who are brought
                    together to save the world from a powerful and malevolent threat.</span>
                </div>
                <div class="option-info">
                    <div class="option-info-child">
                        <div class="share">
                            <v-icon>mdi-share</v-icon>
                            <span>share</span>
                        </div>
                        <div class="prime-video">
                            <h4>Prime video</h4>
                            <h5>Streaming channel</h5>
                        </div>
                        <template>
                            <v-btn height="100%" rounded text>
                                <v-icon>mdi-play</v-icon>
                                <span>Play</span>
                            </v-btn>
                        </template>
                    </div>
                </div>
            </div>
        </div>
        <div class="download">
            <v-btn rounded width="400px" height="150px" color="#FF6F00">
                <span style="font-size: 40px;font-weight: bold">DOWNLOAD</span>
                <v-icon size="40px">mdi-download</v-icon>
            </v-btn>
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
