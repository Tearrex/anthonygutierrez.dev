<script setup>
import { RouterView } from 'vue-router'
import PageHead from './components/PageHead.vue'
</script>

<template>
  <header>
    <!-- <img alt="Vue logo" class="logo" src="@/assets/logo.svg" width="125" height="125" /> -->

    <div class="wrapper">
      <PageHead msg="> Hello" />
    </div>
  </header>

  <RouterView />

  <!-- <footer>
    <h3>Let's network!
    </h3>
  </footer> -->
</template>

<style>
.socials {
  display: flex;
  gap: 5px;
  justify-content: center;
  margin-top: 1.5rem;
}

.socials svg {
  height: 100%;
  aspect-ratio: 1/1;
  /* does not apply from inner scope*/
}

@keyframes fade {
  0% {
    opacity: 0;
  }

  50% {
    opacity: 100%;
  }

  100% {
    opacity: 0;
  }
}

.typinganim {
  animation: fade 0.6s linear infinite;
}

.tooltip {
  position: relative;
  display: inline-block;
}

/* Tooltip text */
.tooltip>.tooltext {
  visibility: hidden;
  /* width: 120px; */
  background-color: black;
  color: #fff;
  text-align: center;
  padding: 5px 15px;
  border-radius: 6px;

  /* Position the tooltip text - see examples below! */
  position: absolute;
  z-index: 1;
}

.tooltext.top {
  bottom: 105%;
}

.tooltext.center {
  left: 50%;
  transform: translateX(-50%)
}

.tooltip:hover span.tooltext {
  visibility: visible !important;
}

.no-highlight:hover {
  background: none !important;
}
</style>
<style scoped>
footer {
  background-color: aquamarine;
  color: #fff;
}

header {
  line-height: 1.5;
  max-height: 100vh;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  /* header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);

    position: sticky !important;
    top: 0;
  } */

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }

  nav {
    text-align: left;
    font-size: 1rem;

    padding: 1rem 0;
    margin-top: 1rem;
    margin-bottom: 0;
  }
}
</style>
