<template>
  <div class="container">
    <h4>graph to come</h4>

    <div class="sprint-table">
      <ul>
        <li v-for="sprint in sprints" :key="sprint.id">
          {{ sprint }}
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import { FETCH_SPRINTS } from '@/store/actions'

export default {
  name: 'Sprints',
  data () {
    return {
    }
  },
  methods: {
    ...mapActions([
      FETCH_SPRINTS
    ])
  },
  computed: {
    ...mapGetters({
      sprints: 'getSprints'
    })
  },
  created () {
    this.fetchSprints()
  }
}
</script>

<style scoped>

</style>
