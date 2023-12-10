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
</head>
<body>
<div id="app"></div>

<script>
    new Vue({
        el: '#app',
        vuetify: new Vuetify(),
        data() {
            return {
                drawer: null,
                items: [
                    ['mdi-email', 'Inbox'],
                    ['mdi-account-supervisor-circle', 'Supervisors'],
                    ['mdi-clock-start', 'Clock-in'],
                ],
                cards: [
                    { title: 'Pre-fab homes', src: 'https://cdn.vuetifyjs.com/images/cards/house.jpg', flex: 12 },
                    { title: 'Favorite road trips', src: 'https://cdn.vuetifyjs.com/images/cards/road.jpg', flex: 6 },
                    { title: 'Best airlines', src: 'https://cdn.vuetifyjs.com/images/cards/plane.jpg', flex: 6 },
                ],
            };
        },
        template: `
           <v-app id="inspire">
				<v-app-bar >
				  <v-app-bar-nav-icon></v-app-bar-nav-icon>

				  <v-app-bar-title>Application</v-app-bar-title>

				  <v-spacer></v-spacer>

				  <v-btn icon="mdi-dots-vertical">
				  </v-btn>
				</v-app-bar>

				<v-main>
				  <v-container fluid>
					  <v-row dense>
						<v-col
						  v-for="card in cards"
						  :key="card.title"
						  :cols="card.flex"
						>
						  <v-card>
							<v-img
							  :src="card.src"
							  class="align-end"
							  gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
							  height="20vh"
							  cover
							>
							  <v-card-title class="text-white" v-text="card.title"></v-card-title>
							</v-img>

							<v-card-actions>
							  <v-spacer></v-spacer>

							  <v-btn size="small" color="surface-variant" variant="text" icon="mdi-heart"></v-btn>

							  <v-btn size="small" color="surface-variant" variant="text" icon="mdi-bookmark"></v-btn>

							  <v-btn size="small" color="surface-variant" variant="text" icon="mdi-share-variant"></v-btn>
							</v-card-actions>
						  </v-card>
						</v-col>
					  </v-row>
					</v-container>
				</v-main>
		  </v-app>
      `
    });
</script>
</body>
</html>
