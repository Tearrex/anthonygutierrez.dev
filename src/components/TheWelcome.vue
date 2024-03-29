<script setup>
import { RouterLink } from "vue-router";
import ProjectItem from "./ProjectItem.vue";
import Employer from "./Employer.vue";
import IconMail from "./icons/IconMail.vue";
import IconCloud from "./icons/IconCloud.vue";
import IconCode from "./icons/IconCode.vue";
import IconServer from "./icons/IconServer.vue";
import IconCase from "./icons/IconCase.vue";
import IconDown from "./icons/IconDown.vue";
import SocialButton from "./SocialButton.vue";
import IconLinkedIn from "./icons/IconLinkedIn.vue";
import IconYoutube from "./icons/IconYoutube.vue";
import IconGitHub from "./icons/IconGitHub.vue";
import IconGraph from "./icons/IconGraph.vue";
import IconGears from "./icons/IconGears.vue";
import IconGlobe from "./icons/IconGlobe.vue";
</script>
<script>
export default {
	data() {
		return {
			chattea: ["React", "Firebase", "Spotify Web API"],
			portal: ["MongoDB", "React", "Node", "MSSQL", "Python", "Docker"],
			gonz9: ["React"],
			hero: ["JavaScript"],
			aqua: ["Python", "Raspberry Pi"],
			mp3: ["Python", "Raspberry Pi"],
			san: ["iSCSI", "DRBD", "Heartbeat"],
			filters: ["Websites", "Embedded", "Other"],
			currentFilter: "Websites",
			currentGoal: 2,
			resumeURL:
				"https://docs.google.com/document/d/1jcOFIsdUWH7dEWFBQH02AvIeRrCnUZLNvrYWw2d5sHA/edit?usp=sharing",
		};
	},
};
function projects(delay = false) {
	if (!delay)
		document
			.getElementById("projectView")
			.scrollIntoView({ behavior: "smooth" });
	else {
		setTimeout(() => {
			document
				.getElementById("projectView")
				.scrollIntoView({ behavior: "smooth" });
		}, 400);
	}
}
function distance(a, b) {
	return -(a - b);
}
const sensitivity = 0.2; // limit the free movement of mouse hover effect
function mousemove(e) {
	// console.log([e.clientX, e.clientY]);
	let matrix = document.getElementById("intro");
	let x = e.clientX,
		y = e.clientY;

	let middleX = window.innerWidth / 2;
	let middleY = window.innerHeight / 2;

	x = distance(middleX, x) * sensitivity;
	y = distance(middleY, y) * sensitivity;

	console.log([x, y]);
	matrix.style.backgroundPosition = `${x}px ${y}px`;
}
// document.addEventListener("mousemove", mousemove)
</script>
<template>
	<hr id="introline" />
	<!-- <div class="introtop" /> -->
	<section
		class="intro"
		@mousemove="mousemove"
		style="background-position: 0 0"
	>
		<div id="intro" class="introbg">
			<div class="body">
				<!-- <h2 style="color: #000">Introduction</h2> -->
				<div class="content">
					<div class="lorem">
						<p id="bio" class="sprout">
							My passion for computers has flourished from boredom and curiosity
							over the years. I began with website builders and grew to enjoy
							creating my own webspaces with HTML/CSS/JS.
						</p>
						<p class="stack">
							I became fascinated with the inner workings of apps & games I once
							took for granted. This lead in my decision to study Computer
							Science and pursue a career in tech.
						</p>
						<p class="code">
							Since then, I have been nurturing my webdev niche by exploring
							JavaScript frameworks and designing customer-facing apps among
							other IT specialties.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="introbottom">
		<button v-on:click="projects()" class="fancy"><IconDown /> Projects</button>
	</div>
	<nav style="text-align: center">
		<a href="#introline">Intro</a>
		<a href="#experience">Experience</a>
		<a href="#skills">Skills</a>
		<!-- <a href="https://medium.com/@anthonydev" target="_blank" rel="noreferrer">Blog</a> -->
	</nav>
	<section class="flexy" id="projectView">
		<div>
			<h2 id="projects">My Projects</h2>
			<p>Below are highlights of work I've put together.</p>
			<div class="switchNest">
				<button
					v-for="i in filters"
					v-on:click="
						currentFilter = i;
						projects(true);
					"
					:class="{ active: currentFilter == i }"
				>
					{{ i }}
				</button>
			</div>
		</div>
		<div class="projnest">
			<ProjectItem
				title="Chattea.app"
				description="Social media website with encrypted messaging, private pages and guest view."
				image-name="/chattea.png"
				url="https://chattea.app/"
				:stack="chattea"
				github="https://github.com/Tearrex/Chattea"
				v-if="currentFilter == 'Websites'"
			/>
			<ProjectItem
				title="Gonz9Training.com"
				description="Professional fitness training website to coordinate sessions and consultations."
				image-name="/gonz9.jpg"
				url="https://gonz9training.netlify.app/"
				github="https://github.com/Tearrex/G9training"
				:stack="gonz9"
				v-if="currentFilter == 'Websites'"
			/>
			<ProjectItem
				title="Customer Portal"
				image-name="/portal1.jpg"
				:stack="portal"
				v-if="currentFilter == 'Websites'"
			>
				<template #description>
					Business website for
					<a href="#experience">Golden State Assembly</a> offering visibility
					and downloadable excel reports of manufacture services being provided
					to clients.
				</template>
			</ProjectItem>
			<ProjectItem
				title="School Project"
				description="Point and click browser game with goal to protect tanks from rounds of bomb strikes. Try it out!"
				image-name="/codeorg.jpg"
				url="https://studio.code.org/projects/applab/JPY35RLxDwdC4hMaXjvqN50qAB3Zqw8nGr_w4rcW2Tg"
				:stack="hero"
				v-if="currentFilter == 'Other'"
			/>
			<ProjectItem
				title="MP3 Player"
				description="Low-profile Bluetooth controller for offline music streaming."
				image-name="/music.jpg"
				github="https://github.com/Tearrex/pimusicpod"
				:stack="mp3"
				v-if="currentFilter == 'Embedded'"
			/>
			<ProjectItem
				title="Smart Aquarium"
				description="Webapp for monitoring my aquarium remotely."
				image-name="/aqua.jpg"
				video="https://www.youtube.com/watch?v=Ijvt4syre6s"
				github="https://github.com/Tearrex/AquaControl"
				:stack="aqua"
				v-if="currentFilter == 'Embedded'"
			/>
		</div>
	</section>
	<div style="position: relative" class="ocean" id="experience">
		<div class="wavy block"></div>
	</div>
	<section class="expsec ocean">
		<h1 style="margin-bottom: 1rem">Professional Experience</h1>
		<div class="expnest">
			<Employer
				employer="FedEx Ground"
				job-title="Package Handler"
				image="/fedex.jpg"
				start="4/2021"
				end="1/2022"
				bg="#4e148c"
			>
				<template #content>
					<p>
						My interest in software development peaked outside of the tech field
						as a Package Handler at FedEx.
					</p>
					<br />
					<p>
						The warehouse had bluetooth speakers for the luxury of smart watch
						users. Frankly, they had terrible taste in music. Given no phones
						were allowed, I took it upon myself to build my own tech gadget that
						could pair with the speakers.
						<a href="#projectView" v-on:click="currentFilter = 'Embedded'"
							>This gadget was a Raspberry Pi with a mini display for music
							controls.</a
						><br /><br />
						<img src="/piplayer.jpg" style="width: 100%" />
					</p>
				</template>
			</Employer>
			<Employer
				employer="Golden State Assembly"
				job-title="IT System Admin"
				image="/gsa.jpg"
				start="4/2022"
				end="8/2023"
				bg="#26378f"
			>
				<template #content>
					<p>
						GSA is a manufacturer of electrical wire harnesses for automobiles.
					</p>
					<br />
					<p>
						Starting as a Tier 1 support technician, I tended to IT-related
						tickets ensuring troublefree workflows for Spanish-speaking
						warehouse employees. I soon pivoted to more sophisticated tasks
						involving the business infrastructure.
					</p>
					<ul>
						<li>
							I brought the company's SDLC up to standards with
							<b>Azure DevOps</b>, uploading source code to Azure Repos and
							configuring pipeline agents for CI/CD automations.
						</li>
						<li>
							I expanded upon a large PHP codebase for their ERP software by
							creating digital tracking modules for the QA/QC team's manual
							workflows.
						</li>
						<li>
							I was the lead developer of
							<a href="#projects" v-on:click="currentFilter = 'Websites'"
								>a new business website</a
							>
							for the company, collecting requirements from stakeholders and
							cross-functional departments to allow customers to request & view
							progress of material procurement on-demand through ERP
							integrations.
						</li>
						<li>
							My greatest achievement was migrating their old file servers to a
							<b>storage area network</b> for performance gains and data
							redundancy measures.
							<a
								href="https://medium.com/@anthonydev/storage-area-networks-d9281703c1ad"
								target="_blank"
								>Read my blog about it.</a
							>
						</li>
					</ul>
				</template>
			</Employer>
			<a
				:href="resumeURL"
				target="_blank"
				rel="noreferrer"
				style="text-decoration: underline; background: none"
			>
				Download Resume
			</a>
		</div>
	</section>
	<div style="position: relative" class="ocean" id="skills">
		<div class="wavy"></div>
	</div>
	<section>
		<h2 style="margin-bottom: 0.5rem; text-align: center">My Toolset</h2>
		<p style="margin-bottom: 1rem; text-align: center">
			I have working knowledge of the following
		</p>
		<div class="skillnest" style="margin-bottom: 1rem">
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
		<div style="text-align: center">
			<a
				href="https://www.credly.com/badges/733e9190-41c0-4328-86b9-b5eec9fd26b1/public_url"
				target="_blank"
				rel="noreferrer"
				class="no-highlight"
				><img src="/awsclf.png" width="100"
			/></a>
		</div>
		<h2>Career Goals</h2>
		<div class="slides">
			<button @click="currentGoal--" v-if="currentGoal > 0" class="last">
				<IconDown />
			</button>
			<p v-if="currentGoal == 0">
				I took an AP Computer Science course in highschool covering the history
				of the Internet. The knowledge I gained about <b>TCP/IP</b> protocols
				has stuck with me and has been paramount to the success of my early IT
				career.
			</p>
			<p v-if="currentGoal == 1">
				I am an AWS Certified Cloud Practitioner, further studying for the
				SAA-C03 exam. I have implemented <b>serverless functions</b> into
				<a href="#projectView" v-on:click="currentFilter = 'Websites'"
					>my frontend projects</a
				>
				and I am greatly interested in supporting public, private and
				multi-cloud enviroments towards my longterm goal of providing
				cost-effective and well-architected solutions to clients.
			</p>
			<p v-if="currentGoal == 2">
				With my toolset above I can propel the innovation of products and
				services as part of a team. I strive to be a quick & savvy liaison
				between business problems and the many facets of technology, bringing
				customer-centric solutions while meeting compliance requirements.
			</p>
			<p v-if="currentGoal == 3">
				Visualizing data has been the most pleasurable duty of mine.
				Specifically, working with frontend libraries like
				<b>Chart.js</b> to filter and sort large datasets for the user
				experience. I have also used <b>pandas</b> for Python to manipulate data
				into digestible excel reports for an internal business website.
			</p>
			<p v-if="currentGoal == 4">
				From previous work experience I have observed that businesses tend to
				have a lot of manual processes in their operations that consume
				significant time and effort—which could be better expelled onto more
				productive duties. As an IT specialist, I want to make these tasks more
				efficient while delivering consistent results and mitigating the
				friction between a user's technical aptitude and the software at hand. I
				recently took this goal to a
				<a href="#experience">professional capacity</a> by implementing
				<b>CI/CD</b> pipelines for business applications.
			</p>
			<button @click="currentGoal++" v-if="currentGoal < 4" class="next">
				<IconDown />
			</button>
		</div>
		<div class="goalnest">
			<div
				class="goal"
				@click="currentGoal = 0"
				:class="{ active: currentGoal == 0 }"
			>
				<h2><IconGlobe /> Networking</h2>
			</div>
			<div
				class="goal"
				@click="currentGoal = 1"
				:class="{ active: currentGoal == 1 }"
			>
				<h2><IconCloud /> Cloud Compute</h2>
			</div>
			<div
				class="goal"
				style="grid-column: 1/-1"
				@click="currentGoal = 2"
				:class="{ active: currentGoal == 2 }"
			>
				<h2><IconCode /> Software Development</h2>
			</div>
			<div
				class="goal"
				@click="currentGoal = 3"
				:class="{ active: currentGoal == 3 }"
			>
				<h2><IconGraph /> Data Analysis</h2>
			</div>
			<div
				class="goal"
				@click="currentGoal = 4"
				:class="{ active: currentGoal == 4 }"
			>
				<h2><IconGears /> Script Automation</h2>
			</div>
		</div>
	</section>
	<div style="overflow: hidden">
		<div style="background-color: #121212; position: relative">
			<div class="wavy"></div>
		</div>
		<footer>
			<img src="/monitors.png" class="desk" />
			<div class="lamp">
				<img src="/lamp.png" />
			</div>
			<h1 style="margin-top: 6rem; color: #5dade2">Open to work</h1>
			<h3>I'd be happy to talk shop or share more about my projects!</h3>
			<a
				href="mailto:anthonygutierrezdev@gmail.com"
				class="no-highlight"
				style="margin-right: 5px"
			>
				<button id="mail" style="margin-bottom: 4rem">
					<IconMail /> Email Me
				</button>
			</a>
			<a
				:href="resumeURL"
				target="_blank"
				rel="noreferrer"
				class="no-highlight"
			>
				<button><IconCase /> Resume</button>
			</a>
			<div class="socials" style="justify-content: left; margin: 0">
				<SocialButton
					social-link="https://www.linkedin.com/in/anthony-gutierrez-854600225/"
				>
					<template #icon>
						<IconLinkedIn />
					</template>
				</SocialButton>
				<SocialButton social-link="https://github.com/Tearrex">
					<template #icon>
						<IconGitHub />
					</template>
				</SocialButton>
			</div>
		</footer>
	</div>
</template>

<style scoped>
section:not(.intro) {
	position: relative;
	/* z-index: 2; */
	background-color: #fff;
}

.slides {
	display: flex;
	flex-flow: row;
}

.slides p {
	flex: 90%;
}

.slides button {
	background: none;
	border: none;
	padding: 0 1rem;
}

.slides .last svg {
	transform: rotate(90deg);
}

.slides .next svg {
	transform: rotate(-90deg);
}

.goalnest {
	display: grid;
	grid-template-columns: 1fr 1fr;
	grid-gap: 1rem;
	margin-top: 1rem;
}

.goalnest .goal {
	flex: 50%;
	min-height: 100px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #39a4ea;
	transition: color 0.2s ease-in;
	border-radius: 100vh;
}

.goal h2 {
	transition: opacity 0.2s ease-in;
}

.goalnest:hover .goal h2 {
	opacity: 0.5;
}

.goal:hover h2,
.goal.active h2 {
	color: #fff;
	fill: #fff;
	opacity: 1 !important;
}

@media screen and (max-width: 700px) {
	.goalnest {
		grid-template-columns: 1fr;
	}
}

nav {
	width: 100%;
	font-size: 12px;
	text-align: center;
	margin-top: 0rem;
	position: sticky;
	top: 0;
	background-color: #fff;
	z-index: 5;
}

nav a.router-link-exact-active {
	color: var(--color-text);
}

nav a.router-link-exact-active:hover {
	background-color: transparent;
}

nav a {
	display: inline-block;
	padding: 1rem;
	border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
	border: 0;
}

#introline {
	margin: 0;
	line-height: 0;
	opacity: 0;
}

.introtop,
.introbottom {
	width: 100%;
	position: relative;
}

.introbottom button {
	position: absolute;
	bottom: 100%;
	margin-bottom: 1rem;
	left: 50%;
	transform: translateX(-50%);
	z-index: 3;
}

.introbg::before {
	content: "";
	position: absolute;
	width: 100%;
	height: clamp(200px, 20vh, 500px);
	background: linear-gradient(to bottom, #fff 25%, rgba(255, 255, 255, 0) 100%);
	top: 0;
	left: 0;
	z-index: 2;
}

.introbottom::before {
	content: "";
	position: absolute;
	width: 100%;
	height: clamp(200px, 20vh, 500px);
	background: linear-gradient(to top, #fff 0%, rgba(255, 255, 255, 0) 100%);
	bottom: 100%;
	left: 0;
	z-index: 2;
}

.intro {
	text-align: center;
	display: flex;
	flex-flow: column;
	justify-content: center;
	align-items: center;
	position: sticky;
	top: 0;
	min-height: 100vh;
	padding: 0;
	background-color: #fff;
}

.intro .body {
	top: 50%;
	left: 50%;
	position: absolute;
	width: 100%;
	transform: translate(-50%, -50%);
	display: flex;
	flex-flow: column;
	justify-content: flex-start;
	align-items: center;
	/* height: 100%; */
}

@media screen and (max-height: 500px) {
	/* .intro {
    height: 50%;
  }

  .intro .content {
    overflow-y: scroll;
    height: 50%;
  }

  .intro h2 {
    display: none;
  } */

	.introbottom::before {
		display: none;
	}
}

.introbg {
	/* position: absolute; */
	top: 0;
	left: 0;
	width: 100%;
	min-height: 100vh;
	background: url("/shapes.png");
	transition: background-position 0.8s ease-out;
	/* background: linear-gradient(rgba(255, 255, 255, 1) 0%, rgba(255, 255, 255, 0.7) 7%,
      rgba(0, 0, 0, 0) 50%, rgba(255, 255, 255, 0.7) 70%, rgba(255, 255, 255, 1) 95%); */
}

.intro h2 {
	color: #fff;
	mix-blend-mode: difference;
	font-size: 3.5rem;
}

@media screen and (min-width: 600px) {
	.intro h2 {
		font-size: 5rem;
	}
}

@media screen and (max-width: 460px) {
	.intro h2 {
		font-size: 3rem !important;
	}
}

.content .lorem {
	display: flex;
	align-items: center;
	flex-flow: column;
}
.intro p {
	padding: 0 2.5rem;
	width: clamp(200px, 80%, 500px);
	background-color: #fff;
	padding: 1.5rem;
	margin-bottom: 2rem;
	border-radius: 100vh;
	z-index: 2;
}

.intro p:last-of-type {
	margin-bottom: 0;
}

.sprout,
.code,
.stack {
	position: relative;
}

.sprout::before {
	position: absolute;
	bottom: -15%;
	left: -5%;
	content: "";
	width: 20%;
	max-width: 70px;
	aspect-ratio: 1/1;
	background-image: url("/leaf.svg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	z-index: 0;
}

.stack::before {
	position: absolute;
	bottom: -15%;
	left: 0;
	content: "";
	width: 20%;
	max-width: 70px;
	aspect-ratio: 1/1;
	background-image: url("/stack.svg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	z-index: 0;
}

.code::before {
	position: absolute;
	bottom: -12%;
	left: -2%;
	content: "";
	width: 20%;
	max-width: 70px;
	aspect-ratio: 1/1;
	background-image: url("/code.svg");
	background-repeat: no-repeat;
	background-position: center;
	background-size: cover;
	/* transform: rotateZ(20deg); */
	z-index: 0;
}

#projectView {
	scroll-margin-top: 2rem;
}

.expsec {
	background-color: #295a8f;
	padding: 2rem;
}

.expnest {
	display: flex;
	flex-flow: column;
	gap: 1rem;
	justify-content: center;
	align-items: center;
}

.expsec h1 {
	color: #fff;
	text-align: center;
	font-size: 2rem;
}

.expsec + div .wavy {
	transform: scaleY(-1.01);
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

.ocean {
	background-color: #295a8f !important;
	/* background: linear-gradient(to right, #154360 0%, #1f618d 50%, #154360 100%) !important; */
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
	max-width: 40px;
	filter: grayscale(1);
}

.skillnest .tooltip:hover {
	filter: grayscale(0) !important;
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
	content: "";
	width: 7px;
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
	content: "";
	position: absolute;
	background: linear-gradient(
		rgba(245, 228, 157, 0.5) 0%,
		rgba(0, 0, 0, 0) 70%
	);
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
	z-index: 1;
}

footer button {
	opacity: 0.8;
	border: none;
	background: none;
}

footer button > * {
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

.switchNest > button {
	padding: 10px 15px;
	flex: 100%;
	border: none;
	background-color: #eeeeee;
}

.switchNest > button.active {
	background-color: #39a4ea;
	color: #fff;
}

.switchNest > button:first-of-type {
	border-radius: 100vmin 0 0 100vmin;
}

.switchNest > button:last-of-type {
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
</style>
