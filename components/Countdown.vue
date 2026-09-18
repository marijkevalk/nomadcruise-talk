<script setup lang="ts">
import { ref, watch, onBeforeUnmount } from 'vue'
const props = defineProps<{ minutes?: number, run?: boolean }>()
const left = ref((props.minutes ?? 5) * 60)
let timer: any = null
function fmt(s: number) {
  const m = Math.floor(s / 60)
  const ss = (s % 60).toString().padStart(2, '0')
  return `${m}:${ss}`
}
function start() {
  if (timer) return
  timer = setInterval(() => {
    if (left.value > 0) left.value--
    else { clearInterval(timer); timer = null }
  }, 1000)
}
function stop() { if (timer) { clearInterval(timer); timer = null } }
// react to `run` toggling (e.g. bound to a slide click), so a click starts it
watch(() => props.run, (r) => { r ? start() : stop() }, { immediate: true })
onBeforeUnmount(stop)
</script>

<template>
  <div class="clock-badge">
    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round">
      <circle cx="12" cy="12" r="9" />
      <path d="M12 7.5V12l3 2" />
    </svg>
    <span>{{ fmt(left) }}</span>
  </div>
</template>
