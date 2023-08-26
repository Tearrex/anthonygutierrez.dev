<script setup>
import Employer from '../components/Employer.vue';
</script>
<template>
  <h1>My Employment History</h1>
  <div class="employernest">
    <Employer employer="Golden State Assembly LLC" job-title="IT Support Specialist" image="/gsa.jpg" start="April 2022"
      end="August 2023" />

    <Employer employer="theCoderSchool" job-title="Code Coach" image="tcs.jpg" start="August 2023" end="PRESENT" />
  </div>

  <a href="/Resume.pdf" target="_blank">
    Download Resume
  </a>
</template>

<style scoped>
h1 {
  margin-bottom: 1.2rem;
}

.employernest {
  display: flex;
  flex-flow: column;
  gap: 1.2rem;
  margin-bottom: 2rem;
}
</style>
