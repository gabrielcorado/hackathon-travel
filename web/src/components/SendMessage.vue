<template>
  <section class="send-message__container">
    <form @submit="sendMessage">
      <section class="columns">
        <section class="column send-message__input">
          <input type="text" class="input" v-model="message">
        </section>
        <section class="column is-narrow send-message__input">
          <button type="submit" class="button">Send</button>
        </section>
      </section>
    </form>
  </section>
</template>

<script>
export default {
  // Default data
  data () {
    return {
      message: ''
    }
  },
  created () {
    // Dispatch the message
    this.$store.dispatch('sendBotMessage')
  },
  //
  methods: {
    sendMessage (e) {
      // Check empty message
      if (this.message !== '') {
        // Dispatch the message
        this.$store.dispatch('sendMessage', { text: this.message, self: true })

        // Reset the value
        this.message = ''
      }

      // Prevent the default event
      e.preventDefault()
    }
  }
}
</script>

<style lang="sass">
</style>
