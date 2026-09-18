<script setup>
import { computed } from 'vue'

const props = defineProps({
  stage: { type: Number, required: true },
  c: { type: Number, default: 0 },
})

// element visible when born in an earlier stage, or in this stage at click k
const v = (s, k) => props.stage > s || (props.stage === s && props.c >= k)

const engineOn = computed(() => v(1, 3))
const rimOn = computed(() => v(1, 4))
const tagOn = computed(() => props.stage === 1 && props.c >= 4)
const handOn = computed(() => props.stage === 1 && props.c >= 3)
const shellOp = computed(() => (props.stage === 3 ? 0.35 : 1))
const arrLabels = computed(() => props.stage === 3)
const arrOp = computed(() => (props.stage === 4 ? 0.22 : 1))
const brOn = computed(() => v(3, 4))
const brOp = computed(() => (props.stage === 4 ? 0.4 : 1))
const capOn = computed(() => props.stage === 3 && props.c >= 4)
const lockOn = computed(() => v(4, 1))
const shellOn = (i) => v(2, i + 1)
const arrOn = (g) => (props.stage === 3 && props.c >= g) || props.stage === 4

const GOLD = '#e3b04b', GREEN = '#5fae88', GREEN_B = '#8fcbab'
const PURPLE = '#7263b8', PURPLE_B = '#b9a9ee'
const INK = '#f2ecdf', DIM = '#9a917f'

const shells = [
  { x: 525, y: 256, w: 250, h: 148, col: GOLD, bright: GOLD, owner: 'MODEL SUPPLIER', ex: 'Claude app · Claude Code' },
  { x: 480, y: 221, w: 340, h: 218, col: PURPLE, bright: PURPLE_B, owner: 'THIRD PARTY · “a wrapper”', ex: 'Cursor · Perplexity' },
  { x: 435, y: 186, w: 430, h: 288, col: GREEN, bright: GREEN_B, owner: 'YOU', ex: 'your own, built via the API' },
]
const taps = [
  { y: 186, ye: 273, g: 1, lab: 'your prompt' },
  { y: 232, ye: 296, g: 1, lab: 'the conversation so far' },
  { y: 278, ye: 319, g: 2, lab: 'your standing instructions' },
  { y: 324, ye: 342, g: 2, lab: 'saved memory' },
  { y: 370, ye: 365, g: 3, lab: 'your documents', sub: 'pasted, or found & pasted for you (RAG)' },
  { y: 416, ye: 388, g: 3, lab: 'search & tool results' },
]
const ribs = [602, 629, 656, 683]
</script>

<template>
  <svg class="s3d" viewBox="0 0 960 540" aria-hidden="true">
    <defs>
      <marker id="s3ga" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto">
        <path d="M0,0 L7,4 L0,8 z" :fill="GREEN_B" />
      </marker>
      <marker id="s3da" markerWidth="7" markerHeight="7" refX="5" refY="3.5" orient="auto">
        <path d="M0,0 L6,3.5 L0,7 z" :fill="DIM" />
      </marker>
    </defs>

    <!-- context taps (stage 3; kept faint in stage 4) -->
    <g v-if="arrOn(1) || arrOn(2) || arrOn(3)" :opacity="arrOp">
      <template v-for="(t, k) in taps" :key="k">
        <g v-if="arrOn(t.g)">
          <text v-if="arrLabels" :x="318" :y="t.y + 4" style="font-size:12px" :fill="GREEN_B" text-anchor="end">{{ t.lab }}</text>
          <text v-if="arrLabels && t.sub" :x="318" :y="t.y + 19" style="font-size:10px" :fill="GREEN" text-anchor="end">{{ t.sub }}</text>
          <path :d="`M 330 ${t.y} C 390 ${t.y} 475 ${t.ye} 545 ${t.ye}`" fill="none" :stroke="GREEN" stroke-width="1.8" marker-end="url(#s3ga)" />
        </g>
      </template>
    </g>

    <!-- harness shells -->
    <g v-for="(s, i) in shells" :key="'sh' + i">
      <g v-if="shellOn(i)" :opacity="shellOp">
        <rect :x="s.x" :y="s.y" :width="s.w" :height="s.h" rx="14" fill="none" :stroke="s.col" stroke-width="2" />
        <text :x="s.x + 13" :y="s.y + 17" style="font-size:9.5px;letter-spacing:1.4px" :fill="s.bright">{{ s.owner }}</text>
        <text :x="s.x + 13" :y="s.y + s.h - 10" style="font-size:9.5px" :fill="s.bright" opacity="0.75">{{ s.ex }}</text>
      </g>
      <g v-if="shellOn(i) && lockOn" :stroke="s.bright" fill="none" stroke-width="1.8">
        <rect :x="s.x + s.w - 27" :y="s.y + 15" width="16" height="12" rx="2" fill="rgba(0,0,0,0.4)" />
        <path :d="`M ${s.x + s.w - 24} ${s.y + 15} v -3 a5 5 0 0 1 10 0 v 3`" />
      </g>
    </g>

    <!-- hand-over arrow from the matrix (slide 29 only) -->
    <path v-if="handOn" d="M 455 176 C 540 190 575 230 598 268" fill="none" :stroke="DIM"
      stroke-width="1.2" stroke-dasharray="3 4" marker-end="url(#s3da)" />

    <!-- the engine (the anchor) -->
    <g v-if="engineOn">
      <rect v-if="rimOn" x="567" y="282" width="166" height="96" rx="12" fill="none" :stroke="GREEN_B" stroke-width="2" stroke-dasharray="6 5" />
      <rect x="575" y="290" width="150" height="80" rx="9" fill="rgba(227,176,75,0.08)" :stroke="GOLD" stroke-width="2" />
      <rect v-for="rx in ribs" :key="rx" :x="rx" y="283" width="10" height="7" rx="2" fill="none" :stroke="GOLD" stroke-width="1.6" />
      <circle cx="704" cy="344" r="9" fill="none" :stroke="GOLD" stroke-width="1.6" />
      <text x="630" y="332" text-anchor="middle" style="font-size:15px;font-weight:700" :fill="INK">LLM</text>
      <text x="630" y="348" text-anchor="middle" style="font-size:10px" :fill="DIM">the engine</text>
      <g v-if="tagOn">
        <text x="750" y="324" style="font-size:11.5px" :fill="GREEN_B">fine-tuned</text>
        <text x="750" y="340" style="font-size:11.5px" :fill="GREEN_B">on your own data</text>
      </g>
    </g>

    <!-- context window bracket + captions -->
    <g v-if="brOn" :opacity="brOp">
      <rect x="559" y="274" width="182" height="112" rx="10" fill="none" :stroke="GREEN_B" stroke-width="1.6" stroke-dasharray="5 4" />
    </g>
    <g v-if="capOn">
      <text x="650" y="494" text-anchor="middle" style="font-size:11.5px" :fill="GREEN_B">the context window · everything it can see right now · it has a size</text>
      <text x="650" y="511" text-anchor="middle" style="font-size:11.5px" :fill="DIM">the model itself remembers nothing</text>
    </g>
  </svg>
</template>
