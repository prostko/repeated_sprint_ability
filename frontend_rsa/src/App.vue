<template>
  <div id="app">
    <div class="text-center">
      <h1>RSA: Repeated Sprint Ability</h1>
      <h3>Agile Sprint Performance Tracker</h3>
    </div>

    <b-nav tabs align="center" fill>
      <b-nav-item to="/sprints" active-class="active">Sprints</b-nav-item>
      <b-nav-item to="/tickets" active-class="active">Tickets</b-nav-item>
      <b-nav-item to="/principals" active-class="active">Principals</b-nav-item>
    </b-nav>

    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
