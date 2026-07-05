---
theme: default
title: AI is not magic
titleTemplate: '%s — NomadCruise 17'
author: Marijke Valk
colorSchema: dark
exportFilename: ai-is-not-magic
lineNumbers: false
drawings:
  persist: false
transition: fade
mdc: true
class: text-center
---

# AI is not magic

## Demystifying AI for entrepreneurs

<div class="mt-16 opacity-70">
Marijke Valk · NomadCruise 17 · September 2026
</div>

<!--
BLOCK: Hook + promise (0–3 min) — §4, §12.7
Title stays up while people walk in. The "it's just patterns/maths" reveal is
saved for INSIDE the talk (§2) — nothing scary on the title slide.
-->

---
layout: center
---

# The black box

<div class="placeholder">

PLACEHOLDER — the ritual: type a question… blinking dots… an answer.

Visual: a closed black box (the through-line of the whole deck — §12.7).

Double hands-up: "black box for you too?" → "want to know what's inside?"

</div>

<!--
BLOCK: Hook + promise (0–3 min) — §4, §12.7 v3 draft (~70 sec spoken)
Warm-up hands-up does NOT count as an interactive moment.
"Often surprisingly good, sometimes surprisingly wrong" quietly plants the
hallucination block in minute one.
Promise: "in forty minutes you'll understand where AI answers come from."
Segue: "…because I am someone who cannot leave a black box alone."
-->

---

# Who am I

<div class="grid grid-cols-[6rem_1fr_1fr] gap-2 mt-8 text-left">
  <div></div>
  <div class="quad-header">THEORY</div>
  <div class="quad-header">PRACTICE</div>
  <div class="quad-row">THEN</div>
  <div class="quad-cell">BSc & MSc Applied Physics<br>MSc Econometrics</div>
  <div class="quad-cell">R&D in high-tech (ASML, Philips)<br>freelance for startups</div>
  <div class="quad-row">NOW</div>
  <div class="quad-cell">MSc Artificial Intelligence<br><span class="opacity-60">(in progress)</span></div>
  <div class="quad-cell">Building Opus —<br>my personal AI assistant</div>
</div>

<!--
BLOCK: Who am I (3–5 min) — §12.1 quadrant slide (~75 sec spoken draft in the note)
"Loves maths/models/algorithms" + immediate "no formulas today" reassurance.
Callback: "I can't stand black boxes."
Disclaimer: learning too — stay curious and critical (pre-echoes the wrap-up).
-->

---

# Why now?

<div class="placeholder">

PLACEHOLDER — "AI has been around almost as long as the computer itself."

Compute + data made it explode. ONE wow-stat (to research — §10.5).

</div>

<!--
BLOCK: Why now? (5–9 min) — §4
Tightened block: one idea, one wow-stat. No data-center side-topic (§6: it's a
stat, not a topic).
-->

---
layout: center
---

# Interactive #1 — guess the scale

<div class="placeholder">

PLACEHOLDER — scale guess: one data centre ≈ 100,000 households.

</div>

<!--
BLOCK: Why now? (5–9 min) — Interactive moment 1 of 3 (§4).
-->

---
layout: section
---

# Let's open the box

<!--
SECTION DIVIDER — Peek inside the model (9–21 min), the heart: §11's five beats.
Visual motif option (§12.7): the box opens a little further at each section.
-->

---

# Beat 1 — a model is a file

<img :src="'/ai_model_file_numbers.png'" class="h-90 mx-auto rounded" alt="60 real GPT-2 weight values as a plain grid" />

<!--
BLOCK: Peek inside (9–21 min) — §11 beat 1
"The entire model is a single file of numbers — no database, no internet, no
search index inside." Strongest single demystifier; sets up everything after it.
Asset: 60 actual weight values from GPT-2's layer-5 attention matrix.
-->

---

# Beat 1 — you can see training

<img :src="'/ai_model_file_heatmap.png'" class="h-90 mx-auto rounded" alt="Two real 256×256 GPT-2 weight slices as heatmaps" />

<v-click>

<div class="text-center mt-2 accent">→ the pale band: where no data flowed, noise remained</div>

</v-click>

<!--
BLOCK: Peek inside — §11 beat 1, second asset.
Story in the right panel: pale horizontal band = byte-fallback tokens the model
almost never saw — weights barely moved from their random start.
Riverbed pairing: "where no water flowed."
(The v-click is also the proof that --with-clicks export produces extra pages.)
-->

---
layout: center
---

# Interactive #2 — you are the model

<div class="placeholder">

PLACEHOLDER — "The capital of France is ___" / "I was late because the traffic was ___"

Audience shouts the next word → they just did next-word prediction.

</div>

<!--
BLOCK: Peek inside — §11 beat 2, Interactive moment 2 of 3.
-->

---

# Beat 2 — the real top-5

<div class="placeholder">

PLACEHOLDER — [ASSET TODO §11: top-5 next-token probabilities screenshot]

Garnish on this slide (§10.2): "AI finishes humanity's sentences."

§12.4: read the distribution like a native — "87% = very sure; 34–31–20 = flat…
**that's where hallucination lives.**"

</div>

<!--
BLOCK: Peek inside — §11 beat 2.
"That list of percentages IS the model's entire output — everything else is
sampling from it."
Signature moment (§12.2): physics + econometrics shake hands — "it's basically a
regression… twenty knobs. This one has a trillion."
-->

---
layout: center
---

# What is intelligence?

<div class="placeholder">

"The bed didn't go through the door because it was **too big**." — what was too big?

<span v-click>"…because it was **too small**." — what was too small?</span>

PLACEHOLDER — call-and-response; one word flips the answer.
Then: audience picks the objects → invent a sentence that has never existed —
it still answers. No lookup inside the file (beat 1 callback).

</div>

<!--
BLOCK: Peek inside — §11 beat 2½ (Marijke's idea, July 2026).
Answers the silent objection after beat 2: "so it's just autocomplete."
Don't claim "this sentence is not on the internet" (the bed/door format is
famous, someone can call "memorized!") — invent a fresh one live instead.
MYTH → MECHANISM #5: "it's just a parrot" → patterns that generalize, not lookup.
Garnish: Winograd schema, 1972 — "this test is older than most of us" (callback
to "AI is almost as old as the computer"). Optional jagged-intelligence pair:
nails this, miscounts the r's in strawberry.
~1.5–2 min; peek-block checkpoint (§4): at minute 16 be at beat 3.
-->

---

# Beat 3 — watch it grow up

<div class="placeholder">

PLACEHOLDER — three training stages: gibberish → words → coherent text
[ASSET TODO §11: Karpathy Shakespeare progression or own nano-run]

**Riverbed** — the water-family's home slide (§10.2, family 1).

Why it's called **machine learning**: nobody programs the numbers in — the
machine adjusts them itself from data. *(parked request, July 2026)*

MYTH → MECHANISM #3: "the model stores the training data" → random start, data
flows through, imprint stays.

</div>

<!--
BLOCK: Peek inside — §11 beat 3.
"Training = trillions of small corrections" without a single equation.
Riverbed: weights start as random noise; data carves; the water is gone —
the shape remains. Callback to the heatmap's pale band.
-->

---

# Beat 4 — meaning as geometry

<div class="placeholder">

PLACEHOLDER — 2D map of meaning: words as cities, king − man + woman ≈ queen
[ASSET TODO §11: embedding map picture — Opus can compute a real one]

Ship-flavored option (§10.2): a nautical chart — "no GPS inside, just a chart
drawn from every voyage ever made." *(decide during deck build)*

</div>

<!--
BLOCK: Peek inside — §11 beat 4.
The picture IS the analogy. Live cosine-similarity demo optional (cut first if
the block overflows — §11 re-timing note).
-->

---

# Beat 5 — Golden Gate Claude

<div class="placeholder">

PLACEHOLDER — researchers located the "Golden Gate Bridge" pattern inside the
weights and turned it up → the model wove the bridge into everything.
[ASSET TODO §11: pull the Anthropic "Scaling Monosemanticity" (May 2024) source]

</div>

<!--
BLOCK: Peek inside — §11 beat 5.
"We can peek at concepts inside — barely." Even the makers peer in with a
flashlight (§12.5: experts mark boundaries).
Bridges into hallucination: "nobody fully controls what's in there."
-->

---

# Why it hallucinates

<div class="placeholder">

PLACEHOLDER — **water always finds a way**: same landscape visual, a
smooth-but-wrong path lights up. Plausible ≠ true; confidence is a learned style.

</div>

<!--
BLOCK: Hallucination (21–25 min) — §4, §10.2 family 1.
Lands almost by itself after the riverbed. Callback to the flat distribution
from beat 2 ("that's where hallucination lives").
-->

---

# How to prevent it

<div class="placeholder">

PLACEHOLDER — prevention: give context (= digging a gutter), ask it to verify,
connect to real data.

Own-example (§10.1, ~60 sec): guardrails in Opus —
**"the AI proposes; boring, predictable code decides."**

</div>

<!--
BLOCK: Hallucination (21–25 min) — prevention half.
Pre-plants "noisy estimator" for the close.
Context nuance (§5): seasoning line / attention budget — MYTH → MECHANISM #2
("more context is always better").
-->

---

# Different models, different companies

<div class="placeholder">

PLACEHOLDER — same recipe, different food + upbringing → different personalities (§5).

Wrapper one-liner: "most AI apps are white-label businesses on the same few models."

MYTH → MECHANISM #1: "temperature is what makes Claude different from GPT" →
it's a per-request knob. *(only if asked)*

</div>

<!--
BLOCK: Different models (25–28 min) — Dori's request, slimmed (§4, §5).
FLEX (§4): the Fable/safeguards story (2–3 min) slots here ONLY if on schedule
at minute 25 — otherwise it's the Q&A answer to the censorship question.
-->

---

# In practice

<div class="placeholder">

PLACEHOLDER — better prompting (better question → better answer) ·
memory in Claude (workbench/notebook/manual — callback to the context window) ·
agents / connecting your own data.

**Interactive #3:** what do you use AI for? → tie answers back.

</div>

<!--
BLOCK: In practice (28–32 min) — §4. Interactive moment 3 of 3.
EMERGENCY VALVE (§4): if behind at minute 28, collapse to prompting + one-line
memory; interactive #3 moves into Q&A.
MYTH → MECHANISM #4: "the app got smarter overnight" → app ≠ model.
-->

---
layout: center
---

# AI is not magic

<div class="placeholder">

FINAL CLOSE (§12.2 — decided, never compress this block):

**"AI is not magic — patterns, data, maths.<br>
Treat it as a noisy estimator, not an oracle.<br>
The more you understand it, the better you use it — so keep asking questions!"**

</div>

<!--
BLOCK: Aha wrap-up (32–34 min) — §4, §12.2.
"Noisy estimator" lands as a callback (planted in the guardrails example).
"Keep asking questions" echoes the who-am-I's curious-and-critical.
Disclaimer: big chance I don't know the answer → then just ask the AI.
The box closes the frame (§12.7).
-->

---
layout: center
class: text-center
---

# Thank you — questions!

<div class="mt-10 text-xl">

**Marijke Valk**

marijkevalk.nl · LinkedIn · marijkevalk.nl@gmail.com

</div>

<!--
BLOCK: Buffer + Q&A (34–45 min) — §10.4: this slide stays on screen through the
whole Q&A. QR for LinkedIn optional. Q&A technique (§12.5): answer at two levels
— "short answer: X; the mechanism, if you want it: Y."
-->
