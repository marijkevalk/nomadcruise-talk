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
const layerOn = computed(() => v(1, 6))
const shellOp = computed(() => (props.stage === 3 ? 0.35 : 1))
const lockOn = computed(() => v(4, 1))
const shellOn = (i) => v(2, i + 3)
// stage 3: the context is the fuel — a tank that fills in groups
// (1 = tank + everything you put in, 2 = the app's, 3 = the provider's),
// then flows into the engine (4); captions (5). Faint on stage 4.
const ctxOn = (g) => !props.hideCtx && ((props.stage === 3 && props.c >= g) || props.stage === 4)
const ctxOp = computed(() => (props.stage === 4 ? 0.22 : 1))

const GOLD = '#e3b04b', BLUE = '#38bdf8', BLUE_B = '#7dd3fc'
const PURPLE = '#7263b8', PURPLE_B = '#b9a9ee'
const INK = '#f2ecdf', DIM = '#9a917f'

// lk = lock position [cx, ytop], hand-placed per shell to sit clear of the
// bonnet slopes and neighbouring silhouettes
const shells = [
  { x: 505, y: 229, w: 280, h: 168, col: GOLD, bright: GOLD, lk: [745, 325] },
  { x: 480, y: 204, w: 340, h: 218, col: PURPLE, bright: PURPLE_B, lk: [800, 355] },
  { x: 435, y: 171, w: 430, h: 288, col: BLUE, bright: BLUE_B, lk: [840, 385] },
]
// what's in the tank — blue first (yours), then the app's, then the provider's
const tankRows = [
  { y: 270, g: 1, lab: 'Your prompt' },
  { y: 297, g: 1, lab: 'Your conversation so far', sub: 'Including its own answers', suby: 315 },
  { y: 342, g: 1, lab: 'Your custom instructions' },
  { y: 369, g: 1, lab: 'Your saved memory' },
  { y: 396, g: 1, lab: 'Your documents' },
  { y: 423, g: 1, lab: 'Search & tool results (internet)' },
  { y: 452, g: 2, lab: "The app's hidden instructions", col: PURPLE_B },
  { y: 479, g: 3, lab: "The provider's hidden instructions", col: GOLD },
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
      <marker id="s3fuel" markerUnits="userSpaceOnUse" markerWidth="26" markerHeight="26" refX="20" refY="13" orient="auto">
        <path d="M0,0 L24,13 L0,26 z" :fill="BLUE_B" />
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

    <!-- click 4: the fuel line — the whole tank flows into the engine, fresh every turn -->
    <g v-if="ctxOn(4)" :opacity="ctxOp">
      <path d="M 392 330 C 448 330 504 331 552 331" fill="none" :stroke="BLUE_B" stroke-width="5.5" marker-end="url(#s3fuel)" />
      <text v-if="stage === 3" x="470" y="306" text-anchor="middle" style="font-size:14.5px;font-weight:600;font-style:italic" :fill="BLUE_B">Every turn, a fresh tank</text>
    </g>

    <!-- harness shells -->
    <g v-for="(s, i) in shells" :key="'sh' + i">
      <g v-if="shellOn(i)" :opacity="shellOp">
        <path :d="carD(s)" fill="none" :stroke="s.col" stroke-width="2" stroke-linejoin="round" />
        <text x="630" :y="s.y + s.h - 0.06 * s.h - 4" text-anchor="middle" style="font-size:9.5px;letter-spacing:1.4px" :fill="s.bright">HARNESS</text>
      </g>
      <g v-if="shellOn(i) && lockOn" :stroke="s.bright" fill="none" stroke-width="1.8">
        <rect :x="s.lk[0] - 8" :y="s.lk[1]" width="16" height="12" rx="2" fill="rgba(0,0,0,0.4)" />
        <path :d="`M ${s.lk[0] - 5} ${s.lk[1]} v -3 a5 5 0 0 1 10 0 v 3`" />
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

  </svg>
</template>
