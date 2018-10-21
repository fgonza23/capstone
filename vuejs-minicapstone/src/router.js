import Vue from 'vue';
import Router from 'vue-router';

import DonationRequestsIndex from './views/DonationRequestsIndex.vue';
import DonationRequestsNew from './views/DonationRequestsNew.vue';
import DonationRequestsShow from './views/DonationRequestsShow.vue';

import Signup from './views/Signup.vue';
import Login from "./views/Login.vue";
import Logout from "./views/Logout.vue";

Vue.use(Router);

export default new Router({
  routes: [
    { path: '/', name: 'root', component: DonationRequestsIndex },

    { path: '/donation-requests', name: 'donation-requests-index', component: DonationRequestsIndex },
    { path: '/donation-requests/new', name: 'donation-requests-new', component: DonationRequestsNew },
    { path: '/donation-requests/:id', name: 'donation-requests-show', component: DonationRequestsShow },
    
    { path: '/signup', name: 'signup', component: Signup },
    { path: "/login", name: "login", component: Login },
    { path: "/logout", name: "logout", component: Logout }
  ]
});