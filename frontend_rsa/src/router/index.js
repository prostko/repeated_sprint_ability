import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Sprints from '@/views/Sprints'
import Tickets from '@/views/Tickets'
import Principals from '@/views/Principals'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      component: HelloWorld
    },
    {
      path: '/sprints',
      component: Sprints
    },
    {
      path: '/tickets',
      component: Tickets
    },
    {
      path: '/principals',
      component: Principals
    }
  ]
})
