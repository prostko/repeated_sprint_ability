import Vue from 'vue'
import Vuex from 'vuex'
import sprints from '@/store/modules/sprints'

Vue.use(Vuex)

const debug = process.env.NODE_ENV !== 'production'

export default new Vuex.Store({
  modules: {
    sprints
  },
  strict: debug,
  plugins: []
})
