<script setup>
import ProjectItem from './ProjectItem.vue';
import IconMail from './icons/IconMail.vue';
</script>
<script>
export default {
  data() {
    return {
      chattea: ["React", "Firebase"],
      gonz9: ["React", "Express.js", "JWT Auth"],
      hero: ["JavaScript", "Code.org Code Studio"],
      aqua: ["HTML/CSS/JS", "Python/Flask", "Raspberry Pi"],
      mp3: ["Python", "PulseAudio", "Raspberry Pi", "Altoids tin"]
    }
  }
}
</script>
<template>
  <h2>Introduction</h2>
  <p id="bio">My passion for computers has flourished from boredom and
    curiosity during my childhood. I toyed with website builders in highschool and progressively got more hands-on with
    HTML/CSS/JS. Since then, I have been nurturing my webdev niche by exploring JavaScript frameworks and
    acquiring
    industry experience designing customer-facing apps for a business as well as provisioning the underlying
    infrastructure involved.</p>

  <h2 id="projects">My Projects</h2>
  <div class="projnest">
    <ProjectItem title="Chattea.me" description="A social media inspired webapp that allows users to post & interact
  in a public feed hosted in the cloud." image-name="/chattea.jpg" url="https://chattea.me/" :stack="chattea"
      github="https://github.com/Tearrex/Chattea" />
    <ProjectItem title="Gonz9Training"
      description="Freelance project for a professional fitness trainer to coordinate sessions with client prospects."
      image-name="/gonz9.jpg" url="https://gonz9training.com/" github="https://github.com/Tearrex/G9training"
      :stack="gonz9" />
    <ProjectItem title="Hero Simulator"
      description="Point and click browser game with goal to protect tanks from rounds of bomb strikes. Try it out!"
      image-name="/codeorg.jpg" url="https://studio.code.org/projects/applab/JPY35RLxDwdC4hMaXjvqN50qAB3Zqw8nGr_w4rcW2Tg"
      :stack="hero" />
    <ProjectItem title="AquaControl"
      description="Webserver for Raspberry Pi used to monitor tank parameters and control lights remotely."
      image-name="/aqua.jpg" video="https://www.youtube.com/watch?v=Ijvt4syre6s"
      github="https://github.com/Tearrex/AquaControl" :stack="aqua" />
    <ProjectItem title="MP3 Ninja 🎵" description="Python program with purpose of streaming MP3 files to bluetooth speakers from a Raspberry Pi Zero W.
    For stealthy music jamming." image-name="/music.jpg" :stack="mp3" />
  </div>

  <h1 style="margin-top: 4rem; color: #0f0;">Like what you see?<span class="typinganim">_</span></h1>
  <h3>Let's get in touch to discuss project ideas, lingering feedback or business proposals.</h3>
  <button id="mail">
    <IconMail /> Send Message
  </button>
</template>

<style>
#bio {
  padding: 0 2.5rem;
}

#projects {
  margin-top: 2rem;
  margin-bottom: 1.2rem;
}

#mail {
  border: 2px solid #0f0;
  outline: none;
  background: #0f0;
  color: #fff;
  font-size: 1.4rem;
  padding: 5px 15px;
  display: inline-block;
  margin-top: 1rem;
}


#mail>* {
  vertical-align: middle;
}

#mail svg path {
  fill: #000;
}

#mail:hover {
  background: none;
}

#mail:hover svg path {
  fill: #0f0;
}

.projnest {
  display: flex;
  flex-flow: column;
  gap: 1.5rem;
}

.projnest>.nest:nth-child(odd) h3 {
  text-align: right !important;
}

.projnest>.nest:nth-child(odd) p {
  text-align: right !important;
}

.projnest>.nest:nth-child(even) {
  flex-flow: row-reverse;
  text-align: left;
}

.projnest>.nest:nth-child(even) img {
  box-shadow: 10px 15px #1e1e1e !important;
}
</style>