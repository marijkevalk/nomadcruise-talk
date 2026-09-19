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
const capOn = computed(() => props.stage === 3 && props.c >= 4)
const lockOn = computed(() => v(4, 1))
const shellOn = (i) => v(2, i + 3)
const arrOn = (g) => (props.stage === 3 && props.c >= g) || props.stage === 4

const GOLD = '#e3b04b', BLUE = '#38bdf8', BLUE_B = '#7dd3fc'
const PURPLE = '#7263b8', PURPLE_B = '#b9a9ee'
const INK = '#f2ecdf', DIM = '#9a917f'

const shells = [
  { x: 505, y: 236, w: 280, h: 168, col: GOLD, bright: GOLD, owner: 'MODEL PROVIDER' },
  { x: 480, y: 221, w: 340, h: 218, col: PURPLE, bright: PURPLE_B, owner: 'THIRD PARTY' },
  { x: 435, y: 186, w: 430, h: 288, col: BLUE, bright: BLUE_B, owner: 'YOU' },
]
const taps = [
  { y: 186, ye: 273, g: 1, lab: 'Your prompt' },
  { y: 232, ye: 296, g: 1, lab: 'The conversation so far' },
  { y: 278, ye: 319, g: 2, lab: 'Your standing instructions' },
  { y: 324, ye: 342, g: 2, lab: 'Saved memory' },
  { y: 370, ye: 365, g: 3, lab: 'Your documents', sub: 'Pasted, or found & pasted for you (RAG)' },
  { y: 416, ye: 388, g: 3, lab: 'Search & tool results', sub: 'Anything from the internet lands here too' },
]
// context the other owners inject, entering from the right
const otaps = [
  { y: 300, ye: 316, lab: 'Hidden system prompt', col: GOLD, labCol: GOLD, mk: 'url(#s3oa)' },
  { y: 356, ye: 352, lab: "The app's own instructions", col: PURPLE, labCol: PURPLE_B, mk: 'url(#s3pa)' },
]
const ribs = [602, 629, 656, 683]

// true car-icon silhouette per shell (side view, facing right): trunk, rear
// window, roof, windscreen, bonnet, front bumper — ONE continuous line; the
// wheels are half-circle dips in the bottom edge. s.y+s.h is the ground line.
const carD = (s) => {
  const X = (f) => (s.x + f * s.w).toFixed(1)
  const H = s.h, yg = s.y + s.h
  const Y = (f) => (yg - f * H).toFixed(1)
  const yb = (yg - 0.06 * H).toFixed(1)
  const r = (0.055 * s.w).toFixed(1)
  const cxR = s.x + 0.24 * s.w, cxF = s.x + 0.76 * s.w
  return [
    `M ${X(0.03)} ${Y(0.3)}`,
    `C ${X(0.02)} ${Y(0.46)} ${X(0.05)} ${Y(0.52)} ${X(0.12)} ${Y(0.55)}`,
    `L ${X(0.2)} ${Y(0.57)}`,
    `L ${X(0.4)} ${Y(0.93)}`,
    `Q ${X(0.42)} ${Y(0.95)} ${X(0.45)} ${Y(0.95)}`,
    `L ${X(0.64)} ${Y(0.95)}`,
    `Q ${X(0.67)} ${Y(0.95)} ${X(0.69)} ${Y(0.93)}`,
    `L ${X(0.84)} ${Y(0.57)}`,
    `C ${X(0.92)} ${Y(0.53)} ${X(0.97)} ${Y(0.45)} ${X(0.985)} ${Y(0.32)}`,
    `L ${X(0.985)} ${Y(0.14)}`,
    `Q ${X(0.985)} ${yb} ${X(0.93)} ${yb}`,
    `L ${(cxF + +r).toFixed(1)} ${yb}`,
    `A ${r} ${r} 0 0 1 ${(cxF - +r).toFixed(1)} ${yb}`,
    `L ${(cxR + +r).toFixed(1)} ${yb}`,
    `A ${r} ${r} 0 0 1 ${(cxR - +r).toFixed(1)} ${yb}`,
    `L ${X(0.06)} ${yb}`,
    `Q ${X(0.015)} ${yb} ${X(0.03)} ${Y(0.3)}`,
    'Z',
  ].join(' ')
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
      <marker id="s3oa" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto">
        <path d="M0,0 L7,4 L0,8 z" :fill="GOLD" />
      </marker>
      <marker id="s3pa" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto">
        <path d="M0,0 L7,4 L0,8 z" :fill="PURPLE_B" />
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

    <!-- context the other owners inject (from the right, owner colours) -->
    <g v-if="arrOn(2)" :opacity="arrOp">
      <template v-for="(t, k) in otaps" :key="'o' + k">
        <text v-if="arrLabels" :x="945" :y="t.y - 8" style="font-size:12px" :fill="t.labCol" text-anchor="end">{{ t.lab }}</text>
        <path :d="`M 940 ${t.y} C 880 ${t.y} 815 ${t.ye} 755 ${t.ye}`" fill="none" :stroke="t.col" stroke-width="1.8" :marker-end="t.mk" />
      </template>
    </g>

    <!-- harness shells -->
    <g v-for="(s, i) in shells" :key="'sh' + i">
      <g v-if="shellOn(i)" :opacity="shellOp">
        <path :d="carD(s)" fill="none" :stroke="s.col" stroke-width="2" stroke-linejoin="round" />
        <text :x="s.x + (i === 2 ? 0.08 : 0.34) * s.w" :y="s.y + s.h - 0.06 * s.h - 3" style="font-size:9.5px;letter-spacing:1.4px" :fill="s.bright">{{ s.owner }}</text>
      </g>
      <g v-if="shellOn(i) && lockOn" :stroke="s.bright" fill="none" stroke-width="1.8">
        <rect :x="s.x + 0.9 * s.w - 8" :y="s.y + s.h - 0.44 * s.h" width="16" height="12" rx="2" fill="rgba(0,0,0,0.4)" />
        <path :d="`M ${s.x + 0.9 * s.w - 5} ${s.y + s.h - 0.44 * s.h} v -3 a5 5 0 0 1 10 0 v 3`" />
      </g>
    </g>

    <!-- the engine (the anchor); fine-tuning = a thin blue layer ON the engine -->
    <g v-if="engineOn">
      <rect x="575" y="290" width="150" height="80" rx="9" fill="#0d1322" :stroke="GOLD" stroke-width="2" />
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

    <!-- context window captions -->
    <g v-if="capOn">
      <text x="48" y="470" style="font-size:11.5px;font-style:italic" :fill="DIM">The model itself remembers nothing</text>
      <text x="650" y="494" text-anchor="middle" style="font-size:11.5px" :fill="BLUE_B">The context window · Everything it can see right now · It has a size</text>
    </g>
  </svg>
</template>
