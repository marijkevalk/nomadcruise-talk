<script setup>
import { computed } from 'vue'

const props = defineProps({
  stage: { type: Number, required: true },
  c: { type: Number, default: 0 },
  hideCtx: { type: Boolean, default: false },
})

// element visible when born in an earlier stage, or in this stage at click k
const v = (s, k) => props.stage > s || (props.stage === s && props.c >= k)

const engineOn = computed(() => v(1, 5))
const shellOp = computed(() => (props.stage === 3 ? 0.35 : 1))
const lockOn = computed(() => v(4, 1))
const carOn = computed(() => v(2, 1))
// stage 3: the context is the fuel — a tank that fills in groups
// (1 = tank + everything you put in, 2 = the app's, 3 = the provider's),
// then flows into the engine (4); captions (5). Faint on stage 4.
const ctxOn = (g) => !props.hideCtx && ((props.stage === 3 && props.c >= g) || props.stage === 4)
const ctxOp = computed(() => (props.stage === 4 ? 0.22 : 1))

const GOLD = '#e3b04b', BLUE = '#38bdf8', BLUE_B = '#7dd3fc'
const PURPLE = '#7263b8', PURPLE_B = '#b9a9ee'
const INK = '#f2ecdf', DIM = '#9a917f'

// one car around the engine: the app (purple, matching the app-rows in the tank)
const car = { x: 465, y: 195, w: 370, h: 240, col: PURPLE, bright: PURPLE_B }
// what's in the tank — blue first (yours), then the app's, then the provider's
const tankRows = [
  { y: 270, g: 1, lab: 'Your prompt' },
  { y: 297, g: 1, lab: 'Your conversation so far', sub: 'Including its own answers', suby: 315 },
  { y: 342, g: 1, lab: 'Your custom instructions' },
  { y: 369, g: 1, lab: 'Your saved memory' },
  { y: 396, g: 1, lab: 'Your documents' },
  { y: 423, g: 1, lab: 'Search & tool results (internet)' },
  { y: 452, g: 2, lab: "The app's hidden instructions", col: PURPLE_B },
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
    </defs>

    <!-- stage 3: the context is the fuel — a tank on the left, filled in groups -->
    <g v-if="ctxOn(1)" :opacity="ctxOp">
      <rect x="64" y="200" width="324" height="292" rx="14" fill="none" :stroke="BLUE_B" stroke-width="2" />
      <rect x="316" y="182" width="32" height="20" rx="4" fill="none" :stroke="BLUE_B" stroke-width="2" />
      <g v-if="stage === 3">
        <text x="226" y="227" text-anchor="middle" style="font-size:14px;letter-spacing:2px" :fill="BLUE_B">THE CONTEXT</text>
        <path d="M 80 242 H 372" fill="none" :stroke="BLUE_B" stroke-width="1.4" stroke-dasharray="5 4" opacity="0.55" />
        <text x="372" y="237" text-anchor="end" style="font-size:13px;letter-spacing:1.2px" :fill="BLUE_B">MAX</text>
        <template v-for="(t, k) in tankRows" :key="'tr' + k">
          <g v-if="ctxOn(t.g)">
            <text x="88" :y="t.y" style="font-size:16px" :fill="t.col || BLUE_B">{{ t.lab }}</text>
            <text v-if="t.sub" x="88" :y="t.suby" style="font-size:12px" :fill="BLUE">{{ t.sub }}</text>
          </g>
        </template>
      </g>
    </g>

    <!-- click 3: the fuel line — the whole tank flows into the engine, fresh every turn -->
    <g v-if="ctxOn(3)" :opacity="ctxOp">
      <path d="M 392 330 C 442 330 492 331 534 331" fill="none" :stroke="BLUE_B" stroke-width="5.5" />
      <path d="M 530 318 L 558 331 L 530 344 Z" :fill="BLUE_B" />
    </g>

    <!-- the car: the app around the engine -->
    <g v-if="carOn" :opacity="shellOp">
      <path :d="carD(car)" fill="none" :stroke="car.col" stroke-width="2" stroke-linejoin="round" />
      <text x="630" :y="car.y + car.h - 0.06 * car.h - 4" text-anchor="middle" style="font-size:12px;font-weight:700;letter-spacing:1.6px" :fill="car.bright">THE APP</text>
    </g>

    <!-- the engine (the anchor); fine-tuning = a thin blue layer ON the engine -->
    <g v-if="engineOn">
      <rect x="575" y="290" width="150" height="80" rx="9" fill="#0d1322" :stroke="GOLD" stroke-width="2" />
      <rect v-for="rx in ribs" :key="rx" :x="rx" y="283" width="10" height="7" rx="2" fill="none" :stroke="GOLD" stroke-width="1.6" />
      <circle cx="704" cy="344" r="9" fill="none" :stroke="GOLD" stroke-width="1.6" />
      <text x="630" y="341" text-anchor="middle" style="font-size:27px;font-weight:700" :fill="INK">LLM</text>
    </g>

    <!-- safety locks: one in the engine, one on the car -->
    <g v-if="carOn && lockOn" fill="none" stroke-width="1.8">
      <g :stroke="GOLD">
        <rect x="584" y="298" width="16" height="12" rx="2" fill="rgba(0,0,0,0.4)" />
        <path d="M 587 298 v -3 a5 5 0 0 1 10 0 v 3" />
      </g>
      <g :stroke="PURPLE_B">
        <rect x="832" y="385" width="16" height="12" rx="2" fill="rgba(0,0,0,0.4)" />
        <path d="M 835 385 v -3 a5 5 0 0 1 10 0 v 3" />
      </g>
    </g>

  </svg>
</template>
