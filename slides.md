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
    <div v-click="5" class="workshop-box">
      <b>Workshop:</b> have an AI assistant ready to prompt.
    </div>
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

<img :src="'/art/tovenaar-06-schouderophalend.svg'" class="mage" />

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

<div v-click="4" class="route-note">AI is much more than LLMs, but these are our focus for today (and the cruise).</div>

<img :src="'/art/tovenaar-08-wijzend-omhoog.svg'" class="mage mage-left" />

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

<div class="tl2">
  <div class="tl2-row" v-click="1">
    <div class="tl2-txt">
      <div class="tl2-label">dream</div>
      <div class="tl2-main"><span class="tl2-year">1600s:</span> Leibniz: <i>"calculemus"</i>, let us calculate <span class="dim">(thinking by a machine)</span></div>
      <div class="tl2-ref">Leibniz, <i>De Arte Combinatoria</i></div>
    </div>
    <img class="tl2-img" :src="'/photos/leibniz.jpg'" style="object-position:50% 15%;" />
  </div>
  <div class="tl2-row" v-click="2">
    <div class="tl2-txt">
      <div class="tl2-label">question</div>
      <div class="tl2-main"><span class="tl2-year">1950:</span> Turing: can machines think? <span class="dim">(the Turing test)</span></div>
      <div class="tl2-ref">Turing, <i>Computing Machinery &amp; Intelligence</i></div>
    </div>
    <img class="tl2-img" :src="'/photos/turing.jpg'" style="object-position:50% 20%;" />
  </div>
  <div class="tl2-row" v-click="3">
    <div class="tl2-txt">
      <div class="tl2-label">name</div>
      <div class="tl2-main"><span class="tl2-year">1956:</span> Dartmouth <i>"summer project"</i> names the field AI <span class="dim">(one summer?!)</span></div>
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
<svg viewBox="0 12 660 278" class="winters" style="height:20.4rem; width:auto; display:block; margin:0 auto;" preserveAspectRatio="xMidYMid meet">
  <defs>
    <marker id="arrHead" viewBox="0 0 12 12" refX="6" refY="6" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M1,1 L11,6 L1,11 Z" fill="#e3b04b"/></marker>
    <g id="sun"><circle r="9" fill="none" stroke="#e3b04b" stroke-width="2.4"/><g stroke="#e3b04b" stroke-width="2.4" stroke-linecap="round"><line y1="-13" y2="-16.5"/><line y1="13" y2="16.5"/><line x1="-13" x2="-16.5"/><line x1="13" x2="16.5"/><line x1="-9.2" y1="-9.2" x2="-11.7" y2="-11.7"/><line x1="9.2" y1="9.2" x2="11.7" y2="11.7"/><line x1="9.2" y1="-9.2" x2="11.7" y2="-11.7"/><line x1="-9.2" y1="9.2" x2="-11.7" y2="11.7"/></g></g>
    <g id="snow"><path d="M-13,2 a7,7 0 0,1 3,-13.6 a9,9 0 0,1 17.5,1.6 a7,7 0 0,1 0.5,12 z" fill="none" stroke="#8cbedc" stroke-width="2.2"/><g fill="#8cbedc"><circle cx="-7" cy="11.5" r="1.7"/><circle cx="0" cy="14" r="1.7"/><circle cx="7" cy="11.5" r="1.7"/></g></g>
  </defs>
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
    <text x="285" y="264" fill="#cfc9bb" font-size="12" text-anchor="middle">algorithms stalled</text>
    <text x="490" y="240" fill="#8cbedc" font-size="14" font-weight="bold" text-anchor="middle">AI Winter 1990s</text>
    <text x="490" y="264" fill="#cfc9bb" font-size="12" text-anchor="middle">too little data</text>
    <text x="490" y="280" fill="#cfc9bb" font-size="12" text-anchor="middle">weak hardware</text>
  </g>
</svg>
</div>

<div v-click="[1,2]" class="flow-cycle">money in <span class="fa">➔</span> hype <span class="fa">➔</span> disappointment <span class="fa">➔</span> freeze <span class="fa">➔</span> a breakthrough <span class="fa">➔</span> repeat …</div>

<img :src="'/art/tovenaar-06-schouderophalend.svg'" class="mage" />

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

<div class="igniters">
  <div class="ig" v-click="1"><span class="ig-n">1</span><div class="ig-txt"><b>New LLM architecture</b> <span>The Transformer, 2017</span><div class="ref">Vaswani et al., "Attention Is All You Need"</div></div></div>
  <div class="ig" v-click="2"><span class="ig-n">2</span><div class="ig-txt"><b>Better hardware</b> <span>GPUs, from gaming</span></div></div>
  <div class="ig" v-click="3"><span class="ig-n">3</span><div class="ig-txt"><b>More data</b> <span>The internet finally had enough text</span></div></div>
</div>

<div v-click="4" class="boom-note"><b>ChatGPT: ±100M users in 2 months</b><br><span class="dim">fastest-growing consumer app</span><br><span class="ref">UBS / Similarweb 2023</span></div>

<img :src="'/art/tovenaar-16-juichend.svg'" class="mage" />

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

<Countdown :minutes="5" :run="$clicks >= 1" class="clock-lg" />
<span v-click></span>

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
    <div class="ql">Why did the transformer paper matter?</div>
    <div class="ql">Why did GPUs beat CPUs for training?</div>
    <div class="ql">What is the Turing test?</div>
    <div class="ql">Are Siri and Alexa "real" AI?</div>
  </div>
</div>

</div>

<img :src="'/art/tovenaar-14-achter-laptop.svg'" class="mage mage-left" />


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

<img :src="'/art/tovenaar-11-vergrootglas.svg'" class="mage" />


<!--
Claim number two — and this is the heart of the talk: an LLM is statistics
built on our written world.

Statistics? Really? Let me prove it. You'll do the statistics yourselves —
right now.
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# You are the model

<hr class="rule" />

<div class="grid grid-cols-[1fr_1fr] gap-8 items-center">
<div class="space-y-5 text-xl" style="font-family:'Fraunces',serif;">
  <p>"The Titanic hit an <span class="ans"><span v-click.hide="2">…</span><span v-click="2" class="fill-blue">iceberg</span></span>"</p>
  <p v-click="3">"The Queen Mary 2 sails from<br>Southampton to New <span class="ans"><span v-click.hide="5">…</span><span v-click="5" class="fill-blue">York</span></span>"</p>
  <p v-click="6">"My favourite city in the world is …"<br><span v-click="8" class="fill-blue" style="font-size:0.95rem; font-style:normal;">no single winner &middot; take your pick</span></p>
</div>
<div v-click="1" class="relative">
  <img :src="'/art/top5-titanic.png'" class="rounded w-full" style="max-height:13rem; object-fit:contain;" />
  <img v-click="4" :src="'/art/top5.png'" class="rounded absolute inset-0 w-full" style="max-height:13rem; object-fit:contain; background:#0a0e1a;" />
  <img v-click="7" :src="'/art/top5-city.png'" class="rounded absolute inset-0 w-full" style="max-height:13rem; object-fit:contain; background:#0a0e1a;" />
</div>
</div>

<div v-click="9" class="auto-arrow mt-2"><span class="arr">⟶</span>AUTOCOMPLETE</div>

<div v-click="10" class="text-lg" style="color:#8fcbab;">LLM <span class="dim">=</span> Large Language Model <span class="dim">→</span> <b>autocomplete on steroids</b></div>



<img :src="'/art/tovenaar-08-wijzend-omhoog.svg'" class="mage" style="top:1.4rem; right:1.6rem; bottom:auto; height:5.5rem;" />

<div class="src-ref" style="font-size:0.95rem;">data from GPT-2</div>

<!--
Finish this sentence for me, all together: "The Titanic hit an…" — [iceberg!]

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
one — it spreads its bet across many options.

[click] No single winner — take your pick. Hold on to that: this spread,
this not-being-sure, is exactly where variety and creativity come from.
We'll come back to it.

[click] Congratulations. You just did — literally — what an LLM does: you
predicted the next word from the previous words. That's the entire job
description. So what's behind the curtain is… autocomplete. A very, very
good autocomplete.

[click] That's even what the name says: LLM — Large Language Model. Fancy
words for: autocomplete on steroids. Keep the Queen Mary sentence in mind;
it's going to follow us through this whole section.
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# LLMs are pattern generators

<hr class="rule" />

<div class="grid grid-cols-[2fr_3fr] gap-8 items-start mt-1">
<div class="pat-block">
  <img :src="'/photos/fence.jpg'" class="photo mx-auto" style="max-height:14rem; object-fit:contain; background:#f5f5f0; border-radius:0.4rem;" />
  <div v-click="2" class="mt-1 text-center text-lg"><b class="pat-dim">1 dimension</b></div>
</div>
<div class="flex flex-col gap-3">
<div v-click="1" class="pat-block self-start">
<svg viewBox="0 0 360 200" class="w-44">
  <g fill="#e3b04b">
    <circle cx="40" cy="165" r="4"/><circle cx="90" cy="142" r="4"/><circle cx="140" cy="128" r="4"/>
    <circle cx="190" cy="100" r="4"/><circle cx="240" cy="81" r="4"/><circle cx="290" cy="68" r="4"/>
  </g>
  <path d="M20,178 L330,45" stroke="#f2ecdf" stroke-width="2" stroke-dasharray="6 6" opacity="0.7"/>
  <circle cx="330" cy="45" r="6" fill="none" stroke="#e3b04b" stroke-width="2"/>
</svg>
<div class="mt-1 text-lg">Mathematics: <b>regression</b></div>
<div v-click="2" class="mt-1 text-lg"><b class="pat-dim">2 dimensions</b></div>
</div>
<div v-click="3" class="pat-block self-end text-base leading-snug" style="margin-right:8.5rem;">
<div class="text-lg">LLMs: <b class="pat-dim">1000s of dimensions</b></div>
<div class="mt-1">GPT-2: <span class="pat-dim">768 dimensions</span></div>
<div>GPT-3: <span class="pat-dim">12,288 dimensions</span></div>
<div class="dim">and climbing</div>
</div>
</div>
</div>



<img :src="'/art/tovenaar-12-zwevend.svg'" class="mage" />

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
count — that's slide 22's 124M.]

[Armor, only if a sharp attendee pushes: strictly, picking the next word
from a vocabulary is CLASSIFICATION — closer to logistic than linear
regression. Fair point, same family: fit parameters to data, predict.]
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# Text becomes tokens

<hr class="rule" />

<div class="mt-4 text-xl" style="font-family:'Fraunces',serif;">"The nomads miss the crow's nest on the Queen Mary II"</div>

<div v-click="1" class="mt-6 flex flex-wrap gap-2 items-start max-w-4xl">
  <span class="tok">The<span class="tok-id">464</span></span>
  <span class="wtok"><span class="tok">nom<span class="tok-id">4515</span></span><span class="tok">ads<span class="tok-id">5643</span></span></span>
  <span class="tok">miss<span class="tok-id">2051</span></span>
  <span class="tok">the<span class="tok-id">262</span></span>
  <span class="wtok"><span class="tok">crow<span class="tok-id">37593</span></span><span class="tok">'s<span class="tok-id">338</span></span></span>
  <span class="tok">nest<span class="tok-id">16343</span></span>
  <span class="tok">on<span class="tok-id">319</span></span>
  <span class="tok">the<span class="tok-id">262</span></span>
  <span class="tok">Queen<span class="tok-id">7542</span></span>
  <span class="tok">Mary<span class="tok-id">5335</span></span>
  <span class="tok">II<span class="tok-id">2873</span></span>
</div>

<div v-click="2" class="mt-6 accent text-lg">▸ text becomes a sequence of numbers for an LLM</div>

<div v-click="3" class="mt-6 accent text-lg">▸ every token is a new computation</div>

<div v-click="4" class="mt-2 accent text-lg">▸ that's why you pay per token</div>



<img :src="'/art/tovenaar-06-denkend.svg'" class="mage" />

<div class="src-ref">data from GPT-2</div>

<!--
Before any statistics can happen, there's one translation step. A model
doesn't read letters — and it doesn't quite read words either. A small
algorithm chops the text into TOKENS: mostly whole words, sometimes pieces.

[click] Here's our sentence, tokenized by a real model — GPT-2, and these are
its real token numbers. First surprise: "nomads" — our own word — doesn't even
survive as one piece. It becomes nom + ads. And "crow's" splits too: crow plus
'apostrophe-s'. So a token isn't a word — it's a chunk, sometimes a whole word,
sometimes a fragment. Now look at "the": it appears twice, and both times it's
the exact same number, 262 — same chunk, same id. But the capital "The" at the
start? That's 464, a different number. Even a capital letter changes the token.
And the II in Queen Mary II is just a token too — 2873. That's all a token is:
a fixed id for a chunk of text.

[click] And this is the point of the slide: from here on, the model never
sees text at all. Text becomes a sequence of numbers — that's all an LLM
ever works with.

[click] And here's the practical consequence: every one of those tokens is
a new computation the model has to do — and computation costs money.

[click] That's why you pay per token, and why a longer prompt or a longer
answer literally costs more. Which raises the obvious question — what does
the model DO with those numbers?
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

<h1 style="font-size:2.5rem;">Weights: the connections between tokens</h1>

<hr class="rule" />

<div class="grid grid-cols-[3fr_2fr] gap-10 items-center">
<div>
<div class="mt-0 text-xl leading-snug" style="font-family:'Fraunces',serif; color:var(--ink-dim);">
it has learned which tokens tend to go together
</div>

<div v-click class="mt-2 text-xl">
those connections are just numbers: <b class="accent">weights</b>
</div>

<div v-click class="mt-2 text-xl">
everything it learned is baked into those weights
</div>

<div v-click class="mt-2 text-xl">
their official name: <b class="accent">parameters</b> <span class="dim">· <span style="white-space:nowrap;">"175 billion parameters"</span> = these</span>
</div>

<div v-click class="mt-2 text-xl" style="white-space:nowrap;">
it has a name: <b class="accent">a neural network</b><svg viewBox="0 0 24 24" width="32" height="32" fill="none" stroke="#e3b04b" stroke-width="1.9" stroke-linecap="round" stroke-linejoin="round" style="display:inline-block;vertical-align:-0.55rem;margin-left:0.55rem;">
  <path d="M12 5a3 3 0 1 0-5.997.125 4 4 0 0 0-2.526 5.77 4 4 0 0 0 .556 6.588A4 4 0 1 0 12 18Z"/>
  <path d="M12 5a3 3 0 1 1 5.997.125 4 4 0 0 1 2.526 5.77 4 4 0 0 1-.556 6.588A4 4 0 1 1 12 18Z"/>
  <path d="M15 13a4.5 4.5 0 0 1-3-4 4.5 4.5 0 0 1-3 4"/>
  <path d="M17.599 6.5a3 3 0 0 0 .399-1.375"/>
  <path d="M6.003 5.125A3 3 0 0 0 6.401 6.5"/>
  <path d="M3.477 10.896a4 4 0 0 1 .585-.396"/>
  <path d="M19.938 10.5a4 4 0 0 1 .585.396"/>
  <path d="M6 18a4 4 0 0 1-1.967-.516"/>
  <path d="M19.967 17.484A4 4 0 0 1 18 18"/>
</svg>
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

<img :src="'/art/tovenaar-10-konijn-uit-hoed.svg'" class="mage" />

<!--
So what does the model DO with those numbers? This: from all that reading,
it has learned which tokens tend to go together. The connections between
tokens.

You know how an old couple finish each other's sentences? That's not
telepathy. It's years of hearing each other, until one word just pulls the
next along. The model is the same: it read so much text that it learned
which token tends to follow which. "New" pulls "York". (anecdote — say it,
it's not on the slide)

[click] And here's the part I want you to keep: every connection has a
STRENGTH. "New" pulls "York" hard — it barely pulls "banana" at all. And a
strength is just… a number. Those numbers are the WEIGHTS. Weights as in:
how heavily one token weighs in when the model picks the next one.

[click] And this is the wild part: everything the model learned from all that
reading is baked into those weights. Nothing else is kept — not the sentences,
not the pages it read. The model IS its weights.

[click] These numbers have an official name — you've seen it in every AI
headline: PARAMETERS. When a company brags "175 billion parameters", THIS is
what they're counting: 175 billion of these connection strengths. (Strictly:
the weights plus a few helper numbers, together, are the parameters. If
anyone asks: the helpers are called biases.) So next time you read that
headline, you know it just means: a very big web of these.

[click] Now zoom out and picture the whole web: all the tokens, and a
weighted connection wherever one pulls on another. That web of weighted
connections has a name you've heard before: a neural network. That's it.
That's the whole mystery behind the scary word. Not a brain, not magic — just
weights.

[bridge to next slide] One thing to hold onto: every parameter is a little
dial you could turn — turn them and the model changes. So here's the obvious
question: who sets BILLIONS of dials to the right values? Nobody you'd
expect. That's the next slide.
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# Training = trial and error

<hr class="rule" />

<div class="loop-flow">
  <div class="lf-step">start with<br><b>random weights</b></div>
  <span class="lf-arr" v-click="1">⟶</span>
  <div class="lf-loop" v-click="1">
    <div class="lf-step">feed it a piece of<br><b>real text</b></div>
    <span class="lf-arr">⟶</span>
    <div class="lf-step">guess the<br>next word</div>
    <span class="lf-arr">⟶</span>
    <div class="lf-step">compare with the real word<br><b class="accent">error score</b></div>
    <span class="lf-arr">⟶</span>
    <div class="lf-step">nudge<br><b>every dial</b></div>
    <div class="lf-return"><span class="lf-return-label">repeat · billions of times</span></div>
  </div>
</div>

<div class="train-ex">
  <div class="tx-sent" v-click="2">one line from the data: <i>"We sail the transatlantic <b class="accent">ocean</b>"</i></div>
  <div class="tr-wrap">
  <div>
  <div class="tr-cols">
    <div class="tr-col" v-click="3">
      <div class="tr-round">round 1</div>
      <div class="tr-item"><span>apple</span><span>0.003%</span></div>
      <div class="tr-item"><span>the</span><span>0.003%</span></div>
      <div class="tr-item tr-goal"><span>ocean</span><span>0.002%</span></div>
      <div class="tr-item"><span>yellow</span><span>0.002%</span></div>
      <div class="tr-dots">⋮ &ensp;all 50,000 words</div>
      <div class="tr-err"><span class="tx-bar" style="width:6.5rem"></span>error <b class="accent">10.8</b></div>
    </div>
    <div class="tr-col" v-click="4">
      <div class="tr-round">round ~1 million</div>
      <div class="tr-item"><span>sea</span><span>11%</span></div>
      <div class="tr-item tr-goal"><span>ocean</span><span>8%</span></div>
      <div class="tr-item"><span>boat</span><span>6%</span></div>
      <div class="tr-item"><span>the</span><span>4%</span></div>
      <div class="tr-dots">⋮</div>
      <div class="tr-err"><span class="tx-bar" style="width:1.8rem"></span>error <b class="accent">2.5</b></div>
    </div>
    <div class="tr-col" v-click="5">
      <div class="tr-round">round ~1 billion</div>
      <div class="tr-item tr-goal"><span>ocean <span class="accent">✓</span></span><span>61%</span></div>
      <div class="tr-item"><span>sea</span><span>14%</span></div>
      <div class="tr-item"><span>waters</span><span>8%</span></div>
      <div class="tr-item"><span>Atlantic</span><span>3%</span></div>
      <div class="tr-dots">⋮</div>
      <div class="tr-err"><span class="tx-bar" style="width:0.45rem"></span>error <b class="accent">0.5</b></div>
    </div>
  </div>
  <div class="tr-note dim" v-click="5">numbers are indicative</div>
  </div>
  <div class="tr-side">
    <div v-click="6" style="font-size:1.3rem;"><span class="accent">▸</span> <b class="accent">machine learning</b></div>
    <div v-click="7" class="dim mt-1">patterns are saved,<br>not original data</div>
  </div>
  </div>
</div>

<img :src="'/art/tovenaar-18-bouwend-hamer.svg'" class="mage" />

<!--
So how do all those weights get their values? Nobody types them in — they
are LEARNED. That's training. And this surprises people: the numbers start
RANDOM. Pure noise. [click] Then the loop begins: the model predicts the
next word of a real sentence — real text we feed it — compares its guess
with the real next word, and gets an ERROR SCORE — one number that says how wrong it was. [The math term,
if anyone asks: the cost function.] And every number gets a tiny nudge in
the direction that shrinks that score. Then again. And again — billions of
times.

[Stress "in the RIGHT direction": trial and error, but GUIDED, not blind —
the error score tells it which way to turn each dial. That's why it
converges instead of wandering forever.]

[Visual: "We sail the transatlantic ___" (right word: ocean). Three
snapshots of the model's output list. Key point to SAY: the model doesn't
answer with one word — it gives EVERY word in its vocabulary a percentage,
and the error score is simply "how much did it give the RIGHT word?".
Round 1, random weights: every word ~0.002%, "apple" only happens to sit on
top — that's what random looks like. Round ~1M: plausible words are rising,
ocean is climbing. Round ~1B: ocean on top at 61% — and never 100%, because
"sea" would have been fine too. Each column is not one dial-turn but
millions of tiny nudges later. And this runs for many sentences at once —
the errors are averaged, one nudge per batch. That's what the GPUs are for.]

[Numbers are indicative — except 10.8, which is the exact error of a blind
guess over 50,000 words (ln 50,000). If anyone asks: that's cross-entropy.]

Picture a machine with billions of tiny dials. Training is the machine turning
its OWN dials, a tiny nudge per example. "Who turns billions of
dials?!" — nobody! That's the point. Nobody programs the numbers in. The
machine adjusts them itself, from data. THAT is why it's called machine
learning. No mysticism required.

Important: it kept the patterns, not the pages. You can't pull the original
books back out of the file — though rare memorized snippets exist, which is
exactly what those lawsuits are about. And because it starts random, every
training run ends up slightly different — no two models are ever the same.

Doing billions of nudges on trillions of words is only possible in parallel.
That's the GPUs. That's the data centers. That's why ASML machines matter.
And those trillions of words themselves — where they came from is a story
of its own. I'm saving it for the end of this section.
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# Meaning becomes geometry

<img :src="'/art/embedding-map.png'" class="h-96 mx-auto mt-2 rounded" />

<div class="credit" style="position:absolute; left:2rem; bottom:1.6rem;">data: real GPT-2 embeddings</div>

<img :src="'/art/tovenaar-12-zwevend.svg'" class="mage" />

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

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# Post-training: the finishing school

<hr class="rule" />

<div class="rows text-lg max-w-3xl">
  <div>the raw model is a <b>text-completer</b> · it continues text, it doesn't answer you</div>
  <div v-click>
    <b class="accent">1 · show it</b><br>
    <span class="dim text-base">thousands of examples of what a good answer looks like</span>
  </div>
  <div v-click>
    <b class="accent">2 · practice</b> <span class="accent text-2xl" style="vertical-align:middle;">⟳</span> <b class="accent">3 · grade it</b> <span class="dim text-base">· round and round — this loop is RLHF</span><br>
    <span class="dim text-base">it writes answers itself · humans judge them — helpful? honest? harmless? — and the dials get nudged again</span>
  </div>
</div>

<div v-click class="mt-4 text-xl accent" style="font-family:'Fraunces',serif;">"AI is not neutral · it's built, tuned and controlled."</div>



<img :src="'/art/tovenaar-18-bouwend-hamer.svg'" class="mage" />

<!--
Then one more stage — the part people skip. After all that reading, the raw model is a
brilliant text-completer, but not an assistant. Ask it a question and it
might just… continue with three more questions. That's completing text!

So it gets a finishing school, and it works like teaching a person anything.
[click] First you SHOW it: thousands of examples of good, helpful answers —
here's a question, here's what a great answer looks like. [click] Then a loop:
it PRACTICES — writes answers itself — and humans GRADE them: helpful, honest,
harmless — that last one includes learning when to refuse. The dials get
nudged, and round it goes again, thousands of times. The jargon for that
practice-and-grade loop is RLHF, you don't need to remember it. The rest of
the rules — the filters and safety nets — don't live in the model at all,
but in the products built around it. That's part three.

[click] But realize what that means: AI is not neutral. It's built, tuned and
controlled — by people, at companies, with choices. Remember that next time
someone says "the AI said so."
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# A model is literally a file of numbers

<div class="grid grid-cols-2 gap-6 mt-2 items-center">
  <img :src="'/ai_model_file_numbers.png'" class="rounded" style="max-height:11rem; object-fit:contain;" />
  <img :src="'/ai_model_file_heatmap.png'" class="rounded" style="max-height:11rem; object-fit:contain;" />
</div>

<div class="mt-3 text-center text-lg" style="max-width:42rem; margin-left:auto; margin-right:auto;">training happens <b>once</b> · what remains is <b>ONE file</b> · no database, no internet inside</div>

<div class="mt-3 text-center" style="max-width:47rem; margin-left:auto; margin-right:auto; line-height:1.5;">
  <div class="text-lg"><span class="accent" style="font-weight:600;">Open source:</span> free to download these files and run on your own computer</div>
  <div class="text-lg" style="margin-top:0.2rem;"><span style="font-weight:600; color:var(--ink-dim);">Closed:</span> inference runs on their servers</div>
</div>



<img :src="'/art/tovenaar-09-applaudisserend.svg'" class="mage" />

<!--
And when all that training is done — my favorite moment — the weights are
SAVED. A model is literally a file of numbers. This is not an artist
impression: these are real weights I pulled out of a real model, GPT-2. On
the left: sixty of them, as they sit in the file. On the right: two slices
of the same file as an image — every pixel is one learned number.

[click] Training happens once, in a data center, for months. And what
remains… is ONE file. This one. No database inside, no internet inside, no
little person inside — it's all pressed into the numbers. When people say a
model is "open source", this is what they mean: you can download the file
and run it on your own machine. [If someone pushes on "is the model just
the file?": strictly it's this file PLUS a small, generic program that runs
it — but all the knowledge is in the file.]
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# Inference: the model at work

<hr class="rule" />

<div class="mt-2 text-lg dim">using the finished model: you <b>prompt</b>, it <b>replies</b>.</div>

<div class="loop-flow mt-5">
  <div class="lf-step">your <b>prompt</b><br><span class="dim">"Where does the QM2 sail to?"</span></div>
  <span class="lf-arr">⟶</span>
  <div class="lf-loop">
    <div class="lf-step"><b>the model</b><br><span class="dim">the file of numbers</span></div>
    <span class="lf-arr">⟶</span>
    <div class="lf-step">one<br><b>word</b></div>
    <div class="lf-return"><span class="lf-return-label">glue it on · feed it all back</span></div>
  </div>
</div>

<div class="inf-reply">
  <span class="inf-label">reply</span>
  <span class="inf-word" v-click="1">It</span>
  <span class="inf-word" v-click="2">sails</span>
  <span class="inf-word" v-click="3">to</span>
  <span class="inf-word" v-click="4">New</span>
  <span class="inf-word" v-click="5">York</span>
</div>

<div v-click="5" class="dim mt-2" style="font-size:0.95rem;">one word at a time · the model never writes the whole sentence at once</div>

<div v-click="6" class="mt-3 accent text-lg">the reply you see = <b>draw, after draw, after draw</b> <span class="dim">· no two runs alike</span></div>



<img :src="'/art/tovenaar-05-zittend.svg'" class="mage" />

<!--
So what happens when you actually USE the thing — when you type a question
and press Enter? The jargon word is inference. And it's just the finished
model at work: you prompt, it replies. You already know everything it needs.

Here's the whole machine. Your prompt goes IN — it's simply the start of the
text. The model computes exactly the kind of list we started this section
with, and out comes ONE word. Just one.

[click] "It". The model doesn't write a sentence — it produces a single word.

Then — and this is the whole trick — that word gets glued onto the text, and
the WHOLE thing goes back into the model. Prompt plus "It". Round again.
[click] "sails". Glue it on, feed it all back. [click] "to". [click] "New".
Remember the seventy percent York from the start of this section? THIS is
where that list comes from. [click] "York".

So the reply builds up one word at a time. The model never writes the whole
sentence at once — it only ever answers the question "what's the next word?",
over and over, feeding its own output back in. List, draw, glue, repeat.

[click] And because each word is a DRAW from a list, the reply you see is a
draw, after a draw, after a draw. Run the same question twice, and somewhere
a different word wins — that's why you never get exactly the same answer
twice. How adventurous those draws are — there's a knob for that, coming up.

Percentages, all the way down. Sound familiar? That's… statistics.
-->

---
layout: center
---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

<div class="display" style="font-size:2.9rem;">…and the results are <span class="accent">spectacular</span></div>

<div class="mt-8 leading-snug" style="max-width:40rem; font-size:1.05rem;">
  <div class="flex gap-3"><span class="accent">▸</span><div>train it only to predict the next word, and abilities appear that <b>nobody put in</b><div class="dim text-base mt-1">even the makers were surprised</div></div></div>
  <div v-click class="flex gap-3 mt-5"><span class="accent">▸</span><div><b class="accent">emergence</b>: it can do things it wasn't designed for<div class="dim text-base mt-1">it passes the bar exam. nobody taught it law</div></div></div>
  <div v-click class="flex gap-3 mt-5"><span class="accent">▸</span><div>maybe it's a little <b>magic</b> after all?</div></div>
</div>

<div v-click class="absolute" style="right:2.2rem; bottom:2.2rem; width:8.5rem;">
  <img :src="'/art/xkcd-2228.png'" class="photo w-full bg-white p-2" />
  <div class="credit mt-1 text-center">xkcd #2228 · CC BY-NC</div>
</div>

<img :src="'/art/tovenaar-16-juichend.svg'" class="mage" style="right:13.5rem;" />

<!--
Now — here's where I have to be honest with you, because something strange
happens at this scale.

We train it to do ONE thing: predict the next word. And abilities appear that
nobody put in. It translates. It reasons through problems. It writes working
code. Nobody designed those features — they emerged from the statistics, at
scale. Even the makers were surprised.

[click] The field calls it emergence: it can do things it wasn't designed
for. My favourite example: GPT-4 passed the bar exam — the American law exam.
Nobody taught it law, there is no law module in there. It got very good at
predicting the next word, and somewhere along the way, passing the bar
exam… emerged.

[click] Earlier I basically told you it's JUST statistics. This is where I
take the word "just" back. [magician puts his hat back on] The recipe is
statistics — what the statistics learned, is the interesting part. So maybe
it's a little magic after all.

[click — the captcha comic] Even the captchas have noticed. "Click all the
photos of places you would run for shelter during a robot uprising." We laugh…
because it moved faster than anyone expected.

[Armor, if the one AI-savvy person pushes back on "emergence": fair — part of
the SUDDENNESS is a measurement artifact; all-or-nothing metrics make gradual
growth look like a jump (Stanford, Schaeffer 2023). But that the abilities
exist without being designed in — that part is not disputed.]
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# Temperature

<hr class="rule" />

<div class="grid grid-cols-2 gap-14 text-lg">
<div class="leading-relaxed">

**it rolls dice**

the model is frozen — you'd expect<br>the <b>same answer</b> every time

<img :src="'/art/top5.png'" class="rounded w-full my-1" style="max-height:6rem; object-fit:contain;" />

but each word is a <b>draw</b> — not always the top pick → <b>creativity</b><br>
<span class="dim text-base">the knob: <b>temperature</b> — how often a less likely word wins</span>

</div>
<div v-click class="leading-relaxed">

**Hallucination**

a word is <i>always</i> drawn —<br>even when there is <b>no clear answer</b>

<div class="grid grid-cols-2 gap-3 mt-2 mb-1">
<div>
  <img :src="'/photos/riverbed.jpg'" class="photo h-20 w-full" />
  <div class="text-sm leading-snug mt-1">water <i>always</i> finds a way down</div>
</div>
<div>
  <img :src="'/photos/oral-exam.jpg'" class="photo h-20 w-full" style="object-position:65% 60%;" />
  <div class="text-sm leading-snug mt-1">a student <i>always</i> gives an answer</div>
</div>
</div>

<div class="mini-credit" style="margin-top:0.1rem;">Paraná delta · Presidencia Argentina, CC BY 2.0 · "L'Épreuve orale" · M.-A. Petit-Jean, public domain</div>

<div class="accent mt-2 text-xl" style="font-family:'Fraunces',serif;">plausible ≠ true</div>

</div>
</div>



<img :src="'/art/tovenaar-13-facepalm.svg'" class="mage" style="top:2.2rem; right:2.6rem; bottom:auto; height:7rem;" />

<!--
Here's something that should puzzle you. The model is a frozen file — same
file, same question. So you'd expect the same answer, every single time.
And you know from experience: that's not what happens. Why not?

Because of the dice. The model hands over that list of percentages — and
then a word is DRAWN from it. Usually the most likely word wins, but with
a certain chance a less likely one gets picked instead. Look at our own
list: two percent New ZEALAND. Every so often, the dice send our ship to
New Zealand — and the sentence takes a turn nobody planned. That variety
is a big part of what feels "creative" about these things.

And the knob I promised you: temperature. It sets how big the chance of a
less likely word is. Turn it down — the top candidate almost always wins,
safe and predictable; at zero, same answer every time. Turn it up —
adventurous words get their chance. Your chat app hides that knob;
builders get to turn it.

Keep the two kinds of randomness apart: training randomness made the models
differ from EACH OTHER. The dice make the SAME model answer differently
every time. Your ChatGPT and mine are the same file — we just roll
different dice.

[click] But notice what that draw ALSO means: a word is always chosen. The
list is never empty — "I don't know" is not on it by default. Even when
the model doesn't KNOW, when there is no one clear answer, out comes a
fluent, confident word anyway. That is hallucination.

Two pictures for it. Water always finds a way down — but not always along
the route you meant. And a student at an oral exam always gives an answer —
never "I don't know". Here's the uncomfortable part: bluffing sounds
exactly as fluent as knowing. So: plausible is NOT the same as true. Never
confuse the two again. And remember the little fence robot: it continues
the pattern, whether that was the point or not.

One more honest thing, so this doesn't feel hopeless: what you can DO about
hallucination — that's exactly where part three ends. Hold that question.

And before I hand you the microphone: one last ingredient. Everything you
just saw stands on it.
-->

---

<div class="kicker">Part two <span class="dim">· an LLM is statistics built on our written world</span></div>

# Data is gold

<hr class="rule" />

<div class="rows rows-tight text-lg max-w-3xl">
  <div>training left one open question: <b>where did all that text come from?</b></div>
  <div>the raw material: <b>the public web · books · code</b></div>
</div>

<div class="data-inset"><b>Llama 4 read over 30 trillion tokens</b> · reading that yourself: well over 100,000 years, around the clock <span class="ref">Meta 2025</span></div>

<div class="rows rows-tight text-lg max-w-3xl">
  <div v-click><b>polluted data</b> <span class="dim">· what it reads is what it learns · bias rides in</span></div>
  <div v-click><b>whose text was it?</b> <span class="dim">· nobody asked · that fight is in court right now</span></div>
  <div v-click><b>the well is running dry</b> <span class="dim">· the web is nearly read out · next up: AI-written text</span></div>
</div>

<img :src="'/art/tovenaar-19-goudklomp.svg'" class="mage" />

<!--
Remember the open question from training: where did all those trillions of
words come from? This is the ingredient everything else stood on: data.
The raw material is a mountain of text — the public web, books, code.

How much? Llama 4, one open model, read more than thirty TRILLION tokens.
If you read around the clock, no sleep, that's well over a hundred thousand
YEARS of reading. And by the way — that includes things you wrote. All of
us are in there.

But this mountain of text comes with three challenges. One: polluted data.
What it read is what it learned. If wedding photos on the internet are
mostly one style, the model thinks that IS a wedding. Bias doesn't get
programmed in — it rides in with the data.

Two: whose text was all this? Nobody asked us. Who owns it, who is
responsible for what comes out — that fight is in the courts right now.

Three: the well is running dry. The high-quality public web has largely
been read. So newer models increasingly learn from text that AI wrote —
a copy of a copy. Whether that keeps working is an open question.

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
    <div class="ql">Why do I get a different answer every time?</div>
    <div class="ql">Split this sentence into tokens</div>
  </div>
</div>

</div>

<img :src="'/art/tovenaar-14-achter-laptop.svg'" class="mage mage-left" />


<!--
Round two — same game. Look at the question you wrote down — or borrow one
of mine. Ask it to any AI you have. Read the answer. Then ask ONE follow-up
on whatever surprises you — "why?", "give me an example", "explain that
simpler". Not being satisfied with the first answer is the second half of
the skill.

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



<img :src="'/art/tovenaar-11-vergrootglas.svg'" class="mage mage-left" />

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



<img :src="'/art/tovenaar-06-schouderophalend.svg'" class="mage" />

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



<img :src="'/art/tovenaar-08-wijzend-omhoog.svg'" class="mage" />

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



<img :src="'/art/tovenaar-02-jonglerend.svg'" class="mage" />

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

<Countdown :minutes="5" :run="$clicks >= 1" class="clock-lg" />
<span v-click></span>

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
<img :src="'/art/tovenaar-14-achter-laptop.svg'" class="mage mage-left" />


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

<img :src="'/art/tovenaar-09-applaudisserend.svg'" class="mage" />


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
photos: Wikimedia Commons · A.R. Chaffin (PD) · C.B. Francke (PD) · Morn/CHM (CC BY 2.0) · Virtual-Pano (CC BY-SA 4.0) · Presidencia de la Nación Argentina (CC BY 2.0) · F. Hirzinger (CC BY-SA 3.0) · MG B V8 (CC BY 2.0) · QM2 Hamburg (CC BY-SA 4.0) · xkcd #1838 (CC BY-NC)
</div>


<img :src="'/art/tovenaar-15-zwaaiend.svg'" class="mage" />

<!--
Thank you! I'm on this ship all week — find me for questions, deep AI talk, or
just a chat. And if you want to start the day properly: morning workouts on
deck, every day. See you there!
-->
