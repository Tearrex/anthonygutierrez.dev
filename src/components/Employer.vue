<script setup>
defineProps({
    employer: String,
    jobTitle: String,
    image: String,
    start: String,
    end: String
})
</script>

<template>
    <div class="nest">
        <img :src="image" />
        <div class="text">
            <h2>{{ employer }} <small>{{ start }} to {{ end }}</small></h2>
            <h4>{{ jobTitle }}</h4>
        </div>
    </div>
</template>

<style scoped>
.nest {
    display: flex;
    flex-flow: row;
    gap: 0.8rem;
}

img {
    width: 70px;
    aspect-ratio: 1/1;
}

h2 {
    color: #fff;
}

h2 small {
    opacity: 0.6;
}

.nest>.text {
    display: flex;
    flex-flow: column;
    gap: 5px;
}
</style>