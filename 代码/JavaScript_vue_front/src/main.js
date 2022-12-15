import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import 'animate.css';
import {postRequest} from "./utils/request";
import {putRequest} from "./utils/request";
import {getRequest} from "./utils/request";
import {deleteRequest} from "./utils/request";

Vue.use(ElementUI);
Vue.config.productionTip = false

//插件形式使用请求
Vue.prototype.postRequest = postRequest;
Vue.prototype.putRequest = putRequest;
Vue.prototype.getRequest = getRequest;
Vue.prototype.deleteRequest = deleteRequest;
router.beforeEach((to, from, next) => {
    if (window.sessionStorage.getItem('token')) {
        next();
    } else {
        if (to.path === '/') {
            next();
        } else {
            next('/?redirect=' + to.path);
        }
    }
})
new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')
