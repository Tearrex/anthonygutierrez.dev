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
            <h2>{{ employer }}</h2>
            <h4>{{ jobTitle }}</h4>
            <!-- <small>{{ start }} to {{ end }}</small> -->
        </div>
        <!-- <button class="expand">+</button> -->
    </div>
</template>

<style scoped>
.nest {
    display: flex;
    flex-flow: row;
    gap: 0.8rem;
    background-color: var(--color-border);
    padding: 10px;
    position: relative;
}

.expand {
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
}

img {
    max-height: 70px;
    aspect-ratio: 1/1;
}

h2 {
    color: var(--color-heading);
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