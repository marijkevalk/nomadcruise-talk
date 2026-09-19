<script setup>
import { computed } from 'vue'

const props = defineProps({
  stage: { type: Number, required: true },
  c: { type: Number, default: 0 },
})

// element visible when born in an earlier stage, or in this stage at click k
const v = (s, k) => props.stage > s || (props.stage === s && props.c >= k)

const engineOn = computed(() => v(1, 5))
const layerOn = computed(() => v(1, 6))
const shellOp = computed(() => (props.stage === 3 ? 0.35 : 1))
const arrLabels = computed(() => props.stage === 3)
const arrOp = computed(() => (props.stage === 4 ? 0.22 : 1))
const brOn = computed(() => v(3, 4))
const brOp = computed(() => (props.stage === 4 ? 0.4 : 1))
const capOn = computed(() => props.stage === 3 && props.c >= 4)
const lockOn = computed(() => v(4, 1))
const shellOn = (i) => v(2, i + 2)
const arrOn = (g) => (props.stage === 3 && props.c >= g) || props.stage === 4

const GOLD = '#e3b04b', BLUE = '#38bdf8', BLUE_B = '#7dd3fc'
const PURPLE = '#7263b8', PURPLE_B = '#b9a9ee'
const INK = '#f2ecdf', DIM = '#9a917f'

const shells = [
  { x: 525, y: 256, w: 250, h: 148, col: GOLD, bright: GOLD, owner: 'MODEL PROVIDER' },
  { x: 480, y: 221, w: 340, h: 218, col: PURPLE, bright: PURPLE_B, owner: 'THIRD PARTY' },
  { x: 435, y: 186, w: 430, h: 288, col: BLUE, bright: BLUE_B, owner: 'YOU' },
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

// car-icon outline per shell: body with rounded corners + cabin hump (slanted
// windscreens) on top; wheels are drawn separately below the ground line
const carD = (s, i) => {
  const rr = 14, h = [22, 28, 34][i], sl = 26
  const c1 = s.x + (i === 0 ? 0.34 : 0.30) * s.w, c2 = s.x + (i === 0 ? 0.66 : 0.62) * s.w
  const yg = s.y + s.h
  return `M ${s.x + rr} ${s.y} L ${c1 - sl} ${s.y} L ${c1} ${s.y - h} L ${c2} ${s.y - h} L ${c2 + sl} ${s.y} L ${s.x + s.w - rr} ${s.y} Q ${s.x + s.w} ${s.y} ${s.x + s.w} ${s.y + rr} L ${s.x + s.w} ${yg - rr} Q ${s.x + s.w} ${yg} ${s.x + s.w - rr} ${yg} L ${s.x + rr} ${yg} Q ${s.x} ${yg} ${s.x} ${yg - rr} L ${s.x} ${s.y + rr} Q ${s.x} ${s.y} ${s.x + rr} ${s.y} Z`
}
</script>

<template>
  <svg class="s3d" viewBox="0 0 960 540" aria-hidden="true">
    <defs>
      <marker id="s3ga" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto">
        <path d="M0,0 L7,4 L0,8 z" :fill="BLUE_B" />
      </marker>
      <marker id="s3da" markerWidth="7" markerHeight="7" refX="5" refY="3.5" orient="auto">
        <path d="M0,0 L6,3.5 L0,7 z" :fill="DIM" />
      </marker>
    </defs>

    <!-- context taps (stage 3; kept faint in stage 4) -->
    <g v-if="arrOn(1) || arrOn(2) || arrOn(3)" :opacity="arrOp">
      <template v-for="(t, k) in taps" :key="k">
        <g v-if="arrOn(t.g)">
          <text v-if="arrLabels" :x="318" :y="t.y + 4" style="font-size:12px" :fill="BLUE_B" text-anchor="end">{{ t.lab }}</text>
          <text v-if="arrLabels && t.sub" :x="318" :y="t.y + 19" style="font-size:10px" :fill="BLUE" text-anchor="end">{{ t.sub }}</text>
          <path :d="`M 330 ${t.y} C 390 ${t.y} 475 ${t.ye} 545 ${t.ye}`" fill="none" :stroke="BLUE" stroke-width="1.8" marker-end="url(#s3ga)" />
        </g>
      </template>
    </g>

    <!-- harness shells -->
    <g v-for="(s, i) in shells" :key="'sh' + i">
      <g v-if="shellOn(i)" :opacity="shellOp">
        <path :d="carD(s, i)" fill="none" :stroke="s.col" stroke-width="2" stroke-linejoin="round" />
        <!-- wheels: each harness shell is a car -->
        <circle :cx="s.x + s.w * 0.24" :cy="s.y + s.h + (9 + i * 2) * 0.3" :r="9 + i * 2" fill="#0a0e1a" :stroke="s.col" stroke-width="2" />
        <circle :cx="s.x + s.w * 0.76" :cy="s.y + s.h + (9 + i * 2) * 0.3" :r="9 + i * 2" fill="#0a0e1a" :stroke="s.col" stroke-width="2" />
        <text :x="s.x + 13" :y="s.y + 17" style="font-size:9.5px;letter-spacing:1.4px" :fill="s.bright">{{ s.owner }}</text>
      </g>
      <g v-if="shellOn(i) && lockOn" :stroke="s.bright" fill="none" stroke-width="1.8">
        <rect :x="s.x + s.w - 27" :y="s.y + 15" width="16" height="12" rx="2" fill="rgba(0,0,0,0.4)" />
        <path :d="`M ${s.x + s.w - 24} ${s.y + 15} v -3 a5 5 0 0 1 10 0 v 3`" />
      </g>
    </g>

    <!-- the engine (the anchor); fine-tuning = a thin blue layer ON the engine -->
    <g v-if="engineOn">
      <rect x="575" y="290" width="150" height="80" rx="9" fill="rgba(227,176,75,0.08)" :stroke="GOLD" stroke-width="2" />
      <rect v-for="rx in ribs" :key="rx" :x="rx" y="283" width="10" height="7" rx="2" fill="none" :stroke="GOLD" stroke-width="1.6" />
      <!-- fine-tune layer: a thin blue cap on top, silhouetting the four terminals -->
      <path v-if="layerOn" d="M 576 294 Q 578 290 584 290
        L 602 290 L 602 285 Q 602 283 604 283 L 610 283 Q 612 283 612 285 L 612 290
        L 629 290 L 629 285 Q 629 283 631 283 L 637 283 Q 639 283 639 285 L 639 290
        L 656 290 L 656 285 Q 656 283 658 283 L 664 283 Q 666 283 666 285 L 666 290
        L 683 290 L 683 285 Q 683 283 685 283 L 691 283 Q 693 283 693 285 L 693 290
        L 716 290 Q 722 290 724 294 Z"
        fill="rgba(56,189,248,0.18)" :stroke="BLUE_B" stroke-width="1.8" stroke-linejoin="round" />
      <circle cx="704" cy="344" r="9" fill="none" :stroke="GOLD" stroke-width="1.6" />
      <text x="630" y="341" text-anchor="middle" style="font-size:27px;font-weight:700" :fill="INK">LLM</text>
    </g>

    <!-- context window bracket + captions -->
    <g v-if="brOn" :opacity="brOp">
      <rect x="559" y="274" width="182" height="112" rx="10" fill="none" :stroke="BLUE_B" stroke-width="1.6" stroke-dasharray="5 4" />
    </g>
    <g v-if="capOn">
      <text x="650" y="494" text-anchor="middle" style="font-size:11.5px" :fill="BLUE_B">the context window · everything it can see right now · it has a size</text>
      <text x="650" y="511" text-anchor="middle" style="font-size:11.5px" :fill="DIM">the model itself remembers nothing</text>
    </g>
  </svg>
</template>
