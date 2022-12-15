import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/Login.vue'

Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        name: 'login',
        component: HomeView
    },
    {
        path: '/home',
        name: 'home',
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () => import(/* webpackChunkName: "about" */ '../views/Home.vue'),
        children: [
            {
                path: "Display",
                name: "Display",
                component: () => import("../components/Display.vue")
            },
            {
                path: "Administrator",
                name: "Administrator",
                component: () => import("../components/Administrator.vue")
            },
            {
                path: "detail",
                name: "detail",
                component: () => import("../components/detail.vue")
            },
        ]
    }
]

export default new VueRouter({
    routes
})

