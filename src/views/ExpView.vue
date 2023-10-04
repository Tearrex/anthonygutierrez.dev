<script setup>
import Employer from '../components/Employer.vue';
</script>
<script>
export default {
  data() {
    return {
      gsa: ["Helpdesk", "DevOps", "PHP", "React"]
    }
  }
}
</script>
<template>
  <div>
    <h1>Employment History</h1>
    <div class="employernest">
      <Employer employer="Golden State Assembly" job-title="IT Support Specialist" image="/gsa.jpg" start="April 2022"
        end="August 2023" default="true" :roles="gsa">
        <template #content>
          <!-- <a href="https://gsassembly.com/website/#about-us" target="_blank" rel="noreferrer">
            https://gsassembly.com/website/#about-us
          </a> -->
          <p>GSA is a manufacturer of electrical
            wire harnesses for the automobile industry based in Fremont, CA.</p>
          <p>I started April 2022 with basic helpdesk tasks and jumped to higher levels of disciplines within months.
            <br /> Throughout my time there I have worked with different departments
            in order to understand the current suite of software applications and tailor to different business
            needs.<br />

            I improved the development practices of a small IT operation by implementing version control
            and
            <b>deployment pipelines</b>. This allowed us to
            collaborate and expand the team while iteratively deploying changes through <b>code reviews and pull
              requests</b>.<br /><br />
            My latest achievement was implementing a <b>storage area network</b> for the needs of their
            fileservers.
            <a href="https://medium.com/@anthonydev/storage-area-networks-d9281703c1ad" target="_blank">Read my blog</a>
            sharing
            what I learned in the process.
          </p>
        </template>
      </Employer>

      <!-- <Employer employer="theCoderSchool" job-title="Code Coach" image="tcs.jpg" start="August 2023" end="PRESENT" /> -->
    </div>

    <a href="/Resume.pdf" target="_blank">
      Download Resume
    </a>
  </div>
</template>

<style scoped>
h1 {
  margin-bottom: 1.2rem;
}

.employernest {
  display: flex;
  flex-flow: column;
  gap: 1rem;
  margin-bottom: 2rem;
}
</style>
