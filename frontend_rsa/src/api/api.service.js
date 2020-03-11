import Vue from 'vue'
import axios from 'axios'
import VueAxios from 'vue-axios'

Vue.use(VueAxios, axios)
Vue.axios.defaults.headers.common['Accept'] = 'application/json'

const tokenEl = document.querySelector('meta[name=csrf-token]')

if (tokenEl) {
  const csrfToken = tokenEl.content
  Vue.axios.defaults.headers.common['X-CSRF-Token'] = csrfToken
}

export class SprintsApi {
  static index () {
    return Vue.axios.get('http://localhost:3000/sprints')
  }
}
