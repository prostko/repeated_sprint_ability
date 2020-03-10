import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Sprints from '@/components/sprints/Sprints'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: '',
      component: HelloWorld
    },
    {
      path: '/sprints',
      name: 'Sprints',
      component: Sprints
    },
    {
      path: '/tickets',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/principals',
      name: 'HelloWorld',
      component: HelloWorld
    }
  ]
})
