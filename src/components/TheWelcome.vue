<script setup>
import { RouterLink } from 'vue-router';
import ProjectItem from './ProjectItem.vue';
import Employer from './Employer.vue';
import IconMail from './icons/IconMail.vue';
import IconCloud from './icons/IconCloud.vue';
import IconCode from './icons/IconCode.vue';
import IconGlobe from './icons/IconGlobe.vue';
import IconServer from './icons/IconServer.vue';
import IconCase from './icons/IconCase.vue';
import IconDown from './icons/IconDown.vue';
import SocialButton from './SocialButton.vue';
import IconLinkedIn from './icons/IconLinkedIn.vue';
import IconYoutube from './icons/IconYoutube.vue';
import IconGitHub from './icons/IconGitHub.vue';
</script>
<script>
export default {
  data() {
    return {
      chattea: ["React", "Firebase"],
      gonz9: ["React"],
      hero: ["JavaScript"],
      aqua: ["HTML", "CSS", "JavaScript", "Python", "Flask", "SQLite", "RaspberryPi"],
      mp3: ["Python", "RaspberryPi"],
      san: ["iSCSI", "DRBD", "Heartbeat"],
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
  <section>
    <h2>Introduction</h2>
    <p id="bio">My passion for computers has flourished from boredom and
      curiosity over the years. During my childhood, I toyed with website builders and progressed to
      HTML/CSS/JS—craving more creative control. Since then, I have been nurturing my webdev niche by <a
        href="#projectView">exploring JavaScript
        frameworks</a> and
      <a href="#experience">acquiring
        industry experience</a> designing customer-facing apps as well as provisioning the underlying
      infrastructure involved.
    </p>
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
        blog-url="https://medium.com/@anthonydev/storage-area-networks-d9281703c1ad" image-name="/san.jpg" :stack="san"
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
  <div style="background-color: #295a8f; position: relative;">
    <div class="wavy block"></div>
  </div>
  <section class="expsec" id="experience">
    <h1 style="margin-bottom: 2rem;">Professional Experience</h1>
    <div class="expnest">
      <Employer employer="Golden State Assembly" job-title="IT Support Specialist" image="/gsa.jpg" start="April 2022"
        end="August 2023" :roles='["Helpdesk", "DevOps", "PHP", "React"]'>
        <template #content>
          <!-- <a href="https://gsassembly.com/website/#about-us" target="_blank" rel="noreferrer">
            https://gsassembly.com/website/#about-us
          </a> -->
          <p>GSA is a manufacturer of electrical
            wire harnesses for the automobile industry based in Fremont, CA.</p>
          <p>I started April 2022 working with different departments
            to understand the suite of software apps I was supporting and how to tailor them to different business
            needs.<br />

            Jumping from helpdesk to system administration, I quickly improved the development practices of a small IT
            operation
            by implementing version control
            and
            <b>deployment pipelines</b> for existing codebases. This allowed us to
            collaborate and expand the team while iteratively deploying changes through <b>code reviews and pull
              requests</b>.<br /><br />
            My latest achievement was implementing a <b>storage area network</b> for the needs of their
            fileservers.
            <a href="https://medium.com/@anthonydev/storage-area-networks-d9281703c1ad" target="_blank">Read my blog</a>
            about it.
          </p>
        </template>
      </Employer>
    </div>
  </section>
  <div style="background-color: #295a8f; position: relative;">
    <div class="wavy"></div>
  </div>
  <section>
    <h2 style="margin-bottom: 0.5rem;">My Toolset</h2>
    <p style="margin-bottom: 1rem;">I have working knowledge of the following</p>
    <div class="skillnest">

      <div class="tooltip">
        <img src="/stacks/html.png" />
        <span class="tooltext top center">HTML</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/css.png" />
        <span class="tooltext top center">CSS</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/javascript.png" />
        <span class="tooltext top center">JavaScript</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/typescript.png" />
        <span class="tooltext top center">TypeScript</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/react.png" />
        <span class="tooltext top center">React</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/vue.png" />
        <span class="tooltext top center">Vue.js</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/python.png" />
        <span class="tooltext top center">Python</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/php.png" />
        <span class="tooltext top center">PHP</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/mysql.png" />
        <span class="tooltext top center">MySQL</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/mongo.png" />
        <span class="tooltext top center">MongoDB</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/firebase.png" />
        <span class="tooltext top center">Firebase</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/docker.png" />
        <span class="tooltext top center">Docker</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/ubuntu.png" />
        <span class="tooltext top center">Ubuntu</span>
      </div>
      <div class="tooltip">
        <img src="/stacks/aws.png" />
        <span class="tooltext top center">AWS</span>
      </div>
    </div>
    <p style="margin-bottom: 1rem;">I'm always learning & eager to take on new challenges.</p>
    <h2>My Career Goals</h2>
    <p style="margin-bottom: 1rem;">I would like to explore these tech domains in the future to expand my scope of
      knowledge as a business
      professional.</p>
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
  <div style="overflow: hidden;">
    <div style="background-color: #121212; position: relative;">
      <div class="wavy"></div>
    </div>
    <footer>
      <img src="/monitors.png" class="desk" />
      <div class="lamp">
        <img src="/lamp.png" />
      </div>
      <h1 style="margin-top: 6rem; color: #5dade2;">Open to work</h1>
      <h3>I'd be happy to talk shop or share more about my projects!
      </h3>
      <a href="mailto:anthonyg2803@protonmail.com" class="no-highlight" style="margin-right: 5px;">
        <button id="mail" style="margin-bottom: 5rem;">
          <IconMail /> Email Me
        </button>
      </a>
      <a href="/Resume.pdf" target="_blank" rel="noreferrer" class="no-highlight">
        <button>
          <IconCase /> Resume/CV
        </button>
      </a>
      <div class="socials" style="justify-content: left;">
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
    </footer>
  </div>
</template>

<style scoped>
.expsec {
  background-color: #295a8f;
  padding: 2rem;
}

.expnest {
  display: flex;
  flex-flow: column;
  gap: 1rem;
  margin-bottom: 2rem;
  justify-content: center;
  align-items: center;
}

.expsec h1 {
  color: #fff;
  text-align: center;
  font-size: 2rem;
}

.expsec+div .wavy {
  transform: scaleY(-1);
  position: initial;
}

.wavy {
  width: 100%;
  height: 100px;
  background-color: #cecece;
  background: url("/wave.svg");
  position: absolute;
  z-index: 2;
}

.wavy.block {
  position: initial;
}

section {
  padding: 0 2rem;
}

.skillnest {
  display: flex;
  flex-flow: row;
  gap: 0.5rem;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
}

.skillnest .tooltip {
  flex: 20%;
  max-width: 50px;
}

.skillnest img {
  width: 100%;
}
</style>
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

footer {
  position: relative;
  background-color: #295a8f;
  padding: 2rem;
  z-index: 1;
  /* background: url("/pattern.jpg"); */
  /* overflow: hidden; */
}

footer h3 {
  color: #eee;
  font-weight: normal;
}

footer .desk {
  position: absolute;
  bottom: 0;
  right: 10%;
  width: 30%;
  min-width: 200px;
}

footer .lamp {
  position: absolute;
  right: 15%;
  top: 30%;
  width: 5%;
  min-width: 40px;
  z-index: 2;
}

.lamp img {
  width: 100%;
}

footer .lamp::before {
  content: '';
  width: 10px;
  height: 100%;
  padding-top: 100vh;
  background-color: #404040;
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  bottom: 100%;
  /* attach to ceiling */
}

@keyframes warm {
  0% {
    opacity: 1;
  }

  30% {
    opacity: 0.6;
  }

  /* 70% {
    opacity: 0.8;
  } */

  100% {
    opacity: 1;
  }
}

footer .lamp::after {
  content: '';
  position: absolute;
  background: linear-gradient(rgba(245, 228, 157, 0.5) 0%, rgba(0, 0, 0, 0) 70%);
  aspect-ratio: 1/2;
  width: 300%;
  /* top: 50%; */
  left: 50%;
  transform: translateX(-50%);
  z-index: -1;
  clip-path: polygon(50% 0, 0% 80%, 100% 80%);
  animation: warm 3s ease infinite;
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
  border: none;
  background: none;
}

footer button>* {
  vertical-align: middle;
}

footer button svg path {
  fill: #fff;
  transition: all 0.3s ease-in;
}

footer button:hover {
  color: #3498db;
  opacity: 1;
}

footer button:hover svg path {
  fill: #3498db;
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
  background-color: #2980b9;
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

/* @media (min-width: 1024px) {
  .flexy {
    height: 100vh;
  }
} */

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

.projnest>.nest:nth-child(odd) .roles {
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