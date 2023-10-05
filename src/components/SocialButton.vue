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
a:hover {
    background: unset;
}

button {
    width: 45px;
    aspect-ratio: 1/1;
    border-radius: 50%;
    outline: none;
    border: none;
    background: none;
    padding: 7px;
    transition: background 0.4s ease-out, transform 0.2s ease-in;
    -webkit-backface-visibility: hidden;
}

a:hover button {
    transform: scale(0.9);
}

img {
    background-color: none;
    filter: invert(1);
    width: 100%;
    height: 100%;
}
</style>