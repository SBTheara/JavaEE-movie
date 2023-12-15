Vue.component('db-slider', {
    props: {
        cycle: 500,
        items: [

        ]
    },
    data() {
        return {
        }
    },
    template: `
        <v-container fluid fill-height class="pa-2" style="padding-left: 5%;padding-right: 5%">
            <v-carousel hide-delimiters :show-arrows="false" class="d-flex justify-center pa-0" cycle height="100%">
                  <v-carousel-item
                      v-for="(item,i) in items"
                      :key="i"
                      :src="item.src" 
                  ></v-carousel-item>
            </v-carousel>
        </v-container>
    `
});

Vue.component('db-connect',{
    props: {
    },
    data(){
        return{
        }
    },
    template: `
         <div class="text-center align-center justify-md-space-between px-4">
            <v-btn class="pa-4" color="#3F51B5">
                <v-icon color="#ffffff">mdi-facebook</v-icon>
            </v-btn>
            <v-btn class="pa-4" color="#4CAF50">
                <v-icon color="#ffffff">mdi-whatsapp</v-icon>
            </v-btn>
            <v-btn class="pa-4" color="#FF1744">
                <v-icon color="#ffffff">mdi-google</v-icon>
            </v-btn>
            <v-btn class="pa-4" color="#212121">
                <v-icon color="#ffffff">mdi-github</v-icon>
            </v-btn>
        </div>
    `
})

Vue.component('db-list-movie',{
    props: {
        items:{}
    },
    template: `
            <v-container class="my-5 justify-space-around">
                <v-layout row wrap>
                    <v-flex xs12 md6 lg4 xl3 v-for="(item,i) in items" :key="i" style="padding:10px;" >
                        <v-card>
                            <v-img :src="item.src" style="height: 700px"></v-img>
                            <h2>{{item.movie}}</h2>
                        </v-card>
                    </v-flex>
                </v-layout>
        </div>
    `
});

