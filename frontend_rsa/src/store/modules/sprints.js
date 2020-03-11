import { SprintsApi } from '@/api/api.service'
import {
  FETCH_SPRINTS
} from '@/store/actions'
import {
  SET_SPRINTS
} from '@/store/mutations'

const state = {
  sprints: []
}

const getters = {
  getSprints (state) {
    return state.sprints
  }
}

const actions = {
  async [FETCH_SPRINTS] ({ commit }, _) {
    const { data } = await SprintsApi.index()
    commit(SET_SPRINTS, data)
  }
}

const mutations = {
  [SET_SPRINTS] (state, data) {
    // map over the relationships inside each sprint,
    // find the corresponding id in included tickets,
    // build them into an array
    // get rid of relationships key
    // set sprints to the output

    const sprint_data = data.data
    const includeds = data.included

    sprint_data.forEach(sprint => {
      sprint.tickets = sprint.relationships.tickets.data.map(data => {
        return includeds.find(included => { return included.type === data.type && included.id === data.id })
      })
    })

    const sprints = sprint_data.map(sprint => {
      return {
        id: sprint.id,
        ...sprint.attributes,
        tickets: sprint.tickets.map(ticket => ({ id: ticket.id, ...ticket.attributes }))
      }
    })

    state.sprints = sprints
  }
}

export default {
  state,
  getters,
  actions,
  mutations
}
