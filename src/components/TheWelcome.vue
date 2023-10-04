<script setup>
import { RouterLink } from 'vue-router';
import ProjectItem from './ProjectItem.vue';
import IconMail from './icons/IconMail.vue';
import IconCloud from './icons/IconCloud.vue';
import IconCode from './icons/IconCode.vue';
import IconGlobe from './icons/IconGlobe.vue';
import IconServer from './icons/IconServer.vue';
import IconCase from './icons/IconCase.vue';
import IconDown from './icons/IconDown.vue';
</script>
<script>
export default {
  data() {
    return {
      chattea: ["NodeJS", "React", "Firebase"],
      gonz9: ["NodeJS", "React"],
      hero: ["JavaScript"],
      aqua: ["HTML", "CSS", "JavaScript", "Python", "SQLite", "RaspberryPi"],
      mp3: ["Python", "RaspberryPi"],
      filters: ["Websites", "Embedded", "Other"],
      currentFilter: "Websites"
    }
  }
}
function projects() {
  document.getElementById("projectView").scrollIntoView({ behavior: "smooth" });
}
</script>
<template>
  <section class="flexy">
    <h2>Introduction</h2>
    <p id="bio">My passion for computers has flourished from boredom and
      curiosity over the years. During my childhood, I toyed with website builders and progressed to
      HTML/CSS/JS—craving more creative control. Since then, I have been nurturing my webdev niche by exploring JavaScript
      frameworks and
      acquiring
      industry experience designing customer-facing apps as well as provisioning the underlying
      infrastructure involved.</p>
    <button style="margin-top: 1.2rem;font-size: 1.2rem;" v-on:click="projects()" class="fancy">
      <IconDown /> Jump to Projects
    </button>
  </section>

  <section class="flexy" id="projectView">
    <h2 id="projects">My Projects</h2>
    <p>Below are highlights of personal work I've put together.</p>
    <div class="switchNest">
      <button v-for="i in filters" v-on:click="currentFilter = i" :class="{ active: currentFilter == i }">{{ i }}</button>
    </div>
    <div class="projnest">
      <ProjectItem title="Chattea" description="A social media inspired webapp that allows users to post & interact
  in a public feed hosted in the cloud." image-name="/chattea.jpg" url="https://chattea.me/" :stack="chattea"
        github="https://github.com/Tearrex/Chattea" v-if="currentFilter == 'Websites'" />
      <ProjectItem title="Gonz9Training"
        description="Freelance website for a professional fitness trainer to coordinate sessions with athletes and client prospects."
        image-name="/gonz9.jpg" url="https://gonz9training.com/" github="https://github.com/Tearrex/G9training"
        :stack="gonz9" v-if="currentFilter == 'Websites'" />
      <ProjectItem title="Storage Area Network"
        description="I documented my SAN solution for the datacenter migration of a previous employer."
        blog-url="https://medium.com/@anthonydev/storage-area-networks-d9281703c1ad" image-name="/san.jpg"
        v-if="currentFilter == 'Other'" />
      <ProjectItem title="School Project"
        description="Point and click browser game with goal to protect tanks from rounds of bomb strikes. Try it out!"
        image-name="/codeorg.jpg"
        url="https://studio.code.org/projects/applab/JPY35RLxDwdC4hMaXjvqN50qAB3Zqw8nGr_w4rcW2Tg" :stack="hero"
        v-if="currentFilter == 'Other'" />
      <ProjectItem title="AquaControl"
        description="Flask webserver that monitors water probe parameters and controls aquarium lights remotely."
        image-name="/aqua.jpg" video="https://www.youtube.com/watch?v=Ijvt4syre6s"
        github="https://github.com/Tearrex/AquaControl" :stack="aqua" v-if="currentFilter == 'Embedded'" />
      <ProjectItem title="PiMusicTin"
        description="Low-profile device for streaming MP3 files via bluetooth from a Raspberry Pi Zero W with a display HAT for menu controls."
        image-name="/music.jpg" :stack="mp3" v-if="currentFilter == 'Embedded'" />
    </div>
  </section>
  <hr />
  <section>
    <h2>Career Aspirations</h2>
    <p style="margin-bottom: 1rem;">I have a breadth of knowledge across these tech domains that I have applied as a
      hobbyist and as a business professional.
    </p>
    <h3>
      <IconGlobe /> Networking
    </h3>
    <ul>
      <li>Planned CCNA exam (Nov 2023)</li>
    </ul>
    <h3>
      <IconServer /> System Administration
    </h3>
    <ul>
      <li>Hypervisors</li>
      <li>Storage Configs</li>
    </ul>
    <h3>
      <IconCloud /> Cloud Compute
    </h3>
    <ul>
      <li>Studying for AWS Solutions Architect Associate (Oct 2023)</li>
    </ul>
    <h3>
      <IconCode /> Software Development
    </h3>
    <ul>
      <li>Deployment automation</li>
      <li>Prototyping and delivering products.</li>
    </ul>
  </section>
  <footer>
    <h1 style="margin-top: 4rem; color: #0f0;">Open to work</h1>
    <h3>I'd be happy to talk shop or share more about my projects
    </h3>
    <a href="mailto:anthonyg2803@protonmail.com" class="no-highlight" style="margin-right: 5px;">
      <button id="mail" style="margin-bottom: 5rem;">
        <IconMail /> Send Email
      </button>
    </a>
    <RouterLink to="/experience" class="no-highlight">
      <button>
        <IconCase /> CV
      </button>
    </RouterLink>
  </footer>
</template>

<style>
hr {
  margin-top: 4rem;
  margin-bottom: 1rem;
  opacity: 0.2;
}

#bio {
  padding: 0 2.5rem;
}

#projects {
  margin-top: 2rem;
  margin-bottom: 0.5rem;
  scroll-margin-top: 2rem;
}

.fancy svg path {
  fill: #fff;
}

footer button,
.fancy {
  border: 2px solid #0e0e0e;
  outline: none;
  background: #0e0e0e;
  color: #fff;
  font-size: 1.4rem;
  padding: 5px 15px;
  display: inline-block;
  margin-top: 1rem;
  border-radius: 100vh;
  transition: all 0.3s ease-in;
}

footer button {
  opacity: 0.8;
}

footer button>* {
  vertical-align: middle;
}

footer button svg path {
  fill: #fff;
  transition: all 0.3s ease-in;
}

footer button:hover {
  color: #0f0;
}

footer button:hover svg path {
  fill: #0f0;
}

.switchNest {
  display: grid;
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
  margin: 1rem 0;
}

.switchNest>button {
  padding: 10px 15px;
  flex: 100%;
  border: none;
  background-color: #eeeeee;
}

.switchNest>button.active {
  background-color: #0f0;
  color: #fff;
}

.switchNest>button:first-of-type {
  border-radius: 100vmin 0 0 100vmin;
}

.switchNest>button:last-of-type {
  border-radius: 0 100vmin 100vmin 0;
}

.flexy {
  display: flex;
  flex-flow: column;
  align-items: center;
  justify-content: center;
}

@media (min-width: 1024px) {
  .flexy {
    height: 100vh;
  }
}

.projnest {
  display: flex;
  flex-flow: column;
  gap: 1.5rem;
}

.projnest>.nest:nth-child(odd) h3 {
  text-align: right !important;
}

.projnest>.nest:nth-child(odd) .techstack {
  justify-content: right;
}

.projnest>.nest:nth-child(odd) p {
  text-align: right !important;
}

.projnest>.nest:nth-child(even) {
  flex-flow: row-reverse;
  text-align: left;
}
</style>