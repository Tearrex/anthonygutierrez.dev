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
            <br /> Throughout my time there I have helped raise their QA standards by creating in-house
            software solutions with a small group of developers for digital tracking purposes.<br />
            I also improved the software development practices of a two-man IT operation by implementing version control
            and
            <b>deployment pipelines</b> for a major part of the company's internal infrastructure. This allowed us to
            collaborate and expand the team while iteratively deploying changes through <b>code reviews and pull
              requests</b>.<br />
            I left the company in August 2023 due to corporate discrepancies.
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
