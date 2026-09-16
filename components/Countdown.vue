<script setup lang="ts">
import { ref, onMounted, onBeforeUnmount } from 'vue'
const props = defineProps<{ minutes?: number, run?: boolean }>()
const left = ref((props.minutes ?? 5) * 60)
let timer: any = null
function fmt(s: number) {
  const m = Math.floor(s / 60)
  const ss = (s % 60).toString().padStart(2, '0')
  return `${m}:${ss}`
}
onMounted(() => {
  if (props.run) timer = setInterval(() => { if (left.value > 0) left.value-- }, 1000)
})
onBeforeUnmount(() => timer && clearInterval(timer))
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
