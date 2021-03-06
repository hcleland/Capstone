/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      stadiums: []
    };
  },
  created: function() {
    console.log('in the created');
    axios.get('/api/stadiums').then(function(response) {
      console.log(response.data);
      console.log("in the callback for places index");
      this.stadiums = response.data.stadiums;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [
  { path: "/", component: HomePage },
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});
