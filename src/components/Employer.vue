<script setup>
import IconDown from './icons/IconDown.vue';
defineProps({
    employer: String,
    jobTitle: String,
    roles: Object,
    image: String,
    start: String,
    end: String,
    default: Boolean = false
})
</script>
<script>
export default {
    data() {
        return {
            open: this.default == "true"
        }
    }
}
</script>
<template>
    <div>
        <div class="nest" v-on:click="open = !open">
            <img :src="image" />
            <div class="text">
                <h2>{{ employer }}</h2>
                <h4>{{ jobTitle }}</h4>
            </div>
            <span :class="{ expand: true, flipped: open }">
                <IconDown />
            </span>
        </div>
        <div v-bind:class="{ expandable: true, open: open }" :style="{ maxHeight: open ? '100%' : '0' }">
            <div class="content">
                <div class="roles" v-if="roles">
                    Honed skills: <span v-for="i in roles" :key="i">{{ i }}</span>
                </div>
                <slot name="content"></slot>
            </div>
        </div>
    </div>
</template>

<style scoped>
.roles {
    display: flex;
    flex-flow: row;
    gap: 0.3rem;
    align-items: center;
}

.roles>span {
    background-color: #aee9a9;
    padding: 5px 10px;
    color: #025902;
    border-radius: 100vh;
}

.nest {
    display: flex;
    flex-flow: row;
    gap: 0.8rem;
    background-color: var(--color-border);
    padding: 10px;
    position: relative;
}

.nest:hover {
    cursor: pointer;
}

.flipped {
    transform: translateY(-50%) scaleY(-1) !important;
}

.expandable {
    background-color: #f2f2f2;
    height: 0;
    overflow: hidden;
}

.content {
    padding: 15px;
}

.expandable.open {
    height: 100%;
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