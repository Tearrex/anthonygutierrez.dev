<script setup>
const techstacks = {
    React: "/stacks/react.png",
    Firebase: "/stacks/firebase.png",
    Python: "/stacks/python.png",
    RaspberryPi: "/stacks/raspberry.png",
    NodeJS: "/stacks/node.png",
    HTML: "/stacks/html.png",
    CSS: "/stacks/css.png",
    JavaScript: "/stacks/javascript.png",
    MongoDB: "/stacks/mongo.png",
}
defineProps({
    imageName: String,
    title: String,
    description: String,
    url: String,
    blogUrl: String,
    stack: Array,
    video: String,
    github: String
})
import IconJumpLink from './icons/IconJumpLink.vue';
import IconGitHub from './icons/IconGitHub.vue';
import IconYoutube from './icons/IconYoutube.vue';
import IconBlog from './icons/IconBlog.vue';
</script>

<template>
    <div class="nest">
        <a :href="url" target="_blank" v-if="url" rel="noreferrer" class="preview">
            <img :src="imageName">
        </a>
        <img :src="imageName" v-else class="preview">
        <div class="content">
            <h3>{{ title }}
                <a :href="url" v-if="url" target="_blank" rel="noreferrer">
                    Visit
                    <IconJumpLink />
                </a>
            </h3>
            <p class="desc">{{ description }}</p>
            <!-- <ul v-if="stack">
                <li v-for="item in stack" :key="item">
                    {{ item }}
                </li>
            </ul> -->
            <div class="techstack">
                <div class="tooltip" v-for="item in stack" :key="item">
                    <img :src="techstacks[item]" />
                    <span class="tooltext top center">{{ item }}</span>
                </div>
            </div>
            <div class="link-tree" v-if="video || github || blogUrl">
                <a v-if="github" :href="github" target="_blank" rel="noreferrer">
                    <IconGitHub /> See Code
                </a>
                <a v-if="video" :href="video" target="_blank" rel="noreferrer">
                    <IconYoutube /> Watch Video
                </a>
                <a v-if="blogUrl" :href="blogUrl" target="_blank" rel="noreferrer">
                    <IconBlog /> Read Blog
                </a>
            </div>
        </div>
    </div>
</template>

<style scoped>
.link-tree {
    display: flex;
    flex-flow: column;
    align-items: center;
    gap: 0.4rem;
}

.techstack {
    display: flex;
    flex-flow: row;
    gap: 0.8rem;
    margin: 1rem 0;
    width: 100%;
    flex-grow: 0;
    flex-wrap: wrap;
    align-items: center;
}

.techstack .tooltip {
    width: 20%;
    max-width: 50px;
    flex-shrink: 2;
    object-fit: contain;
    line-height: 0;
}

.techstack .tooltip .tooltext {
    line-height: normal;
}


.techstack .tooltip>img {
    transition: transform 0.2s ease-in;
}

.techstack .tooltip>img {
    width: 100%;
}

h3 {
    color: var(--color-heading);
}

.desc {
    color: var(--color-text);
}

.nest {
    width: 100%;
    display: flex;
    flex-flow: row;
    align-items: center;
    gap: 5px;
}

.nest .preview {
    flex: 50%;
    max-width: clamp(100px, 50%, 420px);
    overflow: hidden;
}

.nest .content {
    flex: 50%;
}

.nest .preview {
    line-height: 0;
}

.nest img:not(.preview) {
    object-fit: cover;
    width: 100%;
}
</style>