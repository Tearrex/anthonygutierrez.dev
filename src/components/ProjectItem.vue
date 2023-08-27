<script setup>
defineProps({
    imageName: String,
    title: String,
    description: String,
    url: String,
    stack: Array,
    video: String,
    github: String
})
import IconJumpLink from './icons/IconJumpLink.vue';
import IconGitHub from './icons/IconGitHub.vue';
import IconYoutube from './icons/IconYoutube.vue';
</script>

<template>
    <div class="nest">
        <img :src="imageName">
        <div>
            <h3>{{ title }}
                <a :href="url" v-if="url" target="_blank" rel="noreferrer">
                    <IconJumpLink />
                </a>
            </h3>
            <p class="desc">{{ description }}</p>
            <ul v-if="stack">
                <li v-for="item in stack" :key="item">
                    {{ item }}
                </li>
            </ul>
            <div class="link-tree" v-if="video || github">
                <a v-if="github" :href="github" target="_blank" rel="noreferrer">
                    <button>
                        <IconGitHub /> View Repo
                    </button>
                </a>
                <a v-if="video" :href="video" target="_blank" rel="noreferrer">
                    <button>
                        <IconYoutube /> Video Demo
                    </button>
                </a>
            </div>
        </div>
    </div>
</template>

<style scoped>
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

.nest>img {
    object-fit: cover;
    flex: 50%;
    max-width: clamp(100px, 50%, 420px);
    border-radius: 10%;
    box-shadow: -10px 15px #eeeeee;
}
</style>