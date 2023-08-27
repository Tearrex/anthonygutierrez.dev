<script setup>
defineProps({
  msg: {
    type: String,
    required: true
  }
})

import SocialButton from './SocialButton.vue';
import IconGitHub from './icons/IconGitHub.vue';
import IconLinkedIn from './icons/IconLinkedIn.vue';
import IconYoutube from './icons/IconYoutube.vue';
</script>

<template>
  <div class="greetings">
    <h1 class="green titlehead">{{ msg }}<span class="typinganim">_</span></h1>
    <h3>
      I am <span>Anthony</span>, a fullstack web developer.
    </h3>
    <div class="socials">
      <SocialButton social-link="https://www.linkedin.com/in/anthony-gutierrez-854600225/">
        <template #icon>
          <IconLinkedIn />
        </template>
      </SocialButton>
      <SocialButton social-link="https://github.com/Tearrex">
        <template #icon>
          <IconGitHub />
        </template>
      </SocialButton>
      <SocialButton social-link="https://www.youtube.com/@ant-dev">
        <template #icon>
          <IconYoutube />
        </template>
      </SocialButton>
    </div>
    <!-- social media buttons (linkedin, github, youtube) -->
  </div>
</template>

<style scoped>
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


h1 {
  font-weight: 500;
  font-size: 2.6rem;
  position: relative;
  top: -10px;
}

h3 {
  font-size: 1.2rem;
}

h3>span {
  color: #000;
}

.greetings {
  margin-left: auto;
  margin-right: auto;
}

.greetings h1,
.greetings h3 {
  text-align: center;
}

@media (min-width: 1024px) {

  .greetings h1,
  .greetings h3 {
    text-align: left;
  }
}
</style>
