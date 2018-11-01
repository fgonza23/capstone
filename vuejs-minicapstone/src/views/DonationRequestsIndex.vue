<template>
  <div class="donation-requests-index">
    <div class="row">
      <div class="col-md-4" v-for="donation_request in donation_requests">
        <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">{{ donation_requests }}</h5>
              <div class="card-text">
              <ul>
                <li v-for=" donation_request in donation_requests"> {{ donation_request }}</li>
              </ul>
            </div>
            <router-link class="btn btn-primary" v-bind:to="'/donation_requests/' + donation_requests.id">More Info</router-link>
          </div>
      </div>
  </div>
</template>

<style>
</style>

<script>
var axios = require('axios');
export default {
  data: function() {
    return {
      recipes: []
    };
  },
  created: function() {
    axios
    .get("http://localhost:3000/api/donation_requests")
    .then(function(response) {
      this.donation_requests = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};
</script>

