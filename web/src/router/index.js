import {
    createRouter,
    createWebHashHistory,
} from 'vue-router'

import Index from '~/pages/index.vue'
import Login from '~/pages/login.vue'
import NotFound from '~/pages/404.vue'
import Mall from '~/pages/mall.vue'

const routes = [{
    path:"/",
    component:Index
},{
    path:"/login",
    component:Login
},{
    path: '/:pathMatch(.*)*',
    name: 'NotFound', 
    component: NotFound
},{
    path:"/mall",
    component:Mall
}
]

const router = createRouter({
    history:createWebHashHistory(),
    routes
})

export default router