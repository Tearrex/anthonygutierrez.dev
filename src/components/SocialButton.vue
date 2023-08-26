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
    width: 40px;
    aspect-ratio: 1/1;
    border-radius: 50%;
    outline: none;
    border: 2px solid #0f0;
    background: none;
    padding: 7px;
}

img {
    background-color: none;
    filter: invert(1);
    width: 100%;
    height: 100%;
}
</style>