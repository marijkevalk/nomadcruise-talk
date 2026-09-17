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
favicon: /favicon.svg
---

<div style="position:absolute; top:3.8rem; left:3.8rem; z-index:2;">
<div class="kicker no-star" style="margin-bottom:0.35rem; font-size:1.08rem;">NomadCruise 17</div>
<div class="dim" style="letter-spacing:0.14em; text-transform:uppercase; font-size:0.98rem;">Southampton (UK) → New York City (USA)</div>
<div class="dim" style="letter-spacing:0.14em; text-transform:uppercase; font-size:0.98rem; margin-top:0.3rem;">September 19 – 26, 2026</div>
</div>

<div style="display:inline-block; position:absolute; left:3.8rem; top:calc(45% - 2.5rem); z-index:2;">
<div class="display" style="font-size:4.4rem;">AI is not <span class="accent">magic.</span></div>
<div class="dim" style="font-size:1.42rem; margin-top:0.8rem; width:0; min-width:100%; text-align:justify; text-align-last:justify;">Demystifying the technology for curious minds</div>
</div>

<img :src="'/art/neural-gold.png'" style="position:absolute; right:0; top:-10%; z-index:0; height:120%; width:64%; object-fit:cover; object-position:42% 50%; opacity:0.92; -webkit-mask-image:linear-gradient(to right, transparent 4%, rgba(0,0,0,0.22) 30%, black 62%); mask-image:linear-gradient(to right, transparent 4%, rgba(0,0,0,0.22) 30%, black 62%);" />

<div class="byline" style="font-size:1.25rem; bottom:3.6rem; z-index:2;">Marijke Valk</div>

<!--
[0:00 — title up while people walk in]

Welcome everyone! Grab a seat — and keep your phone or laptop somewhere close,
you're going to need it today. Yes, really — this is the one session where
you're ALLOWED to be on your phone.
-->

---
layout: center
---

<div class="text-center">

<div class="prow" style="font-family:'Fraunces',serif; font-size:3.1rem; min-height:15rem; letter-spacing:0.02em;">
  <span v-click="1" style="justify-self:end;">PROMPT</span>
  <span class="midzone">
    <svg v-click="[2,4]" viewBox="0 0 340 40" class="longarrow"><line x1="6" y1="20" x2="310" y2="20" stroke="#e3b04b" stroke-width="8" stroke-linecap="round"/><polygon points="308,4 336,20 308,36" fill="#e3b04b"/></svg>
    <span v-click="4" class="splitzone">
      <svg viewBox="0 0 100 40" class="w-18"><line x1="6" y1="20" x2="68" y2="20" stroke="#e3b04b" stroke-width="4.6" stroke-linecap="round"/><polygon points="66,7 96,20 66,33" fill="#e3b04b"/></svg>
      <span class="qwrap">
        <svg v-click="5" class="cube" viewBox="0 0 124 124">
          <polygon points="14,46 34,26 106,26 86,46" fill="#141414" stroke="#f5f5f5" stroke-width="1.6"/>
          <polygon points="86,46 106,26 106,98 86,118" fill="#0a0a0a" stroke="#f5f5f5" stroke-width="1.6"/>
          <polygon points="14,46 86,46 86,118 14,118" fill="#000000" stroke="#f5f5f5" stroke-width="2"/>
        </svg>
        <span class="qmark">?</span>
      </span>
      <svg viewBox="0 0 100 40" class="w-18"><line x1="6" y1="20" x2="68" y2="20" stroke="#e3b04b" stroke-width="4.6" stroke-linecap="round"/><polygon points="66,7 96,20 66,33" fill="#e3b04b"/></svg>
    </span>
  </span>
  <span v-click="2" style="justify-self:start;">RESPONSE</span>
</div>

<div v-click="3" class="zoo-cloud" style="margin-top:-3rem;">
  <div class="text-xl" style="color:#e7bd6a; white-space:nowrap;">ChatGPT · Claude · Gemini · Copilot</div>
  <div class="text-xl mt-1" style="color:#d8b271; white-space:nowrap;">Perplexity · Grok · DeepSeek · Midjourney</div>
  <div class="text-lg mt-1" style="color:#c2a26e; white-space:nowrap;">Canva AI · Grammarly · Notion AI · DeepL</div>
  <div class="text-lg mt-1" style="color:#a8956d; white-space:nowrap;">Jasper · Gamma · Otter.ai · Lovable · Cursor · …</div>
</div>

</div>

<img :src="'/art/tovenaar-01-basis.svg'" class="mage" />

<!--
[empty stage — just the magician]

Quick show of hands: who used AI today? — Right. Almost everyone. And it's
always the same little ritual. [click] You type a PROMPT… [click] and out
comes a RESPONSE. (Fun fact: the technical name for that reply is a
"completion" — the model completes your text. Remember that word.)

[click — the name cloud] And you meet this thing in a hundred costumes:
ChatGPT, Claude, Gemini, Copilot, Perplexity… models, wrappers around models,
whole harnesses built around models. New names every week. It FEELS
overwhelming — I know.

But here's the secret that makes it all manageable: underneath every single
one of these, the exact same thing happens. A prompt goes in, a response
comes out… and in between — [click: the arrow breaks open] — something
happens. Often surprisingly good. Sometimes surprisingly wrong. How does it
DO that?

[click — the box closes around the question mark] Everything in between is
hidden. A black box. Honest show of hands: for whom does AI still feel like
that — a black box? [hands] Yeah. Me too — for a long time. Until I started
to ask questions. Questions to AI, actually — and I'll come back to that.
-->

---

<div class="kicker">Today</div>

# Demystifying the black box

<hr class="rule" />

<div class="stage3">

<div v-click.hide="1" class="comic-hero">
  <img :src="'/photos/glue-original.jpg'" class="glue-shot" />
  <div class="credit mt-3">Google AI Overview, May 2024 · the answer (left) & its source: an 11-year-old Reddit joke (right) · via @petergyang</div>
</div>

<div v-click="1" class="box-bullets">
  <img :src="'/art/box-open-left.svg'" class="openbox" />
  <div class="right-col">
    <ul class="bullets">
      <li v-click="2"><b>Use it smarter</b><span>Push its limits, catch its lies</span></li>
      <li v-click="3"><b>Know what you're talking about</b><span>Cut through the hype, spot the confident nonsense</span></li>
      <li v-click="4"><b>Enjoy: it's fun!</b><span>Everyone has a little nerd inside</span></li>
    </ul>
    <div v-click="5" class="workshop-box">
      <b>Workshop:</b> have an AI assistant ready to prompt.
    </div>
  </div>
</div>

</div>


<img :src="'/art/tovenaar-04-wijzend.svg'" class="mage" />

<!--
[glue card on screen] A real one from last year: someone asked Google how to
keep the cheese from sliding off a pizza. Its AI answered — with total
confidence — "add about an eighth of a cup of non-toxic glue to the sauce."
It had scraped an eleven-year-old joke off Reddit and served it as fact.
Brilliant, and completely clueless. THAT is why it's worth understanding what's
inside. Three reasons.

[click — comic gone, the box opens] Once we open the box a little, three things
change:

[click] One — you USE it smarter. You push its limits and you catch its lies,
instead of trusting it blindly.

[click] Two — you KNOW what you're talking about. You cut through the hype and
spot the confident nonsense — and in a field full of that, real understanding
makes people take you seriously.

[click] Three — and honestly, it's just FUN. Everyone's got a little nerd
inside. Today we let it out.
-->

---

<div class="kicker">Who am I</div>

<div class="whoami-grid">
  <div class="col-labels"><div v-click="1">Academia</div><div v-click="2">Industry</div></div>
  <div class="row-labels"><div class="rl" v-click="1">Pre-nomadic</div><div class="rl" v-click="3">Nomadic</div></div>
  <div class="whoami" v-click="1">
    <div class="q tl" v-click="1">
      <div class="q-item">
        <div class="q-txt"><b>MSc Applied Physics</b><span>TU Eindhoven · Harvard T.H. Chan</span></div>
        <svg class="q-icon" viewBox="0 0 24 24" fill="none" stroke="#f0e6d2" stroke-width="1.5"><circle cx="12" cy="12" r="2.2"/><ellipse cx="12" cy="12" rx="10" ry="4"/><ellipse cx="12" cy="12" rx="10" ry="4" transform="rotate(60 12 12)"/><ellipse cx="12" cy="12" rx="10" ry="4" transform="rotate(120 12 12)"/></svg>
      </div>
      <div class="q-item">
        <div class="q-txt"><b>MSc Econometrics</b><span>Tilburg University</span></div>
        <svg class="q-icon" viewBox="0 0 24 24" fill="none" stroke="#f0e6d2" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="3,16 9,10 13,14 21,5"/><polyline points="15,5 21,5 21,11"/></svg>
      </div>
    </div>
    <div class="q tr" v-click="2">
      <div class="q-item">
        <svg class="q-icon" viewBox="0 0 24 24" fill="none" stroke="#f0e6d2" stroke-width="1.5" stroke-linejoin="round"><rect x="7" y="7" width="10" height="10" rx="1"/><rect x="10.5" y="10.5" width="3" height="3"/><g stroke-linecap="round"><line x1="9.5" y1="7" x2="9.5" y2="4"/><line x1="14.5" y1="7" x2="14.5" y2="4"/><line x1="9.5" y1="17" x2="9.5" y2="20"/><line x1="14.5" y1="17" x2="14.5" y2="20"/><line x1="7" y1="9.5" x2="4" y2="9.5"/><line x1="7" y1="14.5" x2="4" y2="14.5"/><line x1="17" y1="9.5" x2="20" y2="9.5"/><line x1="17" y1="14.5" x2="20" y2="14.5"/></g></svg>
        <div class="q-txt"><b>Mathware / R&D Engineer</b><span>ASML · Philips</span></div>
      </div>
    </div>
    <div class="q bl" v-click="4">
      <div class="q-item">
        <div class="q-txt"><b>MSc Artificial Intelligence</b><span>Open Universiteit Nederland</span></div>
        <svg class="q-icon" viewBox="0 0 24 24" fill="none" stroke="#f0e6d2" stroke-width="1.4"><line x1="6" y1="7" x2="14" y2="12"/><line x1="6" y1="17" x2="14" y2="12"/><line x1="14" y1="12" x2="20" y2="7"/><line x1="14" y1="12" x2="20" y2="17"/><circle cx="6" cy="7" r="1.7" fill="#f0e6d2"/><circle cx="6" cy="17" r="1.7" fill="#f0e6d2"/><circle cx="14" cy="12" r="1.9" fill="#f0e6d2"/><circle cx="20" cy="7" r="1.7" fill="#f0e6d2"/><circle cx="20" cy="17" r="1.7" fill="#f0e6d2"/></svg>
      </div>
    </div>
    <div class="q br" v-click="3">
      <div class="q-item">
        <svg class="q-icon" viewBox="0 0 24 24" fill="none" stroke="#f0e6d2" stroke-width="1.6" stroke-linecap="round" stroke-linejoin="round"><polyline points="8,7 3,12 8,17"/><polyline points="16,7 21,12 16,17"/></svg>
        <div class="q-txt"><b>Software R&D Engineer</b><span>Freelance at Startups</span></div>
      </div>
      <div class="q-item">
        <svg class="q-icon" viewBox="0 0 24 24" fill="none" stroke="#f0e6d2" stroke-width="1.5" stroke-linejoin="round"><path d="M12 3 21 8 12 13 3 8z"/><path d="M3 8v8l9 5 9-5V8"/><line x1="12" y1="13" x2="12" y2="21"/></svg>
        <div class="q-txt"><b>Building AI harnesses</b><span>Personal Projects</span></div>
      </div>
    </div>
  </div>
</div>

<div class="balance-block" v-click="5">Outdoors · Sports · Community</div>

<!--
A short introduction about me. Before becoming a nomad I studied physics, and
later econometrics — because I like to understand the world and describe it
with math. That's the lens for today.

My early career was in the Dutch high-tech industry. Back then we joked that
ASML was the most unknown important company in the Netherlands. Now people
know it from the stock charts — for who doesn't: they make the machines that
make chips. The stuff all those AI data centers run on. So in a way I've seen
this wave coming from the factory side.

But like most of you, I didn't want to live in one place — so I went remote,
freelancing for startups and research institutes. And now AI has become so
capable that I'm building a personal human-and-software agency with it, and
I've started a master's in AI to get back closer to my roots.

One more thing — AI pulls us MORE behind the computer, while most of us want
less of that. So for me the balance is outdoors, sports, community. If that
resonates: find me on board, I also run the morning workouts. [beat]
-->

---

<div class="kicker">The plan</div>

# Our route today

<hr class="rule" />

<div class="route">
  <div class="stop" v-click="1"><span class="stop-num">1.</span><span class="stop-title">AI is not new</span></div>
  <div class="stop" v-click="2"><span class="stop-num">2.</span><span class="stop-title">An LLM is statistics built on our written world</span></div>
  <div class="stop" v-click="3"><span class="stop-num">3.</span><span class="stop-title">AI tools are cars wrapped around the same engines</span></div>
</div>

<img :src="'/art/tovenaar-07-armen-over-elkaar.svg'" class="mage" />

<!--
So here's the plan — three sections, and each title is a claim I'm going to
prove to you.

One: AI is not new. Two: an LLM is statistics built on our written world —
sounds cryptic now, it won't in half an hour. Three: AI tools are cars around
the same engine.
-->

---

<div class="kicker green-kicker">How this works</div>

# This is a workshop

<Countdown :minutes="5" :run="false" class="clock-lg" />

<hr class="rule" />

<div class="workshop-flow workshop-flow-h">

<div class="wf-block" v-click="1">
  <div class="wf-head">During each part</div>
  <div class="wf-sub">while you are listening</div>
  <div class="wf-lead">Write down at least one question:</div>
  <ul class="wf-list">
    <li>Something you don't understand</li>
    <li>Something that makes you wonder</li>
    <li>Something you want to know more of</li>
    <li>Anything that comes to mind…</li>
  </ul>
</div>

<div class="wf-block" v-click="2">
  <div class="wf-head">After each part</div>
  <div class="wf-sub">get into groups of two or three with your neighbours</div>
  <div class="wf-lead"><b>Individually:</b> choose one of your questions and ask it to your AI assistant.</div>
  <div class="wf-lead mt-2">Share with your neighbours:</div>
  <ul class="wf-list">
    <li>Something striking you learned</li>
    <li>A new question that was raised</li>
    <li>Something that's still unclear</li>
  </ul>
</div>

</div>

<img :src="'/art/tovenaar-04-wijzend.svg'" class="mage mage-left" />

<!--
But this is a workshop — so we will get active as well. Don't worry: we'll only
do some prompting here, so you don't need anything fancy set up.

Here's the deal. The talk has three sections. During each one, I challenge you
to write down at least one question. Something you don't understand, something
that makes you wonder, something you want to know more about — it can be
anything. And after each section, you get five minutes to ask that question…
to AI. And to learn from the answer.

Any chat app you already have on your phone works — ChatGPT, Claude, Gemini,
the free tier is fine.

I'll put some example questions on the screen each round, but it's much better
if you bring your own. Because that's the real skill I want you to leave with:
noticing where your understanding stops — and just asking.

And by the way: I'm also still learning. That's why I let AI answer your
questions. [smile]
-->

---
layout: center
---

<div class="kicker">Part one</div>

<div class="display">AI is not new</div>

<img :src="'/art/tovenaar-04-wijzend.svg'" class="mage" />


<!--
Claim number one: AI is not new. In fact, it's about as old as the computer
itself. Let me show you — quickly, because history should feel like a
fly-over.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# What is intelligence?

<hr class="rule-tight" />

<div class="intel-row">
  <figure class="intel-cell" v-click="1"><img :src="'/photos/nat-bee.jpg'" /><figcaption>bee</figcaption></figure>
  <figure class="intel-cell" v-click="2"><img :src="'/photos/nat-octopus.jpg'" /><figcaption>octopus</figcaption></figure>
  <figure class="intel-cell" v-click="3"><img :src="'/photos/nat-dolphin.jpg'" /><figcaption>dolphin</figcaption></figure>
  <figure class="intel-cell" v-click="4"><img :src="'/photos/nat-crow.jpg'" /><figcaption>crow</figcaption></figure>
</div>
<div class="intel-caption" v-click="4">natural intelligence is everywhere · in <b class="accent">degrees</b></div>

<div class="def-line" v-click="5">PERCEPTION <span class="accent">→</span> PROCESSING <span class="accent">→</span> ACTION</div>
<div class="def-ref" v-click="5">the "sense–think–act" agent loop · Russell & Norvig, <i>AI: A Modern Approach</i></div>

<div class="intel-row" v-click="6">
  <figure class="intel-cell"><img :src="'/photos/ai-calculator.jpg'" /><figcaption>calculator</figcaption></figure>
  <figure class="intel-cell"><img :src="'/photos/deepblue.jpg'" /><figcaption>chess computer</figcaption></figure>
  <figure class="intel-cell"><img :src="'/photos/ai-selfdriving.jpg'" /><figcaption>self-driving car</figcaption></figure>
  <figure class="intel-cell"><img :src="'/photos/ai-robot.jpg'" /><figcaption>humanoid robot</figcaption></figure>
</div>
<div class="intel-caption" v-click="6">artificial intelligence also comes in degrees · <b class="accent">narrow</b> → <b class="accent">general</b> → at the far end: <b class="accent">AGI</b>, everything a human can do</div>



<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" />

<!--
First: what even IS intelligence? There's no agreed definition — even the
experts disagree. But look at nature: [clicks] a bee finding the shortest route,
an octopus opening a jar, a dolphin recognising itself in a mirror, a crow
bending a wire into a hook. All intelligent — in very different degrees.

[click — the definition] A workable definition, borrowed from the AI textbook:
perception, processing, action. You take something in, you do something with
it, you act. And you need that action to OBSERVE intelligence — a brain in a
jar shows you nothing.

[click — artificial row] Now the artificial versions, and notice they're also
in degrees: a calculator — fast but blind. A chess computer — brilliant at ONE
thing. A self-driving car — perceives, decides, acts in the real world. A
humanoid robot — reaching for something more general. From narrow to general —
and at the far end of that dial sits the field's ultimate ambition: AGI, a
machine that can do everything a human can.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# As old as the computer

<hr class="rule" />

<div class="timeline timeline-big">
  <div class="tl-row"><span class="tl-label">the dream</span><span class="tl-year">1600s</span><span class="tl-txt">Leibniz: <i>"calculemus"</i> · let us calculate <span class="tl-ref">Leibniz, De Arte Combinatoria</span></span></div>
  <div class="tl-row"><span class="tl-label">the question</span><span class="tl-year">1950</span><span class="tl-txt">Turing: can machines think? <span class="dim">(the Turing test)</span> <span class="tl-ref">Turing, "Computing Machinery & Intelligence"</span></span></div>
  <div class="tl-row"><span class="tl-label">the name</span><span class="tl-year">1956</span><span class="tl-txt">coined at the Dartmouth <i>"summer project"</i> <span class="dim">· one summer?!</span> <span class="tl-ref">Dartmouth Workshop, 1956</span></span></div>
  <div class="tl-row"><span class="tl-label">the proof</span><span class="tl-year">1997</span><span class="tl-txt">Deep Blue beats the world chess champion <span class="tl-ref">IBM Deep Blue vs Kasparov</span></span></div>
  <div class="tl-you-flex"><span class="tl-label">already here</span><span class="eb-year">90s → now</span><span><b>the AI you already use</b> · <span class="dim">spam filters · Translate · Netflix picks</span></span></div>
</div>

<div class="mt-3 dim italic">"This dream is older than most of us · and you've been using it for years."</div>


<img :src="'/art/tovenaar-07-armen-over-elkaar.svg'" class="mage" />

<!--
Humans have wanted to build thinking machines for centuries. Leibniz, sixteen
hundreds — the dream: arguments settled by computation, "calculemus", let us
calculate. Turing helped invent the computer itself — and the moment it existed, he asked:
can it think? The computer and the question were born together. 1950 — that's
the Turing test.

1956 — the field gets its name at a summer workshop in Dartmouth. Fun detail:
the founders genuinely thought a handful of researchers could crack it in ONE
summer. (Spoiler: that optimism sets up the first winter.)

1997 — the proof of concept: Deep Blue beats the world chess champion. But
notice: it beat the world champion at exactly ONE thing — it couldn't even play
tic-tac-toe. The exact opposite of that AGI ambition we just met.

So no, this did not start with ChatGPT. This dream is older than most of us.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# AI summers and winters

<hr class="rule" />

<div style="text-align:center;">
<svg viewBox="0 0 700 250" class="winters" style="height:14.5rem; width:auto;" preserveAspectRatio="xMidYMid meet">
  <defs><marker id="arrHead" viewBox="0 0 12 12" refX="6" refY="6" markerWidth="7" markerHeight="7" orient="auto-start-reverse">
    <path d="M1,1 L11,6 L1,11 Z" fill="#e3b04b"/></marker></defs>
  <path d="M20.0,209.0 L38.3,203.0 L65.7,184.2 L93.1,158.4 L120.6,133.2 L148.0,116.1 L170.9,111.6 L193.7,116.4 L221.1,131.0 L248.6,148.4 L276.0,160.3 L294.3,161.7 L317.1,154.5 L344.6,133.7 L372.0,105.3 L399.4,77.7 L426.9,59.5 L449.7,55.3 L472.6,61.4 L500.0,78.5 L527.4,98.6 L550.3,110.7 L568.6,114.0 L591.4,108.4 L618.9,87.7 L646.3,57.4 L662,44"
        fill="none" stroke="#e3b04b" stroke-width="3.5" stroke-linecap="round" marker-end="url(#arrHead)"/>
  <text x="150" y="92" fill="#f0e6d2" font-size="17" text-anchor="middle">summer</text>
  <text x="400" y="50" fill="#f0e6d2" font-size="17" text-anchor="middle">summer</text>
  <text x="628" y="66" fill="#e3b04b" font-size="19" font-weight="bold" text-anchor="middle">now</text>
  <text x="180" y="185" fill="#9a917f" font-size="15" text-anchor="middle">~1974</text>
  <text x="180" y="205" fill="#9a917f" font-size="13" text-anchor="middle">algorithms hit a wall</text>
  <text x="440" y="187" fill="#9a917f" font-size="15" text-anchor="middle">~1990</text>
  <text x="440" y="207" fill="#9a917f" font-size="13" text-anchor="middle">too little data & compute</text>
</svg>
</div>

<div class="mt-3 text-lg dim">money in → hype → disappointment → winter → <b class="accent">a breakthrough revives it</b> → money in again</div>



<img :src="'/art/tovenaar-01-basis.svg'" class="mage" />

<!--
But the road was bumpy. AI moves in summers and winters: big promises, money
floods in… results disappoint… funding dries up — winter. Twice.

First winter, mid-70s: the algorithms simply hit a wall — the ideas were there,
the methods weren't good enough. Second winter, around 1990: not enough data,
not enough compute. Remember those two — they matter in a minute.

But notice the shape: every winter was followed by a breakthrough that pulled
the money — and the belief — right back in. The dream never died; it just kept
waiting for the pieces to arrive.

And right now? We're in the hottest summer the field has ever had.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# Why the boom now?

<hr class="rule" />

<div class="grid grid-cols-[3fr_2fr] gap-12 items-center">
<div>

<div class="igniters">
  <div class="ig" v-click="1"><span class="ig-n">1</span><div><b>One architecture</b><span>the transformer paper, 2017</span><span class="ref">Vaswani et al., "Attention Is All You Need"</span></div></div>
  <div class="ig" v-click="2"><span class="ig-n">2</span><div><b>Hardware</b><span>GPUs · built for games</span></div></div>
  <div class="ig" v-click="3"><span class="ig-n">3</span><div><b>Data</b><span>the internet finally produced enough text</span></div></div>
</div>

<div class="mt-5 accent text-lg" v-click="4">LLMs are only a small part of AI · but that's our focus today.</div>

</div>
<div v-click="3">
  <div class="example-inset">
    <div class="ex-tag">example</div>
    <div class="ex-big">~100M users<br>in ~2 months</div>
    <div class="ex-sub">ChatGPT · fastest-growing consumer app ever</div>
    <div class="ref mt-1">UBS / Similarweb, 2023</div>
  </div>
</div>
</div>



<img :src="'/art/tovenaar-03-ta-da.svg'" class="mage mage-left" />

<!--
[click — everyday AI] Before the "why now": you've actually used AI for years
without calling it that. Your spam filter. Google Translate. The picks Netflix
and Spotify make for you. Face ID unlocking your phone. That's all AI. So when
I say LLMs are only a small SLICE of AI — this is what I mean.

[click — three igniters] So why did THIS summer explode, after seventy years?
Three things arrived together. One: a new recipe — the transformer, one paper
from 2017. Two: hardware — GPUs, built for gaming, perfect for this math.
Three: data — the internet finally produced enough text to learn language from.

And here's the beautiful part: remember the two winters? Every winter was a
missing ingredient — better algorithms, more compute, more data. All three have
now arrived at once. That's why now.

[click — adoption] Put together: ChatGPT hit a hundred million users in two
months, the fastest-growing consumer app in history. But keep it in proportion:
LLMs are only a small part of AI — they're just the part everyone here uses, so
that's our focus today.

Claim one done: AI is not new — the boom is. Time for YOUR questions.
-->

---

<div class="kicker green-kicker">Your turn <span class="dim">· part one</span></div>

# <span class="green-title">Ask AI a question</span>

<Countdown :minutes="5" :run="true" class="clock-lg" />

<hr class="rule" />

<div class="qround-body">

<div class="recap-inset">
  <div class="ri-title">After each part</div>
  <div class="ri-line">groups of two or three</div>
  <div class="ri-line"><b class="ri-em">Individually:</b> ask AI a question</div>
  <div class="ri-line"><b class="ri-em">Share</b> what stood out</div>
</div>

<div class="qmain">
  <div class="ex-title">Examples</div>
  <div class="qlist">
    <div class="ql">What actually ended the last AI winter?</div>
    <div class="ql">Is a thermostat really a little bit intelligent?</div>
    <div class="ql">What was so groundbreaking about the transformer paper?</div>
    <div class="ql">Why did GPUs beat CPUs for training neural networks?</div>
  </div>
</div>

</div>

<div class="bubble bubble-dn" style="left:7rem; bottom:8rem; right:auto; text-align:left; max-width:16rem;"><b>Stuck?</b> Start with "Why…" · "What ended…" · "Explain … like I'm 12"</div>
<img :src="'/art/tovenaar-06-denkend.svg'" class="mage mage-left" />


<!--
Take out your phone. Look at the question you wrote down — or borrow one of
mine. Ask it to any AI you have. Read the answer. Then ask ONE follow-up on
whatever surprises you.

I'll walk around — wave at me if you want help or want to show me something.

[during: walk the room, answer 1-on-1, collect one or two nice questions]

[after 5 min] Who wants to share their QUESTION — not the answer, just the
question? [take 1–2] Beautiful. Feel what you just did? You found the edge of
what you know and pushed past it. That's the whole habit. Let's load you up
with more questions.
-->

---
layout: center
---

<div class="kicker">Part two</div>

<div class="display">An LLM is statistics<br>built on our written world</div>

<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" />


<!--
Claim number two — and this is the heart of the talk: an LLM is statistics
built on our written world.

Statistics? Really? Let me prove it. You'll do the statistics yourselves —
right now.
-->

---

<div class="kicker">Part two <span class="dim">· statistics built on our written world</span></div>

# You are the model

<hr class="rule" />

<div class="grid grid-cols-[2fr_3fr] gap-10 items-center">
<div>
  <img :src="'/photos/titanic.jpg'" class="photo w-full" />
  <div class="credit mt-1">RMS Titanic leaving Southampton, 1912 · F.G.O. Stuart</div>
</div>
<div class="space-y-6 text-2xl" style="font-family:'Fraunces',serif;">
  <p>"Titanic got stuck on …"</p>
  <p v-click>"From Southampton, the ship sails<br>across the Atlantic to New …"</p>
  <p v-click>"A transatlantic crossing takes … days"</p>
</div>
</div>

<div v-click class="mt-6 accent text-lg">you just predicted the next word from the previous words</div>



<img :src="'/art/tovenaar-04-wijzend.svg'" class="mage" />

<!--
Finish this sentence for me, all together: "Titanic got stuck on…" — [iceberg!]

Next one: "From Southampton, the ship sails across the Atlantic to New…" —
[York!] — very good, you clearly read the brochure.

"A transatlantic crossing takes…" — [seven days!]

Congratulations. You just did — literally — what an LLM does: you predicted
the next word from the previous words. That's the entire job description.
Keep that Southampton sentence in mind; it's going to follow us through this
whole section.
-->

---

<div class="kicker">Part two <span class="dim">· statistics built on our written world</span></div>

# The list of percentages IS the answer

<div class="grid grid-cols-[2fr_1fr] gap-8 items-center mt-2">
  <img :src="'/art/top5.png'" class="rounded" />
  <div class="text-lg dim leading-relaxed">everything the model outputs is this list <br><br>the reply you see is just a <b class="accent">draw</b> from it</div>
</div>



<img :src="'/art/tovenaar-05-verbaasd.svg'" class="mage" />

<!--
Here's what that looks like inside a real model. [If someone asks which one:
it's GPT-2 — small, open and older, chosen because I can show you its
insides.] This is an actual language model, given our sentence — and this is its real output: a short list of
candidate next words, each with a probability.

And here's the thing most people don't know: this list IS the answer.
Everything else — the fluent reply, the paragraph, the personality — is just
drawing from lists like this, one word at a time, again and again.

Percentages. Sound familiar? That's… statistics.
-->

---

<div class="kicker">Part two <span class="dim">· statistics built on our written world</span></div>

# LLMs are pattern generators

<hr class="rule" />

<div class="grid grid-cols-[3fr_2fr] gap-12 items-center">
<div>
<svg viewBox="0 0 360 200" class="w-64">
  <g fill="#e3b04b">
    <circle cx="40" cy="165" r="4"/><circle cx="90" cy="142" r="4"/><circle cx="140" cy="128" r="4"/>
    <circle cx="190" cy="100" r="4"/><circle cx="240" cy="81" r="4"/><circle cx="290" cy="68" r="4"/>
  </g>
  <path d="M20,178 L330,45" stroke="#f2ecdf" stroke-width="2" stroke-dasharray="6 6" opacity="0.7"/>
  <circle cx="330" cy="45" r="6" fill="none" stroke="#e3b04b" stroke-width="2"/>
</svg>

<div class="text-lg leading-relaxed mt-3">

find the pattern → predict the next point

<span v-click="1" class="block mt-3">now imagine this in <b>many, many more dimensions</b></span>

<span v-click="2" class="block mt-3 dim italic">"an econometrician would call this a regression · just in absurdly many dimensions"</span>

</div>
</div>
<div v-click="3">
  <img :src="'/photos/fence.jpg'" class="photo w-full" style="max-height:17.5rem; object-fit:contain; background:#f5f5f0; border-radius:0.4rem;" />
  <div class="credit mt-1 text-center">it continues the pattern · whether that was the point or not</div>
</div>
</div>



<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" />

<!--
You've all seen this picture in school: some data points, a line through them,
and the line predicts the next point. Find the pattern, extend the pattern.

That is what you did with the Titanic sentence, and it's what the model does
with language. Just — not in two dimensions. In many, many more.

An econometrician would call this a regression. Just… in absurdly many
dimensions. That's not a joke, that's technically accurate — and it's the
whole reason I can stand here and tell you: it's "just" statistics.
Remember that word — "just". I'll come back for it.

[click — the fence comic] And this little robot shows you the fine print of
pattern-continuation. Dad paints a few planks, each one a bit less than the
last… and the robot faithfully continues the PATTERN — not the intention.
Keep him in mind: he'll explain a lot when we get to hallucination.
-->

---

<div class="kicker">Part two <span class="dim">· statistics built on our written world</span></div>

# It learned the connections between words

<hr class="rule" />

<div class="grid grid-cols-[3fr_2fr] gap-10 items-center">
<div>
<div class="mt-2 text-xl leading-relaxed" style="font-family:'Fraunces',serif;">
"like an old couple finishing each other's sentences <br><span class="dim">trained on years of being together"</span>
</div>

<div v-click class="mt-6 text-lg">
those connections are numbers: <b class="accent">weights</b><br>
<span class="dim">a web of weighted connections = a <b>neural network</b>. that's the whole mystery.</span>
</div>
</div>
<svg viewBox="0 0 320 300" class="w-60 mx-auto constellation">
  <g stroke="#e3b04b" stroke-width="1" opacity="0.4">
    <line x1="60" y1="60" x2="160" y2="40"/><line x1="60" y1="60" x2="90" y2="150"/>
    <line x1="160" y1="40" x2="240" y2="90"/><line x1="90" y1="150" x2="240" y2="90"/>
    <line x1="90" y1="150" x2="150" y2="230"/><line x1="240" y1="90" x2="270" y2="200"/>
    <line x1="150" y1="230" x2="270" y2="200"/><line x1="160" y1="40" x2="90" y2="150"/>
  </g>
  <g fill="#f2ecdf">
    <circle cx="60" cy="60" r="3.5"/><circle cx="160" cy="40" r="5"/><circle cx="240" cy="90" r="4"/>
    <circle cx="90" cy="150" r="4.5"/><circle cx="150" cy="230" r="3.5"/><circle cx="270" cy="200" r="3"/>
  </g>
  <g fill="#9a917f" font-size="15" font-family="Inter, sans-serif">
    <text x="34" y="46">ship</text><text x="148" y="24">sea</text><text x="216" y="74">captain</text>
    <text x="58" y="176">voyage</text><text x="120" y="256">harbor</text><text x="248" y="226">tide</text>
  </g>
</svg>
</div>

<div class="bubble" style="right:9.5rem; bottom:3.2rem;">wait · so it never looks anything up?</div>
<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" />

<!--
How can it predict so well? Because it has learned the connections between
words. Like an old couple finishing each other's sentences — that's not
telepathy, that's years of training on each other.

Those connections are stored as numbers. They're called weights. And a big web
of weighted connections has a name you've heard before: a neural network.
That's it. That's the whole mystery behind the scary term.

[bubble] And I hear the little wizard asking: "wait — so it never looks
anything up?" Hold that thought. It's exactly the right question.
-->

---

<div class="kicker">Part two <span class="dim">· statistics built on our written world</span></div>

# A model is literally a file of numbers

<div class="grid grid-cols-2 gap-6 mt-2 items-center">
  <img :src="'/ai_model_file_numbers.png'" class="rounded" />
  <img :src="'/ai_model_file_heatmap.png'" class="rounded" />
</div>

<div class="mt-3 dim text-center">real weights from a real model (GPT-2) · this is <i>literally</i> what's inside</div>

<div v-click class="mt-2 accent text-center text-lg">so… where do these numbers come from?</div>



<img :src="'/art/tovenaar-05-verbaasd.svg'" class="mage mage-left" />

<!--
And here's my favorite demystifier. A model is literally a file of numbers.
This is not an artist impression — these are real weights I pulled out of a
real model, GPT-2. On the left: sixty of them, as they sit in the file. On the
right: two slices of the same file as an image — every pixel is one learned
number.

No database inside. No internet inside. No little person inside. One file of
numbers that finishes sentences. You can download one yourself tonight —
well, when we have internet again.

Which leaves the only question that matters: where do these numbers COME from?
That's the "built on our written world" part. Three steps.
-->

---

<div class="kicker">Part two <span class="dim">· step 1 of 3</span></div>

# Data is gold

<hr class="rule" />

<div class="rows text-lg max-w-3xl">
  <div>the raw material: the public web · books · articles · code</div>
  <div class="accent"><b>"well over 100,000 years of nonstop reading, around the clock"</b> <span class="ref">Llama 4: &gt;30T tokens, Meta 2025</span></div>
  <div v-click>what it read is what it learned <span class="dim">· bias rides in with the data (whose text was it? · now in court)</span></div>
  <div v-click>the exact mix is a <b>trade secret</b> · one training run: <b>$78M – $490M</b> <span class="ref">Stanford AI Index 2025 · Epoch AI</span></div>
</div>



<img :src="'/art/tovenaar-01-basis.svg'" class="mage" />

<!--
Step one: data. You need a mountain of text — the public web, books, articles,
code. How much? One open model was trained on more than twenty TRILLION
words' worth of text. If you read around the clock, no sleep, that's well over
a hundred thousand YEARS of reading. That's the "written world" in my title —
and by the way, that includes things you wrote. All of us are in there.

And quality matters, because what it read is what it learned. If wedding
photos on the internet are mostly one style, the model thinks that IS a
wedding. Bias doesn't get programmed in — it rides in with the data. And
there's an ethical question sitting right there: whose text was all this?
Nobody asked us. That fight is in the courts right now.

The exact data mix? Trade secret. What we do know is the price tag: recent
frontier models cost between eighty and five hundred million dollars to
train — per model.
-->

---

<div class="kicker">Part two <span class="dim">· step 2 of 3</span></div>

# Training = trial and error

<hr class="rule" />

<div class="grid grid-cols-[3fr_2fr] gap-10 items-start">
<div class="rows text-lg">
  <div>start with <b>random</b> numbers → billions of nudges</div>
  <div class="dim italic">"the machine turns its <b>own</b> billions of dials, a nudge per example"</div>
  <div v-click>nobody programs the numbers in → <b class="accent">machine learning</b></div>
  <div v-click>it kept the <b>patterns, not the pages</b> · GPUs, data centers</div>
</div>
<div class="mt-2"><img :src="'/photos/dials.jpg'" class="photo h-44 w-full" /><div class="mini-credit">1940s mixing console · bobintraveling, CC BY 2.0</div></div>
</div>

<div class="bubble" style="right:9.5rem; bottom:3.2rem;">who turns<br>billions of dials?!</div>
<img :src="'/art/tovenaar-05-verbaasd.svg'" class="mage" />

<!--
Step two: training. And this surprises people: the numbers start RANDOM. Pure
noise. The model predicts the next word of a real sentence, gets it wrong,
and every number gets a tiny nudge in the right direction. Then again. And
again — billions of times.

Picture a machine with billions of tiny dials. Training is the machine turning
its OWN dials, a tiny nudge per example. [bubble] "Who turns billions of
dials?!" — nobody! That's the point. Nobody programs the numbers in. The
machine adjusts them itself, from data. THAT is why it's called machine
learning. No mysticism required.

Important: it kept the patterns, not the pages. You can't pull the original
books back out of the file — though rare memorized snippets exist, which is
exactly what those lawsuits are about. And because it starts random, every
training run ends up slightly different — no two models are ever the same.

Doing billions of nudges on trillions of words is only possible in parallel.
That's the GPUs. That's the data centers. That's why ASML machines matter.
-->

---

<div class="kicker">Part two <span class="dim">· training, made visible</span></div>

# Watch it grow up

<img :src="'/art/stages.png'" class="h-88 mx-auto mt-2 rounded" />



<img :src="'/art/tovenaar-03-ta-da.svg'" class="mage" />

<!--
And you can literally watch this happen. I trained a tiny model myself — on my
own little server, no magic — and saved what it produced along the way.

At the start: pure gibberish, random keyboard-mashing. A bit later: it has
discovered that letters form words. Later still: grammar appears. And then:
sentences that actually flow.

Nobody taught it spelling. Nobody taught it grammar. It's the dials turning,
nudge by nudge. This is training — made visible.
-->

---

<div class="kicker">Part two <span class="dim">· flex</span></div>

# Meaning becomes geometry

<img :src="'/art/embedding-map.png'" class="h-80 mx-auto mt-2 rounded" />

<div class="mt-2 dim text-center">similar things end up close together in the numbers</div>



<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" />

<!--
[FLEX SLIDE — only if on schedule at the checkpoint; otherwise skip, it makes
a great answer in the question round.]

A beautiful side effect of all that dial-turning: meaning becomes geometry.
Words that mean similar things end up close together in the numbers. This map
is made from a real model's internals: ships cluster with ships, cities with
cities. And famously: king minus man plus woman lands you near… queen. The
model was never told what a king is. It's in the numbers anyway.
-->

---

<div class="kicker">Part two <span class="dim">· step 3 of 3</span></div>

# Post-training

<hr class="rule" />

<div class="rows text-lg max-w-3xl">
  <div>the raw model is a <b>text-completer</b> · not yet an assistant</div>
  <div v-click>tuned with <b>human feedback</b>: helpful answers, good behaviour <span class="dim">(the term: RLHF)</span></div>
  <div v-click>+ safeguards & guardrails</div>
</div>

<div v-click class="mt-8 text-xl accent" style="font-family:'Fraunces',serif;">"AI is not neutral · it's built, tuned and controlled."</div>



<img :src="'/art/tovenaar-07-armen-over-elkaar.svg'" class="mage" />

<!--
Step three — the part people skip. After all that reading, the raw model is a
brilliant text-completer, but not an assistant. Ask it a question and it
might just… continue with three more questions. That's completing text!

So it gets a finishing school: humans rate its answers — helpful, harmless,
honest — and the dials get nudged once more toward the answers we prefer.
The jargon for that is RLHF, you don't need to remember it. On top of that:
safeguards, guardrails, rules.

But realize what that means: AI is not neutral. It's built, tuned and
controlled — by people, at companies, with choices. Remember that next time
someone says "the AI said so."
-->

---

<div class="kicker">Part two <span class="dim">· the click</span></div>

# Weights are <span class="accent">saved</span>

<div class="grid grid-cols-2 gap-10 mt-4 items-center">
  <img :src="'/ai_model_file_heatmap.png'" class="rounded" />
  <div class="rows text-lg">

<div>training happens <b>once</b>, in a data center</div>
<div>what remains is <b>ONE file</b></div>
<div>no database · no internet inside</div>
<div class="dim">open source = download the file to your own server</div>

  </div>
</div>



<img :src="'/art/tovenaar-05-verbaasd.svg'" class="mage" />

<!--
And then — my favorite moment — the weights are SAVED. Training happens once,
in a data center, for months. And what remains… is this. The same file I
showed you ten minutes ago. The file you watched guessing "New York" IS the
frozen result of this whole pipeline.

That's why there's no database inside, no internet inside. It's all pressed
into the numbers. When people say a model is "open source", this is what they
mean: you can download the file and run it on your own machine.

[show the section title again] Remember the title of this section? "An LLM is
statistics built on our written world." Statistics — the list of percentages.
Built — the dials that turned themselves. On our written world — the hundred
thousand years of reading. Now every word in that title means something.
-->

---
layout: center
---

<div class="grid grid-cols-[3fr_2fr] gap-10 items-center">
<div>
<div class="kicker">Part two <span class="dim">· and yet</span></div>

<div class="display">…and the results are<br><span class="accent">spectacular</span></div>

<div class="mt-8 text-xl leading-relaxed">
train it only to predict the next word <br>and abilities appear that <b>nobody put in</b>.
</div>

<div class="mt-5 dim text-lg">translation · reasoning · code · <span class="accent">emergence</span>.<br>even the makers were surprised.</div>
</div>
<div v-click>
  <img :src="'/art/xkcd-2228.png'" class="photo w-full bg-white p-2" style="max-height:21rem; object-fit:contain;" />
  <div class="credit mt-1 text-center">xkcd #2228, "Machine Learning Captcha" · CC BY-NC</div>
</div>
</div>



<img :src="'/art/tovenaar-05-verbaasd.svg'" class="mage" />

<!--
Now — here's where I have to be honest with you, because something strange
happens at this scale.

We train it to do ONE thing: predict the next word. And abilities appear that
nobody put in. It translates. It reasons through problems. It writes working
code. Nobody designed those features — they emerged from the statistics, at
scale. The field calls it emergence, and even the makers were surprised.

Earlier I basically told you it's JUST statistics. This is where I take the
word "just" back. [magician puts his hat back on] The recipe is statistics —
what the statistics learned, is the interesting part. Maybe there's a little
magic after all.

[click — the captcha comic] Even the captchas have noticed. "Click all the
photos of places you would run for shelter during a robot uprising." We laugh…
because it moved faster than anyone expected.
-->

---

<div class="kicker">Part two <span class="dim">· and weird</span></div>

# Hallucination

<hr class="rule" />

<div class="grid grid-cols-2 gap-14 text-lg">
<div class="leading-relaxed">

**the riverbed**

<img :src="'/photos/riverbed.jpg'" class="photo h-32 w-full my-3" /><div class="mini-credit" style="margin-top:-0.4rem;">Paraná delta · Presidencia Argentina, CC BY 2.0</div>

training carves the riverbed <br>new water <i>always</i> finds a way down

<div class="accent mt-3 text-xl" style="font-family:'Fraunces',serif;">plausible ≠ true</div>

</div>
<div v-click class="leading-relaxed">

**…and it rolls dice**

sometimes a less likely word wins<br>
<span class="dim">(the knob: temperature)</span>

training made the models differ from <i>each other</i> <br>the dice make the <i>same</i> model vary

</div>
</div>



<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" />

<!--
But the same mechanism has a weird side: hallucination. Here's my favorite way
to picture it. Training carves a riverbed into the landscape. Every question
you ask is new water — and water ALWAYS finds a way down. The model always
produces a fluent, confident answer — whether the facts are there or not.
Fluent is what it was trained to be. So: plausible is NOT the same as true.
Never confuse the two again.

And one more twist — remember the list of percentages? [show it again] The
model rolls dice on that list. Usually the most likely word wins, but
sometimes a less likely one gets picked — the knob for that is called
temperature. Look at our own list: twenty-six percent New ZEALAND. Every so
often, the dice send our ship to New Zealand. That's why the same question
gives different answers each time.

So keep the two kinds of randomness apart: training randomness made the
models differ from EACH OTHER. The dice make the SAME model answer
differently every time. Your ChatGPT and mine are the same file — we just
roll different dice.

Section two done — and I'd be amazed if you have no questions now.
-->

---

<div class="kicker green-kicker">Your turn <span class="dim">· part two</span></div>

# <span class="green-title">Go one level deeper</span>

<Countdown :minutes="5" :run="true" class="clock-lg" />

<hr class="rule" />

<div class="qround-body">

<div class="recap-inset">
  <div class="ri-title">After each part</div>
  <div class="ri-line">groups of two or three</div>
  <div class="ri-line"><b class="ri-em">Individually:</b> ask AI a question</div>
  <div class="ri-line"><b class="ri-em">Share</b> what stood out</div>
</div>

<div class="qmain">
  <div class="ex-title">Examples</div>
  <div class="qlist">
    <div class="ql">Why can't it just look things up?</div>
    <div class="ql">What did <i>your</i> model actually train on?</div>
    <div class="ql">If it just predicts words, how can it write code?</div>
    <div class="ql">What is "temperature" in a language model?</div>
  </div>
</div>

</div>

<div class="bubble bubble-dn" style="left:7rem; bottom:8rem; right:auto; text-align:left; max-width:16rem;"><b>Go deeper:</b> ask a follow-up on the answer</div>
<img :src="'/art/tovenaar-05-verbaasd.svg'" class="mage mage-left" />


<!--
Round two. Same game, one upgrade: don't stop at the first answer. Ask one
follow-up — "why?", "give me an example", "explain that simpler". Not being
satisfied with the first answer is the second half of the skill.

[walk the room]

[debrief] Who got somewhere they didn't expect? [take 1–2]

[if the inversion question comes — "if it just predicts words, how can it
write CODE?" — the answer:] predicting the next word WELL, across all human
text, forces the model to build internal structure — grammar, logic, cause
and effect. The mechanism is simple; what the mechanism learned is not.
That's the deepest question in this whole field, and you asked it yourself.
-->

---
layout: center
---

<div class="kicker">Part three</div>

<div class="display">AI tools are cars wrapped<br>around the same engines</div>

<img :src="'/art/tovenaar-05-verbaasd.svg'" class="mage" />


<!--
Claim number three. You now know what a model is. But here's the thing — you
never actually use a raw model. Nobody does. You use products built AROUND
one. Let me show you the anatomy of every AI tool you've ever opened.
-->

---

<div class="kicker">Part three <span class="dim">· cars wrapped around the same engines</span></div>

# The anatomy of every AI tool

<div class="diagram mt-6 mx-auto">
  <div v-click="3" class="ring guard"><span class="ring-label">Guardrails <span class="dim normal-case tracking-normal">· the company's rules</span></span>
    <div v-click="2" class="ring harness"><span class="ring-label">Harness <span class="dim normal-case tracking-normal">· the car: chat window · memory · tools</span></span>
      <div class="ring engine">LLM<br><span class="text-sm dim" style="font-family:'Inter',sans-serif;">the engine</span></div>
    </div>
  </div>
  <div v-click="4" class="ctx-arrow"><span class="accent font-semibold">your context →</span><br><span class="dim text-sm">prompt · your data · instructions</span></div>
</div>



<img :src="'/art/tovenaar-04-wijzend.svg'" class="mage mage-left" />

<!--
In the middle sits the model — the file of numbers. Think of it as the ENGINE.
Raw, powerful, useless on its own. Have you ever driven an engine to the
supermarket?

[click] So around the engine, companies build the car: the harness. The chat
window, the memory that remembers your conversation, the tools it can use —
search, code, your calendar. Everything that makes the engine drivable.

[click] Around THAT: guardrails. The company's safety rules — what it will and
won't do. That layer belongs to the companies, and people constantly try to
trick their way past it — that's called a jailbreak.

[click] And then the last arrow is YOURS: the context. Your prompt, your
documents, your instructions — what you feed in, fresh, every single time.
The engine you can't change, the car you didn't build — but this steering
wheel is always in your hands.
-->

---

<div class="kicker">Part three <span class="dim">· cars wrapped around the same engines</span></div>

# Same model behind

<hr class="rule" />

<div class="grid grid-cols-[3fr_2fr] gap-10 items-start">
<div class="rows text-lg">
  <div>Claude chat & Claude Code · <b>same model behind</b> <span class="dim">(ChatGPT: same trick)</span></div>
  <div v-click>most "AI startups" = a new car around someone else's engine <span class="dim">(a wrapper)</span></div>
  <div v-click>the labs each build their <b>own engines</b>, in versions & sizes</div>
</div>
<div class="mt-2"><img :src="'/photos/engine.jpg'" class="photo h-44 w-full" /><div class="mini-credit">MG B V8 engine · CC BY 2.0</div></div>
</div>



<img :src="'/art/tovenaar-07-armen-over-elkaar.svg'" class="mage" />

<!--
Once you see the car-around-engine picture, the whole AI landscape snaps into
focus.

Claude the chat app and Claude Code — the programming tool — feel completely
different. Same model behind. Different car, same engine. ChatGPT the app and
the thousand products "powered by GPT"? Same trick.

And most AI startups you see pitched — including on this boat — are a new car
around someone else's engine. The industry word is a wrapper. That's not an
insult, by the way: good cars are genuinely hard to build. But now you know
what you're looking at — and what to ask about it.

The engines themselves come from a handful of labs — OpenAI, Anthropic,
Google, Mistral — each with their own models, in versions and sizes. Big
engine: smarter, pricier. Small engine: fast and cheap. Most of "AI cost
optimization" is just: route the easy work to the small engine.
-->

---

<div class="kicker">Part three <span class="dim">· cars wrapped around the same engines</span></div>

# Three ways to make it yours

<hr class="rule" />

<div class="rows text-lg max-w-3xl">
  <div><span class="big-num" style="font-size:1.6rem;">1</span>&ensp;<b>fine-tuning</b> · extra training data, changes the weights <span class="dim">(rare)</span></div>
  <div v-click><span class="big-num" style="font-size:1.6rem;">2</span>&ensp;<b>harness</b> · build tools & memory around the engine</div>
  <div v-click><span class="big-num" style="font-size:1.6rem;">3</span>&ensp;<b>context</b> · what <b>you</b> feed it, every call · <span class="accent">the only layer you always control</span></div>
  <div v-click class="dim italic">"a tool that searches your documents and pastes what it finds into the prompt · that's all 'RAG' is"</div>
  <div v-click class="accent">context is also your anti-hallucination lever: give it your facts instead of letting it guess</div>
</div>



<img :src="'/art/tovenaar-04-wijzend.svg'" class="mage mage-left" />

<!--
So how do you make this thing YOURS? Three ways, from heavy to light.

One: fine-tuning — feed it extra training data and actually change the
weights. Powerful, rare, you'll probably never need it.

Two: build a better car — a harness with your tools and your memory around an
engine. That's what half the products on this ship are.

Three — and this is the one for everyone in this room: context. What you feed
it, every single call. Your background, your documents, your instructions.

You've all heard the buzzword RAG? Here's the entire secret: a tool that
searches your documents and pastes what it finds into the prompt. That's it.
That's all RAG is. One buzzword down.

And here's the payoff from the hallucination story: context is your
anti-hallucination lever. Remember — the river always flows. If you don't
give it your facts, it will guess. So give it your facts.
-->

---

<div class="kicker">Part three <span class="dim">· cars wrapped around the same engines</span></div>

# The tool zoo, sorted

<hr class="rule" />

<div class="strip text-lg">
  <div><div class="font-semibold">cars you drive</div><div class="dim mt-2">ChatGPT · Claude · Gemini<br>Perplexity · Notion AI</div></div>
  <div><div class="font-semibold">car factories</div><div class="dim mt-2">Zapier · n8n<br>Cursor · LangChain</div></div>
  <div><div class="font-semibold">engine builders</div><div class="dim mt-2">OpenAI · Anthropic<br>Google · Mistral</div></div>
</div>

<div class="mt-12 text-2xl accent" style="font-family:'Fraunces',serif;">Overwhelmed? It doesn't matter what you use exactly · just start.</div>



<img :src="'/art/tovenaar-03-ta-da.svg'" class="mage" />

<!--
And with that, the overwhelming tool zoo sorts itself into three shelves.

Cars you just drive: ChatGPT, Claude, Gemini, Perplexity, Notion AI. Car
factories, for building your own: Zapier, n8n, Cursor, LangChain. And the
engine builders underneath it all: a handful of labs.

New tools will launch next week, and the week after. Doesn't matter. They'll
all be one of these three. So if you're overwhelmed — here's my honest
advice: it doesn't matter what you use exactly. Just start. You'll recognize
the anatomy now.

Last round of questions — and this one is the most practical.
-->

---

<div class="kicker green-kicker">Your turn <span class="dim">· part three</span></div>

# <span class="green-title">Make it practical</span>

<Countdown :minutes="5" :run="true" class="clock-lg" />

<hr class="rule" />

<div class="qround-body">

<div class="recap-inset">
  <div class="ri-title">After each part</div>
  <div class="ri-line">groups of two or three</div>
  <div class="ri-line"><b class="ri-em">Individually:</b> ask AI a question</div>
  <div class="ri-line"><b class="ri-em">Share</b> what stood out</div>
</div>

<div class="qmain">
  <div class="ex-title">Examples</div>
  <div class="qlist">
    <div class="ql">Which AI tool fits what I actually do?</div>
    <div class="ql">Difference between ChatGPT the app and GPT the model?</div>
    <div class="ql">How do I give an AI my own documents to work from?</div>
    <div class="ql">When should I build my own tool instead of using one?</div>
  </div>
</div>

</div>

<div class="bubble bubble-dn" style="left:6.5rem; bottom:8rem; right:auto; text-align:left; max-width:17rem;"><b>This time:</b> describe what <i>you</i> do, ask what would help</div>
<img :src="'/art/tovenaar-03-ta-da.svg'" class="mage mage-left" />


<!--
Last round — make it practical. Tell the AI what you actually do — your
business, your work — and ask what would genuinely help. And notice what
you're doing while you do it: you're giving it CONTEXT. You're already
applying section three.

[walk the room]

[debrief] Anyone got an answer they're actually going to use this week?
[take 1–2] Love it.
-->

---
layout: center
---

<div class="kicker">Closing</div>

<div class="display">AI is not magic.</div>

<div class="mt-6 text-xl dim">data · weights · math · the box is grey now</div>

<div class="mt-10 text-2xl accent leading-snug" style="font-family:'Fraunces',serif;">
"Treat the model as a noisy estimator,<br>not an oracle."
</div>

<img :src="'/art/tovenaar-02-hoed-afnemen.svg'" class="mage" />


<!--
Let's close the loop. AI is not magic. It's data, weights and math — statistics
built on our written world, in cars around the same few engines. The box is
grey now. Not fully transparent — even the makers can't see everything in
there — but grey.

If you remember one sentence from today, make it this one: treat the model as
a noisy estimator, not an oracle. It's brilliant, it's fast, and it's guessing.
Check what matters, feed it your facts, and it becomes the best colleague
you've ever had.

And you practiced the most valuable AI skill three times this afternoon:
noticing what you don't know — and just asking. AI moves faster than anyone
can follow. Me included. The people who stay ahead are not the ones who know
everything. They're the ones who keep asking.

So: keep asking.
-->

---
layout: center
---

<div class="kicker">Thank you</div>

<div class="display" style="font-size:2.6rem;">Keep asking.</div>

<div class="mt-8 text-lg dim leading-relaxed">
find me on board · questions, AI talk, or just a chat<br>
and at the morning workouts on deck
</div>

<img :src="'/photos/qm2.jpg'" class="photo h-40 mx-auto mt-8" />

<img :src="'/art/flammarion-gold.png'" style="position:absolute; left:0; bottom:0; width:100%; height:7rem; object-fit:cover; object-position:50% 20%; opacity:0.5;" />

<div class="byline" style="bottom:8rem;">Marijke Valk · NomadCruise 17</div>
<div class="credit" style="position:absolute; bottom:2rem; right:2rem; max-width:22rem; text-align:right;">
photos: Wikimedia Commons · F.G.O. Stuart (PD) · A.R. Chaffin (PD) · C.B. Francke (PD) · Morn/CHM (CC BY 2.0) · Virtual-Pano (CC BY-SA 4.0) · bobintraveling (CC BY 2.0) · Presidencia de la Nación Argentina (CC BY 2.0) · F. Hirzinger (CC BY-SA 3.0) · MG B V8 (CC BY 2.0) · QM2 Hamburg (CC BY-SA 4.0) · xkcd #1838 (CC BY-NC)
</div>


<img :src="'/art/tovenaar-02-hoed-afnemen.svg'" class="mage" />

<!--
Thank you! I'm on this ship all week — find me for questions, deep AI talk, or
just a chat. And if you want to start the day properly: morning workouts on
deck, every day. See you there!
-->
