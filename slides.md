---
theme: default
title: AI is not magic
titleTemplate: '%s · NomadCruise 17'
author: Marijke Valk
colorSchema: dark
exportFilename: ai-is-not-magic
lineNumbers: false
drawings:
  persist: false
transition: fade
mdc: true
favicon: /favicon.svg
layout: default
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

<img :src="'/art/neural-gold.png'" style="position:absolute; right:0; top:-10%; z-index:0; height:120%; width:64%; object-fit:cover; object-position:42% 50%; opacity:0.92; -webkit-mask-image:linear-gradient(to right, transparent 0%, transparent 8%, rgba(0,0,0,0.07) 18%, rgba(0,0,0,0.22) 28%, rgba(0,0,0,0.48) 37%, rgba(0,0,0,0.78) 45%, black 52%); mask-image:linear-gradient(to right, transparent 0%, transparent 8%, rgba(0,0,0,0.07) 18%, rgba(0,0,0,0.22) 28%, rgba(0,0,0,0.48) 37%, rgba(0,0,0,0.78) 45%, black 52%);" />

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

<div class="prow" style="font-family:'Fraunces',serif; font-size:2.8rem; min-height:15rem; letter-spacing:0.02em;">
  <span v-click="1" style="justify-self:end;">PROMPT</span>
  <span class="midzone">
    <svg v-click="[2,4]" viewBox="0 0 340 40" class="longarrow"><line x1="6" y1="20" x2="310" y2="20" stroke="#e3b04b" stroke-width="8" stroke-linecap="round"/><polygon points="308,4 336,20 308,36" fill="#e3b04b"/></svg>
    <span v-click="4" class="splitzone">
      <svg viewBox="0 0 340 40" class="splitarrows"><line x1="6" y1="20" x2="57" y2="20" stroke="#e3b04b" stroke-width="8" stroke-linecap="round"/><polygon points="55,4 83,20 55,36" fill="#e3b04b"/><line x1="259" y1="20" x2="310" y2="20" stroke="#e3b04b" stroke-width="8" stroke-linecap="round"/><polygon points="308,4 336,20 308,36" fill="#e3b04b"/></svg>
      <span class="qwrap">
        <svg v-click="5" class="cube" viewBox="0 0 124 124">
          <polygon points="14,46 34,26 106,26 86,46" fill="#141414" stroke="#f5f5f5" stroke-width="1.6"/>
          <polygon points="86,46 106,26 106,98 86,118" fill="#0a0a0a" stroke="#f5f5f5" stroke-width="1.6"/>
          <polygon points="14,46 86,46 86,118 14,118" fill="#000000" stroke="#f5f5f5" stroke-width="2"/>
        </svg>
        <span class="qmark">?</span>
      </span>
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

<img :src="'/art/tovenaar-15-zwaaiend.svg'" class="mage" />

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
  </div>
</div>

</div>


<img :src="'/art/tovenaar-17-zaklamp-in-doos.svg'" class="mage mage-left" />

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

<div class="kicker">Today</div>

# Your most important skill

<hr class="rule" />

<div v-click="1" class="skill-line"><span class="green-title">Asking questions!</span></div>

<div v-click="2" class="workshop-box skill-box">
  <b>Workshop:</b> have an AI assistant ready to prompt.
</div>

<img :src="'/art/tovenaar-08-wijzend-omhoog.svg'" class="mage" />

<!--
And all three of those rest on ONE skill — the most important one in this
whole talk. Not prompting tricks, not tool names.

[click] Asking questions. Noticing where your understanding stops, and
pushing past it — that's the habit everything else hangs on. It's how I
learned all of this, and it's what we're going to practice today.

[click] Which is why this is a workshop: grab your phone or laptop and have
an AI assistant ready to prompt — any chat app you already use is fine.
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
        <div class="q-txt"><b>Mathware R&D Engineer</b><span>ASML · Philips</span></div>
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

<img :src="'/art/tovenaar-06-schouderophalend.svg'" class="mage" />

<!--
A short introduction about me. [click] Before becoming a nomad I studied
physics, and later econometrics — because I like to understand the world and
describe it with math. That's the lens for today.

[click] My early career was in the Dutch high-tech industry. Back then we
joked that ASML was the most important tech company you've never heard of.
Now people know it from the stock charts — for who doesn't: they make the
machines that make chips. The stuff all those AI data centers run on. So in a
way I've seen this wave coming from the factory side.

[click] But like most of you, I didn't want to live in one place — so I went
remote, freelancing for startups and research institutes. And now AI has
become so capable that I'm building a personal human-and-software agency with
it. [click] And I've started a master's in AI, to get back closer to my
roots.

[click] One more thing — AI pulls us MORE behind the computer, while most of
us want less of that. So for me the balance is outdoors, sports, community.
If that resonates: find me on board, I also run the morning workouts. [beat]
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

<div v-click="4" class="route-note">AI is much more than LLMs, but these are our focus for today (and the cruise).</div>

<img :src="'/art/tovenaar-08-wijzend-omhoog.svg'" class="mage mage-left" />

<!--
So here's the plan — three sections, and each title is a claim I'm going to
prove to you.

[click] One: AI is not new. [click] Two: an LLM is statistics built on our
written world — sounds cryptic now, it won't in half an hour. [click] Three:
AI tools are cars around the same engine.

[click] One honest note before we sail: AI is much more than LLMs — but the
chat-style AI is what everyone here uses, so that's our focus today.
-->

---

<div class="kicker green-kicker">How this works</div>

# This is a workshop

<Countdown :minutes="5" :run="false" class="clock-lg" />

<hr class="rule" />

<div class="workshop-flow workshop-flow-h">

<div class="wf-block" v-click="1">
  <div class="wf-head">During each part</div>
  <div class="wf-sub">While you are listening</div>
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
  <div class="wf-sub">Get into groups of two or three with your neighbours</div>
  <div class="wf-lead"><b>Individually:</b> choose one of your questions and ask it to your AI assistant.</div>
  <div class="wf-lead mt-2">Share with your neighbours:</div>
  <ul class="wf-list">
    <li>Something new that you learned</li>
    <li>Something you don't understand</li>
    <li>A follow-up question it sparked</li>
  </ul>
</div>

</div>

<img :src="'/art/tovenaar-liggend-breed.svg'" class="mage mage-left" style="height:6rem; left:1.5rem; bottom:1.2rem;" />

<!--
But this is a workshop — so we will get active as well. Don't worry: we'll only
do some prompting here, so you don't need anything fancy set up.

[click] Here's the deal. The talk has three sections. During each one, I
challenge you to write down at least one question. Something you don't
understand, something that makes you wonder, something you want to know more
about — it can be anything. [click] And after each section, you get five
minutes: in little groups with your neighbours, everyone asks their own
question… to AI. Learn from the answer, and share what stood out.

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

<img :src="'/art/tovenaar-03-fietsend.svg'" class="mage" />


<!--
Claim number one: AI is not new. In fact, it's about as old as the computer
itself. Let me show you — quickly, because history should feel like a
fly-over.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# What is intelligence?

<hr class="rule-tight" />

<div class="intel-block">
  <div class="intel-row">
    <div class="intel-side" v-click="5">Natural intelligence<br>in different <b class="accent">degrees</b></div>
    <figure class="intel-cell" v-click="4"><img :src="'/photos/nat-slimemold.jpg'" /><figcaption>slime mold</figcaption></figure>
    <figure class="intel-cell" v-click="3"><img :src="'/photos/nat-flytrap.jpg'" /><figcaption>plant</figcaption></figure>
    <figure class="intel-cell" v-click="2"><img :src="'/photos/nat-octopus.jpg'" /><figcaption>octopus</figcaption></figure>
    <figure class="intel-cell" v-click="1"><img :src="'/photos/nat-human.jpg'" style="object-position:50% 30%;" /><figcaption>human</figcaption></figure>
  </div>
</div>

<div class="def-wrap" v-click="6">
  <div class="def-box">
    <div class="def-line">PERCEPTION <span class="accent">→</span> PROCESSING <span class="accent">→</span> ACTION</div>
    <div class="def-ref">Russell &amp; Norvig, <i>AI: A Modern Approach</i></div>
  </div>
</div>

<div class="intel-block">
  <div class="intel-row intel-row-ai">
    <div class="intel-side" v-click="7">Artificial intelligence<br>in different <b class="accent">degrees</b></div>
    <figure class="intel-cell" v-click="8"><img :src="'/photos/ai-calculator.jpg'" /><figcaption>calculator</figcaption></figure>
    <figure class="intel-cell" v-click="9"><img :src="'/photos/deepblue.jpg'" /><figcaption>chess computer</figcaption></figure>
    <figure class="intel-cell" v-click="10"><img :src="'/photos/ai-selfdriving.jpg'" /><figcaption>self-driving car</figcaption></figure>
    <div class="agi-box" v-click="11"><span class="agi-abbr">AGI</span><span class="agi-full">Artificial<br><b>General</b><br>Intelligence</span></div>
  </div>
</div>

<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" style="top:1.4rem; right:1.6rem; bottom:auto; height:7.5rem;" />

<!--
First: what even IS intelligence? There's no agreed definition — even the
experts disagree. But look at nature: [click] us, obviously. [click] An
octopus, opening a jar from the inside. [click] A flytrap that only snaps
shut after it counts TWO touches. [click] Even slime mold — no brain at all —
finds the shortest route through a maze. [click] All intelligent — in very
different degrees.

[click — the definition] A workable definition, borrowed from the AI textbook:
perception, processing, action. You take something in, you do something with
it, you act. And you need that action to OBSERVE intelligence — a brain in a
jar shows you nothing.

[click] Now the artificial versions — and notice they also come in degrees:
[click] a calculator — fast but blind. [click] A chess computer — brilliant
at ONE thing. [click] A self-driving car — perceives, decides, acts in the
real world. [click] From narrow to general — and at the far end of that dial
sits the field's ultimate ambition: AGI, a machine that can do everything a
human can.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# As old as the computer

<hr class="rule" />

<div class="tl2">
  <div class="tl2-row" v-click="1">
    <div class="tl2-txt">
      <div class="tl2-label">dream</div>
      <div class="tl2-main"><span class="tl2-year">1600s:</span> Leibniz: <i>"Calculemus"</i>,&nbsp;&nbsp;let us calculate <span class="dim">(Thinking by a machine)</span></div>
      <div class="tl2-ref">Leibniz, <i>De Arte Combinatoria</i></div>
    </div>
    <img class="tl2-img" :src="'/photos/leibniz.jpg'" style="object-position:50% 15%;" />
  </div>
  <div class="tl2-row" v-click="2">
    <div class="tl2-txt">
      <div class="tl2-label">question</div>
      <div class="tl2-main"><span class="tl2-year">1950:</span> Turing: can machines think? <span class="dim">(The Turing test)</span></div>
      <div class="tl2-ref">Turing, <i>Computing Machinery &amp; Intelligence</i></div>
    </div>
    <img class="tl2-img" :src="'/photos/turing.jpg'" style="object-position:50% 20%;" />
  </div>
  <div class="tl2-row" v-click="3">
    <div class="tl2-txt">
      <div class="tl2-label">name</div>
      <div class="tl2-main"><span class="tl2-year">1956:</span> Dartmouth <i style="margin-right:0.16em">"summer project"</i> names the field AI <span class="dim">(One summer?!)</span></div>
      <div class="tl2-ref">Dartmouth Workshop, 1956</div>
    </div>
    <img class="tl2-img" :src="'/photos/dartmouth-hall.jpg'" style="object-position:50% 40%;" />
  </div>
  <div class="tl2-row" v-click="4">
    <div class="tl2-txt">
      <div class="tl2-label">proof</div>
      <div class="tl2-main"><span class="tl2-year">1997:</span> Computer Deep Blue beats the world chess champion</div>
      <div class="tl2-ref">IBM Deep Blue vs Kasparov</div>
    </div>
    <img class="tl2-img" :src="'/photos/deepblue.jpg'" />
  </div>
  <div class="tl2-row" v-click="5">
    <div class="tl2-txt">
      <div class="tl2-label">use cases</div>
      <div class="tl2-main"><span class="tl2-year">90s →</span> AI in your daily life: <span class="dim">Google Maps, Netflix picks, Face ID</span></div>
    </div>
    <img class="tl2-img" :src="'/photos/face-id.jpg'" style="object-position:50% 25%;" />
  </div>
</div>

<img :src="'/art/tovenaar-03-ta-da.svg'" class="mage" style="top:2.6rem; right:3rem; bottom:auto; height:7.5rem;" />


<!--
[click] Humans have wanted to build thinking machines for centuries. Leibniz,
sixteen hundreds — the dream: arguments settled by computation, "calculemus",
let us calculate. [click] Turing helped invent the computer itself — and the
moment it existed, he asked: can it think? The computer and the question were
born together. 1950 — that's the Turing test.

[click] 1956 — the field gets its name at a summer workshop in Dartmouth. Fun
detail: the founders genuinely thought a handful of researchers could crack
it in ONE summer. (Spoiler: that optimism sets up the first winter.)

[click] 1997 — the proof of concept: Deep Blue beats the world chess
champion. But notice: it beat the world champion at exactly ONE thing — it
couldn't even play tic-tac-toe. The exact opposite of that AGI ambition we
just met.

[click] And from the nineties on, AI quietly moved into your daily life:
Google Maps picking your route, Netflix picking your evening, Face ID
unlocking your phone. You've used AI for years without calling it that.

So no, this did not start with ChatGPT. This dream is older than most of us.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# AI summers and winters

<hr class="rule" />

<div style="text-align:center;">
<svg viewBox="-16 12 676 308" class="winters" style="height:20.4rem; width:auto; display:block; margin:0 auto;" preserveAspectRatio="xMidYMid meet">
  <defs>
    <marker id="arrHead" viewBox="0 0 12 12" refX="6" refY="6" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M1,1 L11,6 L1,11 Z" fill="#e3b04b"/></marker>
    <marker id="axHeadSm" viewBox="0 0 12 12" refX="6" refY="6" markerWidth="4" markerHeight="4" orient="auto-start-reverse"><path d="M1,1 L11,6 L1,11 Z" fill="#cfc9bb"/></marker>
    <g id="sun"><circle r="9" fill="none" stroke="#e3b04b" stroke-width="2.4"/><g stroke="#e3b04b" stroke-width="2.4" stroke-linecap="round"><line y1="-13" y2="-16.5"/><line y1="13" y2="16.5"/><line x1="-13" x2="-16.5"/><line x1="13" x2="16.5"/><line x1="-9.2" y1="-9.2" x2="-11.7" y2="-11.7"/><line x1="9.2" y1="9.2" x2="11.7" y2="11.7"/><line x1="9.2" y1="-9.2" x2="11.7" y2="-11.7"/><line x1="-9.2" y1="9.2" x2="-11.7" y2="11.7"/></g></g>
    <g id="snow"><path d="M-13,2 a7,7 0 0,1 3,-13.6 a9,9 0 0,1 17.5,1.6 a7,7 0 0,1 0.5,12 z" fill="none" stroke="#8cbedc" stroke-width="2.2"/><g fill="#8cbedc"><circle cx="-7" cy="11.5" r="1.7"/><circle cx="0" cy="14" r="1.7"/><circle cx="7" cy="11.5" r="1.7"/></g></g>
  </defs>
  <g stroke="#cfc9bb" stroke-width="0.9" stroke-linecap="round">
    <line x1="0" y1="178" x2="52" y2="178" marker-end="url(#axHeadSm)"/>
    <line x1="0" y1="178" x2="0" y2="140" marker-end="url(#axHeadSm)"/>
  </g>
  <text x="26" y="188" fill="#cfc9bb" text-anchor="middle" style="font-size:7px; font-style:normal;">Time</text>
  <text transform="rotate(-90 -6 159)" x="-6" y="159" fill="#cfc9bb" text-anchor="middle" style="font-size:7px; font-style:normal;">AI Popularity</text>
  <path d="M20,150 L70,150 Q110,150 130,120 Q150,90 175,90 Q200,90 220,120 Q245,155 285,155 Q320,155 345,120 Q372,85 400,85 Q428,85 452,120 Q485,158 520,150"
        fill="none" stroke="#e3b04b" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"/>
  <use href="#sun" transform="translate(175,56) scale(1.35)"/>
  <use href="#sun" transform="translate(400,51) scale(1.35)"/>
  <use href="#snow" transform="translate(285,190) scale(1.3)"/>
  <use href="#snow" transform="translate(490,190) scale(1.3)"/>
  <g v-click="2">
    <path d="M520,150 Q562,140 590,104 Q622,66 650,46" fill="none" stroke="#e3b04b" stroke-width="5" stroke-linecap="round" stroke-linejoin="round" marker-end="url(#arrHead)"/>
    <text x="598" y="38" fill="#e3b04b" font-size="28" font-weight="bold" text-anchor="middle">NOW</text>
    <text x="285" y="240" fill="#8cbedc" font-size="14" font-weight="bold" text-anchor="middle">AI Winter 1970s</text>
    <text x="285" y="264" fill="#cfc9bb" font-size="12" text-anchor="middle">Algorithms stalled</text>
    <text x="490" y="240" fill="#8cbedc" font-size="14" font-weight="bold" text-anchor="middle">AI Winter 1990s</text>
    <text x="490" y="264" fill="#cfc9bb" font-size="12" text-anchor="middle">Too little data</text>
    <text x="490" y="288" fill="#cfc9bb" font-size="12" text-anchor="middle">Weak hardware</text>
  </g>
</svg>
</div>

<div v-click="[1,2]" class="flow-cycle">Money In <span class="fa">➔</span> Hype <span class="fa">➔</span> Disappointment <span class="fa">➔</span> Freeze <span class="fa">➔</span> A Breakthrough <span class="fa">➔</span> Repeat …</div>

<img :src="'/art/tovenaar-06-schouderophalend.svg'" class="mage" />

<!--
But the road was bumpy. AI moves in summers and winters. Twice.

[click] And it's always the same cycle: big promises, money floods in…
results disappoint… funding dries up — freeze. Until a breakthrough pulls the
money — and the belief — right back in. The dream never died; it just kept
waiting for the pieces to arrive.

[click] First winter, mid-70s: the algorithms simply hit a wall — the ideas
were there, the methods weren't good enough. Second winter, around 1990: not
enough data, not enough compute. Remember those two — they matter in a
minute.

And right now? We're in the hottest summer the field has ever had.
-->

---

<div class="kicker">Part one <span class="dim">· AI is not new</span></div>

# Why the boom now?

<hr class="rule" />

<div class="igniters">
  <div class="ig" v-click="1"><span class="ig-n">1</span><div class="ig-txt"><b>New LLM architecture</b> <span>The Transformer, 2017</span><div class="ref">Vaswani et al., "Attention Is All You Need"</div></div></div>
  <div class="ig" v-click="2"><span class="ig-n">2</span><div class="ig-txt"><b>Better hardware</b> <span>GPUs, from gaming</span></div></div>
  <div class="ig" v-click="3"><span class="ig-n">3</span><div class="ig-txt"><b>More data</b> <span>The internet finally had enough text</span></div></div>
</div>

<div v-click="4" class="boom-note"><b>ChatGPT: ±100M users in 2 months</b><br><span class="dim">Fastest growing consumer app ever</span><br><span class="ref">UBS / Similarweb 2023</span></div>

<img :src="'/art/tovenaar-16-juichend.svg'" class="mage" />

<!--
So why did THIS summer explode, after seventy years? Three things arrived
together. [click] One: a new recipe — the transformer, one paper from 2017.
[click] Two: hardware — GPUs, built for gaming, perfect for this math.
[click] Three: data — the internet finally produced enough text to learn
language from.

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

<Countdown :minutes="5" :run="$clicks >= 1" class="clock-lg" />
<span v-click></span>

<hr class="rule" />

<div class="qround-body">

<div class="recap-inset">
  <div class="ri-title">After each part</div>
  <div class="ri-line">Groups of two or three</div>
  <div class="ri-line"><b class="ri-em">Individually:</b> ask AI a question</div>
  <div class="ri-line"><b class="ri-em">Share</b> what stood out</div>
</div>

<div class="qmain">
  <div class="ex-title">Examples</div>
  <div class="qlist">
    <div class="ql">Is a thermostat intelligent?</div>
    <div class="ql">What is the difference between a computer and AI?</div>
    <div class="ql">Was there AI before ChatGPT?</div>
    <div class="ql">Is my navigation app AI?</div>
    <div class="ql">Where do I use AI every day without noticing?</div>
    <div class="ql">What do the letters AGI stand for and what is its definition?</div>
  </div>
</div>

</div>

<img :src="'/art/tovenaar-14-achter-laptop.svg'" class="mage mage-left" />


<!--
Take out your phone. Look at the question you wrote down — or borrow one of
mine. Ask it to any AI you have. Read the answer. Then ask ONE follow-up on
whatever surprises you. [click — starts the five-minute clock]

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

<img :src="'/art/tovenaar-11-vergrootglas.svg'" class="mage" />


<!--
Claim number two — and this is the heart of the talk: an LLM is statistics
built on our written world.

Statistics? Really? Let me prove it. You'll do the statistics yourselves —
right now.
-->

---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# You are the model

<hr class="rule" />

<div class="grid grid-cols-[0.8fr_1.2fr] gap-5 items-center">
<div class="space-y-5 text-xl" style="font-family:'Fraunces',serif;">
  <p v-click="1">"The Titanic hit an <span class="ans"><span v-click.hide="3">…</span><span v-click="3" class="fill-word">iceberg</span></span>"</p>
  <p v-click="4">"The Queen Mary 2 sails<br>from Southampton to<br>New <span class="ans"><span v-click.hide="6">…</span><span v-click="6" class="fill-word">York</span></span>"</p>
  <p v-click="7">"My favourite city in the world is …"</p>
</div>
<div v-click="2" class="relative">
  <div class="relative">
    <img :src="'/art/top5-titanic.png'" class="rounded w-full" style="max-height:15rem; object-fit:contain;" />
    <img v-click="5" :src="'/art/top5.png'" class="rounded absolute inset-0 w-full" style="max-height:15rem; object-fit:contain; background:#0a0e1a;" />
    <img v-click="8" :src="'/art/top5-city.png'" class="rounded absolute inset-0 w-full" style="max-height:15rem; object-fit:contain; background:#0a0e1a;" />
  </div>
  <div class="dim" style="position:absolute; right:0.5rem; bottom:0.15rem; font-size:0.85rem; font-style:italic; opacity:0.75;">data from GPT-2</div>
</div>
</div>

<div v-click="9" class="auto-arrow mt-1"><svg class="arr" viewBox="0 0 44 24" aria-hidden="true"><path d="M2 12h36M30 4l10 8-10 8" fill="none" stroke="currentColor" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round"/></svg>AUTOCOMPLETE</div>

<div v-click="10" class="text-base mt-3" style="color:#e3b04b;">LLM <span style="font-weight:600;">=</span> Large Language Model <svg viewBox="0 0 44 24" aria-hidden="true" style="display:inline-block; width:1.5rem; height:auto; vertical-align:middle; margin:0 0.15rem 0.15rem;"><path d="M2 12h36M30 4l10 8-10 8" fill="none" stroke="currentColor" stroke-width="3.5" stroke-linecap="round" stroke-linejoin="round"/></svg> <b>Autocomplete on steroids</b></div>



<img :src="'/art/tovenaar-08-wijzend-omhoog.svg'" class="mage" style="top:3.4rem; right:0.6rem; bottom:auto; height:7.5rem;" />

<!--
[click — the Titanic sentence appears] Finish this sentence for me, all
together: "The Titanic hit an…" — [iceberg!]

[if the slide-3 wizard bubble is in: — and notice what you just did: the
wizard told you at the start that the Titanic arrived SAFELY. You knew
better. Hold on to that instinct today.]

[click] And here is a real language model playing the same game. [If someone
asks which one: GPT-2 — small, open and older, chosen because I can show you
its insides.] This is its real output: not one word, but a LIST of candidate
next words, each with a probability. Iceberg — seventy-nine percent.
[click — iceberg fills in, light blue]

[click] Next one: "The Queen Mary 2 sails from Southampton to New…" —
[York!] — very good, you clearly read the brochure. [click] And the model
agrees: seventy percent York. Keep this list in mind — it comes back at the
end of this section, and by then you'll know exactly where it comes from.
[click — York fills in]

[click] Last one, and this one is different: "My favourite city in the
world is…" — [let them shout: London! Barcelona! Tokyo!] Hear that?
Everyone said something different. There is no single right answer.

[click] Now look at the model — same thing. No confident winner this time:
London, Tokyo, New York, Paris, Barcelona, all clustered around four or
five percent. When the answer is a matter of taste, the model doesn't pick
one — it spreads its bet across many options. No single winner — take your
pick. Hold on to that: this spread, this not-being-sure, is exactly where
variety and creativity come from. We'll come back to it.

[click] Congratulations. You just did — literally — what an LLM does: you
predicted the next word from the previous words. That's the entire job
description. So what's behind the curtain is… autocomplete. A very, very
good autocomplete.

[click] That's even what the name says: LLM — Large Language Model. Fancy
words for: autocomplete on steroids. Keep the Queen Mary sentence in mind;
it's going to follow us through this whole section.
-->

---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# LLMs are pattern generators

<hr class="rule" />

<div class="grid grid-cols-[2fr_3fr] gap-8 items-stretch" style="margin-top:-0.75rem;">
<div class="pat-block self-start">
  <img :src="'/photos/fence.jpg'" class="photo mx-auto" style="max-height:17.4rem; object-fit:contain; background:#f5f5f0; border-radius:0.4rem;" />
  <div class="dim text-center" style="font-size:0.7rem; font-style:italic; opacity:0.75; margin-top:0.15rem;">cartoon: unknown artist, shared online</div>
  <div v-click="2" class="mt-1 text-center text-lg"><b class="pat-dim">1 dimension</b></div>
</div>
<div class="flex flex-col gap-3">
<div v-click="1" class="pat-block">
<svg viewBox="0 0 720 150" class="w-full">
  <g fill="#e3b04b">
    <circle cx="70" cy="128" r="6.5"/><circle cx="170" cy="112" r="6.5"/><circle cx="270" cy="97" r="6.5"/>
    <circle cx="370" cy="80" r="6.5"/><circle cx="470" cy="64" r="6.5"/><circle cx="570" cy="49" r="6.5"/>
  </g>
  <path d="M30,140 L672,36" stroke="#f2ecdf" stroke-width="3" stroke-dasharray="8 8" opacity="0.7"/>
  <circle cx="672" cy="36" r="9" fill="none" stroke="#e3b04b" stroke-width="3"/>
</svg>
<div class="mt-1 text-lg">Mathematics: regression</div>
<div v-click="2" class="mt-1 text-lg"><b class="pat-dim">2 dimensions</b></div>
</div>
<div v-click="3" class="pat-block mt-auto text-base leading-snug" style="border:2px solid #e3b04b;">
<div class="text-lg"><b>LLMs</b>: <b>1000s of dimensions</b></div>
<div class="mt-1">GPT-2: <span class="pat-dim">768 dimensions</span></div>
<div>GPT-3: <span class="pat-dim">12,288 dimensions</span></div>
<div style="font-style:italic;">and growing</div>
</div>
</div>
</div>



<img :src="'/art/tovenaar-12-zwevend.svg'" class="mage" style="top:3.5rem; right:0.6rem; bottom:auto; height:7.5rem;" />

<!--
Start with the comic. Dad paints a few planks, each one a bit less than the
last… and the robot faithfully continues the PATTERN — not the intention.
Keep him in mind: he'll explain a lot when we get to hallucination.

[click — the graph] You've all seen this picture in school: some data points,
a line through them, and the line predicts the next point. Find the pattern,
extend the pattern. Mathematics has a name for it: regression.

An econometrician — hi — would say: that's all an LLM is. A regression.
Just… in absurdly many dimensions. That's not a joke, that's technically
accurate — and it's the whole reason I can stand here and tell you: it's
"just" statistics. Remember that word — "just". I'll come back for it.

[click — dimensions] The fence pattern lives in one dimension: how much
paint per plank. The school graph lives in two.

[click — LLM] An LLM plays exactly this game in THOUSANDS of dimensions.
GPT-2 — the model we'll open up in a minute — describes every word as a
point in 768 dimensions. GPT-3 already used 12,288. Same trick as the line
through the dots; a space you just can't picture anymore.

[Armor: "dimensions" here = the embedding width, how many numbers describe
one token (GPT-2: 768, GPT-3: 12,288 — both from the papers; frontier
models are bigger still, e.g. Llama 3 405B: 16,384). Not the parameter
count — that's the file-of-numbers slide's 124M.]

[Armor, only if a sharp attendee pushes: strictly, picking the next word
from a vocabulary is CLASSIFICATION — closer to logistic than linear
regression. Fair point, same family: fit parameters to data, predict.]
-->

---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# Parameters: the model's dials

<hr class="rule" />

<div v-click="1" class="mt-1">
  <div class="text-2xl leading-snug">A <b class="accent">parameter</b> = one dial on the machine</div>
  <div class="mt-1 text-lg" style="color:var(--ink-dim);">Turn it, and the answer changes a tiny bit</div>
</div>

<div class="grid grid-cols-[auto_1fr] gap-10 items-center" style="margin-top:0.6rem;">

<div v-click="1">
  <svg viewBox="0 0 380 110" style="width:15rem; margin-left:1rem;">
    <g stroke-linecap="round">
      <g transform="translate(60,58)">
        <circle r="40" fill="none" stroke="#f2ecdf" stroke-width="2.5"/>
        <g stroke="#9a917f" stroke-width="2">
          <line x1="-29.4" y1="-17" x2="-34.6" y2="-20"/><line x1="-17" y1="-29.4" x2="-20" y2="-34.6"/>
          <line x1="0" y1="-34" x2="0" y2="-40"/><line x1="17" y1="-29.4" x2="20" y2="-34.6"/>
          <line x1="29.4" y1="-17" x2="34.6" y2="-20"/>
        </g>
        <line x1="0" y1="0" x2="-19" y2="-21" stroke="#e3b04b" stroke-width="4.5"/>
        <circle r="4.5" fill="#e3b04b"/>
      </g>
      <g transform="translate(190,58)">
        <circle r="40" fill="none" stroke="#f2ecdf" stroke-width="2.5"/>
        <g stroke="#9a917f" stroke-width="2">
          <line x1="-29.4" y1="-17" x2="-34.6" y2="-20"/><line x1="-17" y1="-29.4" x2="-20" y2="-34.6"/>
          <line x1="0" y1="-34" x2="0" y2="-40"/><line x1="17" y1="-29.4" x2="20" y2="-34.6"/>
          <line x1="29.4" y1="-17" x2="34.6" y2="-20"/>
        </g>
        <line x1="0" y1="0" x2="3" y2="-28" stroke="#e3b04b" stroke-width="4.5"/>
        <circle r="4.5" fill="#e3b04b"/>
      </g>
      <g transform="translate(320,58)">
        <circle r="40" fill="none" stroke="#f2ecdf" stroke-width="2.5"/>
        <g stroke="#9a917f" stroke-width="2">
          <line x1="-29.4" y1="-17" x2="-34.6" y2="-20"/><line x1="-17" y1="-29.4" x2="-20" y2="-34.6"/>
          <line x1="0" y1="-34" x2="0" y2="-40"/><line x1="17" y1="-29.4" x2="20" y2="-34.6"/>
          <line x1="29.4" y1="-17" x2="34.6" y2="-20"/>
        </g>
        <line x1="0" y1="0" x2="21" y2="-19" stroke="#e3b04b" stroke-width="4.5"/>
        <circle r="4.5" fill="#e3b04b"/>
      </g>
    </g>
  </svg>
</div>

<div>
  <div v-click="2" class="text-xl leading-snug" style="white-space:nowrap;">All the dials <b class="accent">together</b> decide the next word</div>
  <div v-click="3" class="mt-2">
    <div class="text-xl" style="white-space:nowrap;"><b class="accent">GPT-3</b>: 175,000,000,000 dials</div>
    <div class="mt-1 text-base" style="color:var(--ink-dim);">Newer models have even more · the exact numbers are secret</div>
  </div>
</div>

</div>

<div v-click="4" class="text-xl mt-3"><span class="accent">▸</span> More dials: <b>more complex patterns</b> it can capture</div>

<div v-click="5" class="text-xl mt-2"><span class="accent">▸</span> More dials: <b>slower</b> and <b>more expensive</b> calculations</div>

<img :src="'/art/tovenaar-02-jonglerend.svg'" class="mage" style="top:5rem; right:2.2rem; bottom:auto; height:6rem;" />

<!--
New word, and it's the most famous jargon word in AI: parameters.

[click] Think of the temperature dial in your shower: you turn it until
the water is just right. A parameter is one dial like that, on the model.
Turn one dial, and the answer changes a tiny little bit — maybe "iceberg"
gets slightly more likely, "London" slightly less.

[click] And it's never about one dial: ALL the dials together decide which
word comes out next.

[click] How many? GPT-3, the model ChatGPT grew out of, has 175 BILLION
dials. If you turned one dial per second, day and night, you'd be busy for
five and a half thousand years. Today's models have even more; the makers
keep the exact numbers secret.

[click] Why keep adding dials? More dials means the model can capture more
complex patterns. [click] But there's a catch: every answer takes more
calculating, so a bigger model is slower and more expensive. That
trade-off returns in part three, on the engines slide.

So this week, when you hear "a bigger model" or "so-many billion
parameters": it just means more dials. Where do all those dials get their
settings? That's coming in a minute — that's what training is.

[Armor — "who turns the dials?": nobody by hand. Training turns them,
automatically, billions of times. That's the trial-and-error slide coming
up.]
-->

---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# Training: trial and error

<hr class="rule" />

<div class="grid grid-cols-2 gap-10 mt-3">

<div v-click="1">
  <div class="tp-head">Training</div>
  <div class="tp-sub">The model teaches itself</div>
  <div class="tp-item">Start with <b>random parameters</b></div>
  <div class="tp-item tp-n" data-n="1."><b>Calculate</b> the next word</div>
  <div class="tp-item tp-n" data-n="2.">Learn from its mistakes by <b>adjusting the parameters</b></div>
  <div class="tp-item tp-n" data-n="3."><b>Repeat, billions of times</b></div>
  <div class="mt-3" style="font-size:1.45rem;"><span style="color:var(--talk-accent); font-size:1.9rem; vertical-align:-0.18rem; margin-right:0.3rem;">&#9656;</span><b style="letter-spacing:0.03em;">MACHINE LEARNING</b></div>
</div>

<div v-click="2">
  <div class="tp-head">Post-training</div>
  <div class="tp-sub">Done by humans</div>
  <div class="tp-item tp-n" data-n="1."><b>Show it</b> what a good answer looks like</div>
  <div class="tp-item tp-n" data-n="2.">Let it <b>practice</b></div>
  <div class="tp-item tp-n" data-n="3."><b>Grade</b> its answers</div>
  <div v-click="3" class="pt-quote mt-6">"AI is not neutral:<br>it's built, tuned and controlled."</div>
</div>

</div>

<!--
So who turns those billions of dials to the right positions? Nobody does.
The machine turns them ITSELF. That's training — and it works like a game.

[click — Training] The game is "guess the next word". Take any sentence
from the internet, hide the last word, let the model guess. At the start
all the dials are random, so it just babbles. But here's the trick: the
internet already CONTAINS the right answer to every guess — reveal the
hidden word, and the model knows how wrong it was. Wrong guess? Every dial
gets turned a tiny bit, so next time the guess is a little less wrong.
It's like the children's game "warmer… colder": you never need to be told
where the treasure is — you only need to hear, every step, whether you're
getting warmer. Repeat billions of times, and the babbling becomes
language. Nobody programs the knowledge in; the machine tunes its own
dials, from data. THAT is machine learning. And note: it keeps the
patterns, not the pages — you can't pull the original books back out.
[If asked: the "warmer/colder" voice is the error score — one number
saying how wrong the guess was; every nudge shrinks it. Doing this at
scale is what the GPUs and data centers are for.]

[click — Post-training] After all that, the model can TALK — but it hasn't
been raised yet. It's a brilliant text completer, not an assistant: ask it
a question and it may just continue with three more questions. That's
completing text! So people step in — post-training is the upbringing, done
by humans. Show it what a good answer looks like. Let it practice. And
then grade its answers — literally report grades, from human reviewers:
helpful, honest, harmless — including learning when to refuse. Same dial-
turning, but now steered by human judgment instead of the internet. That
loop has a name, RLHF — jargon, no need to remember it.

[click] But realize what that means: AI is not neutral. It's built, tuned
and controlled — by people, at companies, with choices. Remember that next
time someone says "the AI said so."
-->

---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# A gigantic file of numbers

<hr class="rule" />

<div class="grid grid-cols-[1.05fr_1fr] gap-12 mt-5 items-start">

<div>
  <div v-click="1">
    <div class="text-xl leading-snug" style="white-space:nowrap;"><b>After training: the model is <span class="accent">frozen</span></b></div>
    <div class="mt-1 text-base" style="color:var(--ink-dim);">All the dials are saved — into one file</div>
  </div>

  <div v-click="3" class="mt-7">
    <div>
      <div class="text-xl"><b class="accent">Open source</b></div>
      <div class="mt-0.5 text-base leading-snug">Download the file, run it on your own computer</div>
    </div>
    <div class="mt-4">
      <div class="text-xl"><b class="accent">Closed</b></div>
      <div class="mt-0.5 text-base leading-snug">The file is secret — it runs on the provider's servers</div>
    </div>
  </div>
</div>

<div v-click="2">
  <div class="fon-lab">60 of the 124,000,000 numbers inside GPT-2</div>
  <img :src="'/ai_model_file_numbers.png'" class="rounded" style="width:100%; object-fit:contain;" />
  <div class="fon-cap">A frontier model holds ~10,000× more of these</div>
  <div class="credit" style="text-align:center; margin-top:0.4rem;">Source: real weights from the GPT-2 model file (OpenAI, 2019)</div>
</div>

</div>

<img :src="'/art/tovenaar-09-applaudisserend.svg'" class="mage" style="top:2.2rem; right:0.8rem; bottom:auto; height:6rem;" />

<!--
And when all that training is done — my favorite moment — [click] the model
is FROZEN. The parameters are saved, and that's it. A model is just a
gigantic file of numbers. How gigantic: GPT-2 has 124 million (that's 10 to
the 8th), today's frontier models sit around a trillion (10 to the 12th).

[click] This is not an artist impression: these are real weights I pulled
out of a real model, GPT-2 — here are sixty of them, as they sit in the
file. [If asked what the numbers are: a slice of the connection weights
inside the network (attention, layer 5).]

One file. No database inside, no internet inside, no little person
inside — it's all pressed into the numbers. [click] When people say a model
is "open source", this is what they mean: you can download the file and run
it on your own machine. Closed models: the parameters are secret — the
file stays with the provider, and it runs on their servers. [If someone
pushes on "is the model just
the file?": strictly it's this file PLUS a small, generic program that runs
it — but all the knowledge is in the file.]
-->

---
clicks: 12
---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# Using the model

<hr class="rule" />

<div v-click="1" class="mt-1">
  <div class="text-2xl leading-snug">You <b class="accent">prompt</b>, it <b class="accent">replies</b>.</div>
  <div class="text-lg" style="color:var(--ink-dim);">The reply is calculated word by word</div>
</div>

<div v-click="1" class="um-line mt-2"><span class="um-lab">Prompt:</span> “Where does the QM2 sail to?”</div>

<div v-click="1" class="um-line"><span class="um-lab">Reply:</span> <span v-click="3" class="um-fill">It</span><span v-click="5" class="um-fill"> sails</span><span v-click="7" class="um-fill"> to</span><span v-click="9" class="um-fill"> New</span><span v-click="11" class="um-fill"> York</span></div>

<div class="um-stack">
  <div v-click="2" class="um-chart">
    <div class="um-title">word 1 · after the question</div>
    <div class="um-row"><span>The</span><span class="um-bar" style="width:100%"></span><span class="um-pct">18.2%</span></div>
    <div class="um-row um-win"><span>It</span><span class="um-bar" style="width:82%"></span><span class="um-pct">14.9%</span></div>
    <div class="um-row"><span>We</span><span class="um-bar" style="width:33%"></span><span class="um-pct">6.0%</span></div>
    <div class="um-row"><span>In</span><span class="um-bar" style="width:27%"></span><span class="um-pct">5.0%</span></div>
    <div v-click="3" class="um-note">the draw picked #2 · it happens</div>
  </div>
  <div v-click="4" class="um-chart">
    <div class="um-title">word 2 · “It …”</div>
    <div class="um-row"><span>'s</span><span class="um-bar" style="width:100%"></span><span class="um-pct">30.8%</span></div>
    <div class="um-row"><span>is</span><span class="um-bar" style="width:64%"></span><span class="um-pct">19.6%</span></div>
    <div class="um-row"><span>will</span><span class="um-bar" style="width:37%"></span><span class="um-pct">11.4%</span></div>
    <div class="um-row um-dots"><span>…</span><span></span><span></span></div>
    <div class="um-row um-win"><span>sails</span><span class="um-bar" style="width:6%"></span><span class="um-pct">1.7%</span></div>
  </div>
  <div v-click="6" class="um-chart">
    <div class="um-title">word 3 · “It sails …”</div>
    <div class="um-row um-win"><span>to</span><span class="um-bar" style="width:100%"></span><span class="um-pct">40.6%</span></div>
    <div class="um-row"><span>from</span><span class="um-bar" style="width:23%"></span><span class="um-pct">9.4%</span></div>
    <div class="um-row"><span>in</span><span class="um-bar" style="width:10%"></span><span class="um-pct">4.1%</span></div>
    <div class="um-row"><span>directly</span><span class="um-bar" style="width:9%"></span><span class="um-pct">3.7%</span></div>
  </div>
  <div v-click="8" class="um-chart">
    <div class="um-title">word 4 · “…sails to …”</div>
    <div class="um-row"><span>the</span><span class="um-bar" style="width:100%"></span><span class="um-pct">25.4%</span></div>
    <div class="um-row"><span>a</span><span class="um-bar" style="width:10%"></span><span class="um-pct">2.6%</span></div>
    <div class="um-row um-win"><span>New</span><span class="um-bar" style="width:4%"></span><span class="um-pct">0.9%</span></div>
    <div class="um-row"><span>our</span><span class="um-bar" style="width:3%"></span><span class="um-pct">0.7%</span></div>
  </div>
  <div v-click="10" class="um-chart">
    <div class="um-title">word 5 · “…to New …”</div>
    <div class="um-row um-win"><span>York</span><span class="um-bar" style="width:100%"></span><span class="um-pct">46.5%</span></div>
    <div class="um-row"><span>Zealand</span><span class="um-bar" style="width:44%"></span><span class="um-pct">20.4%</span></div>
    <div class="um-row"><span>Orleans</span><span class="um-bar" style="width:18%"></span><span class="um-pct">8.2%</span></div>
    <div class="um-row"><span>Jersey</span><span class="um-bar" style="width:12%"></span><span class="um-pct">5.4%</span></div>
  </div>
</div>

<div v-click="11" class="um-closer text-lg">One word at a time, each one <b class="accent">a draw</b> · run it again and the reply can differ.</div>

<div v-click="12" class="um-greedy">Always picking <b>#1</b> instead? <span class="ug-q">“The QM2 is a very small vessel, but it is very capable of…”</span> <span class="dim">· identical, every single time</span></div>

<div class="src-ref" style="left:auto; right:2.2rem; bottom:2.6rem;">data from GPT-2</div>

<img :src="'/art/tovenaar-05-zittend.svg'" class="mage" style="top:3.2rem; right:0.6rem; bottom:auto; height:7rem;" />

<!--
So what happens when you actually USE the thing — type a question, press
Enter? [click] You prompt, it replies. And the reply is calculated word by
word: for every word the model computes a list of options with percentages —
exactly the list you saw at the start of this section — and DRAWS one. Then
the chosen word is glued on, everything goes back in, and it calculates the
next list. (Jargon word, for who wants it: this is called inference.) Here's
our prompt — let's watch the reply get built, with real numbers from a real
model.

[click] Word one. The model's list of ways to start the reply: "The",
"It", "We"… [click] The draw picks "It" — second place, not first. That's
allowed: it's a DRAW, not "highest always wins".

[click] Word two — glue "It" on, everything back in, new list: "It's",
"It is", "It will"… [click] and the draw lands on an outsider: "sails".
Less likely, still possible — that's what makes replies feel alive.

[click] Word three, new list — [click] "to" wins, clear favourite this
time. [click] Word four: "the" is the favourite… [click] but the draw
picks "New". [click] And word five — you know this list by now.
[click] York. With New Zealand in second place, at twenty percent.
For a ship, quite the detour.

And THAT is why you never get exactly the same answer twice: run it again
and somewhere a different word wins the draw. How adventurous the draws
are — there's a knob for that, coming up.

[click] And what if we removed the dice — always pick number one? Real
GPT-2 output, same prompt: "The QM2 is a very small vessel, but it is very
capable of carrying a large number of passengers." Fluent, confident — and
notice it never actually answers the question. But the real point: run it
a thousand times and you get this EXACT sentence, word for word, a
thousand times. The dice are what keep replies alive. [Armor: always-#1 is
called "greedy" decoding, temperature zero; bigger models answer fine that
way, but the determinism is universal — no dice, no variety.]

Percentages, all the way down. Sound familiar? That's… statistics.

[Armor — "is this really how you asked it?": yes, real GPT-2 numbers; the
question was wrapped in a standard Q:/A: script format so the small model
answers instead of rambling. Bigger models don't need that crutch — the
post-training you'll see on the next slide teaches them to just answer.]
-->

---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# …and the results are <span class="em-spark">spectacular</span>

<hr class="rule" />

<ul class="em-list mt-6 leading-snug" style="max-width:41rem; font-size:1.45rem;">
  <li v-click><b>Abilities appear that nobody put in</b><div class="em-sub mt-1">Even the makers were surprised</div></li>
  <li v-click class="mt-7"><b class="em-word">Emergence</b>: It can do things it wasn't designed for<div class="em-ex mt-2">Coding · Passing the bar exam · Predicting protein structures</div></li>
  <li v-click class="mt-7">So maybe, it's a little <b class="accent">magic</b> after all…?</li>
</ul>

<div class="absolute" style="right:2.2rem; bottom:2rem; width:11rem;">
  <img :src="'/art/xkcd-2228.png'" class="photo w-full bg-white p-2" />
  <div class="credit mt-1 text-center" style="white-space:nowrap;">xkcd #2228 · CC BY-NC</div>
</div>

<!--
Now — here's where I have to be honest with you, because something strange
happens at this scale.

[click] We train it to do ONE thing: predict the next token. And abilities
appear that nobody put in. It translates. It reasons through problems. It
writes working code. Nobody designed those features — they emerged from the
statistics, at scale. Even the makers were surprised.

[click] The field calls it emergence: it can do things it wasn't designed
for. It codes. My favourite example: GPT-4 passed the bar exam — the American
law exam. Nobody taught it law, there is no law module in there. It got very
good at predicting the next token, and somewhere along the way, passing the
bar exam… emerged. And the same family of ideas, pointed at the language of
proteins instead of English, now predicts protein structures — that one won
the Nobel Prize in Chemistry in 2024.

[Armor on proteins: the structure-prediction system is AlphaFold (DeepMind) —
a sibling AI, not a chat LLM; protein LANGUAGE models like ESM are the direct
cousins. If someone pushes: the LLM-only examples are coding and the bar exam.]

[click] Earlier I basically told you it's JUST statistics. This is where I
take the word "just" back. [magician puts his hat back on] The recipe is
statistics — what the statistics learned, is the interesting part. So maybe
it's a little magic after all.

[the captcha comic, on screen the whole time] Even the captchas have noticed.
"Click all the photos of places you would run for shelter during a robot
uprising." We laugh… because it moved faster than anyone expected.

[Armor, if the one AI-savvy person pushes back on "emergence": fair — part of
the SUDDENNESS is a measurement artifact; all-or-nothing metrics make gradual
growth look like a jump (Stanford, Schaeffer 2023). But that the abilities
exist without being designed in — that part is not disputed.]
-->

---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# Creativity & Hallucination

<hr class="rule" />

<div class="grid grid-cols-2 gap-12 text-base leading-snug" style="margin-top:-0.6rem;">
<div>

<div v-click="1">
<div class="ch-head">Creativity</div>
<div class="ch-q">As the weights are frozen, why don't you get the same answer every time?</div>
</div>

<div v-click="2">
<img :src="'/art/top5-city-24.png'" class="rounded w-full my-1" style="height:8.5rem; object-fit:contain;" />
<div class="mt-1" style="min-height:3.4rem;">Next token is <b><u>a draw</u></b> from the <b>options</b></div>
</div>

<div v-click="3" class="mt-1"><b class="accent">Temperature</b>: determines how often a less likely token wins</div>

</div>
<div>

<div v-click="4">
<div class="ch-head">Hallucination</div>
<div class="ch-q">Where do those confident wrong answers come from?</div>
</div>

<div v-click="5">
<img :src="'/art/top5-flat.png'" class="rounded w-full my-1" style="height:8.5rem; object-fit:contain;" />
<div class="mt-1" style="min-height:3.4rem;">A next token is <b><u>always drawn</u></b>, even when there is no clear answer</div>
</div>

<div v-click="6" class="mt-1">Plausible doesn't mean true</div>

</div>
</div>



<img :src="'/art/tovenaar-13-facepalm.svg'" class="mage" style="top:5rem; right:1.6rem; bottom:auto; height:7rem;" />

<!--
[click] Here's something that should puzzle you. The model is a frozen
file — same file, same question. So you'd expect the same answer, every
single time. And you know from experience: that's not what happens. Why not?

[click] Because of the dice. The next token is a DRAW from the options —
that list of percentages the model hands over. Usually the
most likely word wins, but with a certain chance a less likely one gets
picked instead. Remember the favourite-city list: London, Tokyo, New York,
Paris, Barcelona — no single winner. The dice pick one, and each run the
sentence can take a different turn. That variety is a big part of what
feels "creative" about these things.

[click] And the knob I promised you: temperature. It determines how often a
less likely word wins. Turn it down — the top candidate almost always wins,
safe and predictable; at zero, same answer every time. Turn it up —
adventurous words get their chance. Your chat app hides that knob;
builders get to turn it.

Keep the two kinds of randomness apart: training randomness made the models
differ from EACH OTHER. The dice make the SAME model answer differently
every time. Your ChatGPT and mine are the same file — we just roll
different dice.

[click] But notice what that draw ALSO means. Where do those confident
WRONG answers come from? The list is never empty — "I don't know" is not
on it by default. Even when the model does not know, when there is no one
clear answer, out comes a fluent, confident word anyway. That is
hallucination.

[click] One real chart. I asked GPT-2: "We are sailing on the Queen Mary 2.
The ship's captain is Captain…" — look at that list. John, five percent.
James, four. Nothing above five. The model has NO idea who the captain is —
there is no clear answer in there. But a token is always drawn, so out comes
a name anyway: "Captain John", said with full confidence. Compare that with
the iceberg's seventy-nine percent earlier — THIS is what not-knowing looks
like, and the model bluffs right through it. Bluffing sounds exactly as
fluent as knowing.

[click] So: plausible doesn't mean true. Never confuse the two
again. And remember the little fence robot: it continues the pattern,
whether that was the point or not.

One more honest thing, so this doesn't feel hopeless: what you can DO about
hallucination — that's exactly where part three ends. Hold that question.

And before I hand you the microphone: one last ingredient. Everything you
just saw stands on it.
-->

---
class: dg-slide
---

<div class="kicker">Part two <span class="dim kfit">· an LLM is statistics built on our written world</span></div>

# Data is gold

<hr class="rule" />

<div class="grid grid-cols-[1fr_1.3fr] gap-6 items-center mt-1">
<div v-click="1">
  <div class="dg-label">The raw data</div>
  <div class="dg-list mt-1">
    <div>Public web</div>
    <div>Books</div>
    <div>Code</div>
  </div>
</div>
<div v-click="2" class="dg-purple">
  <b>Llama 4 read over 30 trillion (3·10¹³) tokens</b>
  <div class="mt-1" style="width:0; min-width:100%;">100,000+ years of full-time reading for a human</div>
  <div class="dg-ref">Meta 2025</div>
</div>
</div>

<div v-click="3" class="dg-label mt-4">Challenges</div>
<div class="dg-ch mt-1">
  <div v-click="3"><div class="dg-main">Polluted data <span class="dg-sub">What it reads is what it learns (biases)</span></div></div>
  <div v-click="4"><div class="dg-main">Ownership & copyright <span class="dg-sub">Written by millions of people, permission asked of none</span></div></div>
  <div v-click="5"><div class="dg-main">The well is running dry <span class="dg-sub">Most of the good text is already used</span></div></div>
</div>

<img :src="'/art/tovenaar-19-goudklomp.svg'" class="mage" />

<!--
Remember the open question from training: where did all those trillions of
words come from? This is the ingredient everything else stood on: data.

[click — the raw data] The raw material is a mountain of text — the public
web, books, code.

[click — the purple block] How much? Llama 4, one open model, read more than
thirty TRILLION tokens. If you read around the clock, no sleep, that's well
over a hundred thousand YEARS of reading. And by the way — that includes
things you wrote. All of us are in there.

But this mountain of text comes with three challenges. [click] One: polluted
data. What it read is what it learned. If wedding photos on the internet are
mostly one style, the model thinks that IS a wedding. Bias doesn't get
programmed in — it rides in with the data.

[click] Two: whose text was all this? Nobody asked us. Who owns it, who is
responsible for what comes out — that fight is in the courts right now.

[click] Three: the well is running dry. The high-quality public web has
largely been read. So newer models increasingly learn from text that AI
wrote — a copy of a copy. Whether that keeps working is an open question.

[Q&A armor: the exact data mix is a trade secret; one training run costs
$78M–$490M (Stanford AI Index 2025 / Epoch AI).]

[title payoff] So look at the section title one last time. "An LLM is
statistics built on our written world." Statistics — the list of
percentages. Built — the dials that turned themselves. On our written
world — the hundred thousand years of reading. Now every word means
something.

Section two done — and I'd be amazed if you have no questions now.
-->

---

<div class="kicker green-kicker">Your turn <span class="dim">· part two</span></div>

# <span class="green-title">Ask AI a question</span>

<Countdown :minutes="5" :run="$clicks >= 1" class="clock-lg" />
<span v-click></span>

<hr class="rule" />

<div class="qround-body">

<div class="recap-inset">
  <div class="ri-title">After each part</div>
  <div class="ri-line">Groups of two or three</div>
  <div class="ri-line"><b class="ri-em">Individually:</b> ask AI a question</div>
  <div class="ri-line"><b class="ri-em">Share</b> what stood out</div>
</div>

<div class="qmain">
  <div class="ex-title">Examples</div>
  <div class="qlist qlist-tight">
    <div class="ql">What is the difference between training an LLM and using an LLM?</div>
    <div class="ql">What is prompting?</div>
    <div class="ql">Explain "temperature" as if I am 12 years old</div>
    <div class="ql">Is it better to ask a chatbot in English or in my own language?</div>
    <div class="ql">What does "GPT" stand for?</div>
    <div class="ql">Am I training the AI when I chat with it?</div>
  </div>
</div>

</div>

<img :src="'/art/tovenaar-14-achter-laptop.svg'" class="mage mage-left" />


<!--
Round two — same game. Look at the question you wrote down — or borrow one
of mine. Ask it to any AI you have. Read the answer. Then ask ONE follow-up
on whatever surprises you — "why?", "give me an example", "explain that
simpler". Not being satisfied with the first answer is the second half of
the skill. [click — starts the five-minute clock]

I'll walk around — wave at me if you want help or want to show me something.

[during: walk the room, answer 1-on-1, collect one or two nice questions]

[after 5 min] Who got somewhere they didn't expect? [take 1–2]

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

<img :src="'/art/tovenaar-18-bouwend-hamer.svg'" class="mage" />


<!--
Claim number three. You now know what a model is. But here's the thing — you
never actually use a raw model. Nobody does. You use products built AROUND
one. Let me show you the anatomy of every AI tool you've ever opened.
-->

---
clicks: 3
---

<div class="kicker">Part three <span class="dim">· cars wrapped around the same engines</span></div>

<h1 style="font-size:2.4rem;">Models are the engines, apps are the cars</h1>

<hr class="rule" />

<div class="s3-left">
  <div v-click="1">
    <div class="s3-lead2">The app is everything around the model:</div>
    <div class="s3-list">
      <div>Chat window</div>
      <div>File access</div>
      <div>Tools & search&ensp;…</div>
    </div>
  </div>
  <div v-click="2" class="mt-4">
    <div class="s3-lead2">Specific engines, specific cars:</div>
    <div class="ec-row"><span class="ec-lab gold-t">Engines</span><span>Claude · GPT · Gemini …</span></div>
    <div class="ec-row"><span class="ec-lab purple-t">Cars</span><span>Claude app · Claude Code · Claude Cowork · ChatGPT · Cursor …</span></div>
  </div>
</div>

<div v-click="3" class="s3-start"><span class="ztri">▸</span>To start: it doesn't matter which car with which engine → they all drive!</div>

<S3Diagram :stage="2" :c="$clicks" />

<!--
Have you ever driven an engine to the supermarket? [click] Around the
engine someone builds the car: the app. The chat window, the memory that
remembers your conversation, access to your files, the tools it can use —
search, code, your calendar. Everything that makes the engine drivable.
The model is just the engine; the app is the car you actually sit in.
And note: the engine changes rarely, with a version number — the car
changes weekly. When your app "gets an update", it's usually the car, not
the engine. The app is not the model.

[click] And it's mix and match. You've met the engines: Claude, GPT,
Gemini. The cars: the Claude app and Claude Code are two very different
cars around the same Claude engine. ChatGPT is OpenAI's car around GPT.
And plenty of cars are built by one company around ANOTHER company's
engine — Cursor, Notion AI, and my favourite: Microsoft Copilot drives
OpenAI's engine. Even the biggest software company in the world didn't
build its own engine.

[Armor, if pushed on Copilot: Microsoft invests in OpenAI but doesn't
build the frontier engine; and in 2025 Microsoft started slotting
Anthropic engines into Office Copilot too — same car, swapped engine.
Which proves the whole point. Industry word for such a car: a "wrapper".]

[Armor, "can I build my own car?": yes — through the API, from a Zapier
or n8n kit car to fully hand-built code. Your car, your rules.]

[Armor, engine names/sizes/versions: Claude's engine comes in sizes —
Haiku, Sonnet, Opus, small to large (poem lengths!); GPT has nano/mini;
Gemini has Flash/Pro. A higher version number (Opus 4.7 → 4.8) = a newer
training run. What's inside — parameters, data, recipe — providers keep
secret.]

[Armor, safety/jailbreak: the rules live in two places — baked into the
engine by post-training, and added around it by the app. Talking a model
past its rules is called a "jailbreak"; it's an arms race, which is why
the rules live in more than one place.]

[click] But here's the relief: to start, none of this matters. Any car
with any engine — they all drive. Pick whatever is in front of you and
drive.
-->

---
clicks: 4
---

<div class="kicker">Part three <span class="dim">· cars wrapped around the same engines</span></div>

# Context: what flows in

<hr class="rule" />

<S3Diagram :stage="3" :c="$clicks" />

<div v-click="4" class="accent" style="position:absolute; left:3.8rem; bottom:1.3rem; font-size:1.55rem; font-weight:600; font-family:'Fraunces',serif;">The quality of your input determines the quality of your output</div>

<!--
Third layer: context. Remember: the engine is a frozen file of numbers. It
remembers NOTHING. So everything it needs has to be brought along, every
single turn. In a car, that has a name: fuel. Context is the fuel.

[click] Here's the tank, and everything YOU put in it. Your prompt. The
whole conversation so far — resent every turn, and notice: that includes
its OWN answers. The model re-reads itself every round. That's also why a
new chat is a blank slate. Your custom instructions — the settings field in
ChatGPT or Claude, and for the coders here: a CLAUDE.md or .cursorrules
file. All the same trick: a note poured into the tank every turn — that's
the entire reason those files work. Same for saved memory: notes the
app keeps for you and pours back in. Your documents — you've all heard
the buzzword RAG? Here's the entire secret: a tool that SEARCHES your
documents and pastes what it finds into the tank. That's it. That's all
RAG is. One buzzword down. And search & tool results — a web page it
fetches, anything from the internet, it all lands in exactly the same tank.

[click] But you're not the only one at the pump. The app pours in its own
hidden instructions — you never see them. The jargon word: the SYSTEM
PROMPT — text placed before yours, every turn. That's often the real
answer to "it suddenly behaves differently". (And the model provider adds
its own on top — say it, it's not in the tank drawing.) [Fun fact if it
fits: in the real bundle the order is reversed — those hidden instructions
come FIRST, your prompt comes LAST.]

[click] And every turn, the WHOLE tank flows into the engine — fresh, every
single time. Not just your last message: everything, again. [If a techie
asks: strictly, for every generated token the model attends over the entire
context again — the maths reads the whole tank per token; servers cache the
computation, but logically that's what happens.]

[click] The tank is what the jargon calls the CONTEXT WINDOW: everything
the model can see right now. And it has a MAX: fill it up and the oldest
turns fall out — that's the "it forgot what I said" feeling. More is not
better: relevance beats volume. Which is the payoff from the hallucination
story: context is your anti-hallucination lever. The river always flows —
if you don't give it your facts, it will guess. The quality of your input
determines the quality of your output. You can't change the engine and you
didn't build the car — but you're always the driver. And in this car, you
steer with what you put in the tank.

[Q&A armor — "who drives the car?": you do. Your prompt is the wheel — but
mechanically there is no separate steering channel: steering IS what goes
into the tank, for you, the app and the provider alike. That's exactly why
hidden system prompts are powerful and why prompt injection exists.]

[Q&A armor — "where do agents fit?": an agent is the self-driving mode. You
give the destination; the app lets the model act (search, click, run
code), each result lands back in the tank, and it goes again — the
inference loop, but with actions. Claude Code and Cursor work like this.]
-->

---

<div class="kicker green-kicker">Your turn <span class="dim">· part three</span></div>

# <span class="green-title">Ask AI a question</span>

<Countdown :minutes="5" :run="$clicks >= 1" class="clock-lg" />
<span v-click></span>

<hr class="rule" />

<div class="qround-body">

<div class="recap-inset">
  <div class="ri-title">After each part</div>
  <div class="ri-line">Groups of two or three</div>
  <div class="ri-line"><b class="ri-em">Individually:</b> ask AI a question</div>
  <div class="ri-line"><b class="ri-em">Share</b> what stood out</div>
</div>

<div class="qmain">
  <div class="ex-title">Examples</div>
  <div class="qlist qlist-tight">
    <div class="ql">Explain "context" as if I am 12 years old</div>
    <div class="ql">Do you have any memory about me?</div>
    <div class="ql">What is in your context window right now?</div>
    <div class="ql">Why do you forget things from earlier chats?</div>
    <div class="ql">Do Claude Cowork and Claude Code use the same model?</div>
    <div class="ql">What runs under the hood of Perplexity / Notion AI / Cursor?</div>
  </div>
</div>

</div>

<img :src="'/art/tovenaar-14-achter-laptop.svg'" class="mage mage-left" />


<!--
Last round — make it practical. Tell the AI what you actually do — your
business, your work — and ask what would genuinely help. Or borrow one of
mine from the list. And notice what you're doing while you do it: you're
giving it CONTEXT. You're already applying section three.

[walk the room]

[debrief] Anyone got an answer they're actually going to use this week?
[take 1–2] Love it.
-->

---

<div class="kicker">Closing</div>

# AI is not magic.

<hr class="rule" />

<div class="outro-grid">

<img :src="'/art/box-open-grey.svg'" class="outro-box" />

<div>

<div class="display" style="font-size:2.3rem;">Keep asking.</div>

<div class="mt-4 text-2xl accent leading-snug" style="font-family:'Fraunces',serif;">
"Treat the model as a noisy estimator,<br>not an oracle."
</div>

<div class="mt-6 text-base leading-relaxed">
Find me on board to continue the talk.<br>
<span class="dim">Contact information in the NC app.</span>
</div>

</div>

</div>

<div class="dim" style="position:absolute; bottom:1.2rem; right:8.5rem; font-size:0.82rem; letter-spacing:0.18em; text-transform:uppercase; z-index:2;">Marijke Valk · NomadCruise 17</div>

<img :src="'/art/neural-gold.png'" style="position:absolute; left:0; bottom:0; width:100%; height:7rem; object-fit:cover; object-position:50% 42%; opacity:0.5; z-index:0; -webkit-mask-image:linear-gradient(to top, black 55%, transparent 100%); mask-image:linear-gradient(to top, black 55%, transparent 100%);" />

<div class="credit" style="position:absolute; bottom:0.8rem; left:3.8rem; max-width:26rem; text-align:left; z-index:2;">
photos: Wikimedia Commons · A.R. Chaffin (PD) · C.B. Francke (PD) · Morn/CHM (CC BY 2.0) · Virtual-Pano (CC BY-SA 4.0) · F. Hirzinger (CC BY-SA 3.0) · xkcd #1838 (CC BY-NC)
</div>

<img :src="'/art/tovenaar-15-zwaaiend.svg'" class="mage" style="top:3.4rem; right:0.6rem; bottom:auto; height:7.5rem;" />

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

So: keep asking. Thank you! I'm on this ship all week — find me for questions,
deep AI talk, or just a chat. And if you want to start the day properly:
morning workouts on deck, every day. See you there!
-->
