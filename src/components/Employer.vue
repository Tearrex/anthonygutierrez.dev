<script setup>
import IconDown from './icons/IconDown.vue';
defineProps({
    employer: String,
    jobTitle: String,
    roles: Object,
    image: String,
    start: String,
    end: String,
    bg: String,
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
    <div class="employer">
        <div class="nest" v-on:click="open = !open" :style="{backgroundColor: bg}">
            <img :src="image" />
            <div class="text">
                <h2>{{ employer }}</h2>
                <h4>{{ jobTitle }} • {{ start }} - {{ end }}</h4>
                <!-- <div class="roles" v-if="roles">
                    <span v-for="i in roles" :key="i">{{ i }}</span>
                </div> -->
            </div>
            <span :class="{ expand: true, flipped: open }">
                <IconDown />
            </span>
        </div>
        <div v-bind:class="{ expandable: true, open: open }" :style="{ maxHeight: open ? '100%' : '0' }">
            <div class="content">
                <slot name="content"></slot>
                <h4 style="margin-top: 2rem;" v-if="roles">Honed Skills</h4>
                <div class="roles" v-if="roles">
                    <span v-for="i in roles" :key="i">{{ i }}</span>
                </div>
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
    flex-wrap: wrap;
}

.roles>span {
    background-color: #a9c8e9;
    padding: 5px 10px;
    color: #022c59;
    border-radius: 100vh;
    border: 1px solid #022c59;
}

.employer {
    max-width: 600px;
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
.content h4 {
    font-size: 1.4rem;
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

.expand path {
    fill: #fff;
}

img {
    max-height: 70px;
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
    color: #fff;
}

.text h4 {
    font-weight: normal;
    opacity: 0.8;
}
</style>