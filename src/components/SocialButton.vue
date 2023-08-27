<script setup>
defineProps({
    iconName: {
        type: String,
        required: true
    },
    socialLink: String
})
</script>

<template>
    <a :href="socialLink" target="_blank">
        <button>
            <img :src="iconName" v-if="iconName">
            <slot name="icon"></slot>
        </button>
    </a>
</template>

<style scoped>
button {
    width: 45px;
    aspect-ratio: 1/1;
    /* border-radius: 50%; */
    outline: none;
    border: 2px solid #0f0;
    background: #0f0;
    padding: 7px;
    transition: background 0.4s ease-out;
}

button:hover {
    background: rgba(0, 0, 0, 0);
}

img {
    background-color: none;
    filter: invert(1);
    width: 100%;
    height: 100%;
}
</style>