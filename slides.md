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

<div class="mt-6 flex justify-center items-end gap-12">
  <img :src="'/art/magician-intro.svg'" class="h-40" />
  <img :src="'/art/box-closed.svg'" class="h-36 mb-2" />
</div>

<div class="mt-8 opacity-70">
Marijke Valk · NomadCruise 17 · September 2026
</div>

<!--
[0:00 — title up while people walk in]

Welcome everyone! Grab a seat — and keep your phone or laptop somewhere close,
you're going to need it today. Yes, really — this is the one session where
you're ALLOWED to be on your phone.
-->

---
layout: center
---

# prompt&nbsp;&nbsp;→&nbsp;&nbsp;<span class="accent">?</span>&nbsp;&nbsp;→&nbsp;&nbsp;reply

<div class="mt-10 flex justify-center">
  <img :src="'/art/box-closed.svg'" class="h-44" />
</div>

<div class="mt-6 opacity-60 text-xl">ChatGPT · Claude · Grok · Gemini</div>

<!--
Quick show of hands: who used AI today? — Right. Almost everyone.

And it's always the same little ritual, isn't it? You type a question… the dots
start blinking… the AI gets to work… and out comes an answer. Often
surprisingly good. Sometimes — surprisingly wrong. But either way, there's that
moment: how did it DO that? Something goes in, something comes out — and
everything in between is hidden. A black box.

Honest show of hands: for whom does AI still feel like that — a black box?
[hands go up] Yeah. Me too — for a long time. Until I started to ask questions.
Questions to AI, actually — and I'll come back to that.
-->

---
layout: center
---

# Today we make the box <span class="grey-word">grey</span>

<div class="mt-6 grid grid-cols-2 gap-10 items-center max-w-3xl mx-auto">
<div class="text-left text-xl leading-relaxed">

- AI is not magic — it's <b>math and statistics</b>
- no formulas today — just a <b>peek under the hood</b>
- and honestly: it's <b>fun</b> to understand

</div>
<img :src="'/art/xkcd-1838.png'" class="h-56 rounded bg-white p-2 mx-auto" />
</div>

<div class="mt-4 text-sm opacity-40">xkcd #1838 — "Machine Learning" (CC BY-NC)</div>

<!--
So the goal of this session: make that black magic box a little bit grey.
A little bit transparent.

Because AI is not magic. Underneath, it's calculus and linear algebra. Don't
worry — I'm not going deep into that. No formulas today. I'm just giving you a
peek under the hood.

[xkcd] This comic is honestly the whole field in one panel: "You pour the data
into this big pile of linear algebra and collect the answers. — What if the
answers are wrong? — Just stir the pile until they start looking right."
It's a joke… and it's also not entirely a joke. You'll see.

You might think: why this talk? NomadCruise is full of practical sessions —
build this, automate that. This one is the foundation underneath all of them.
When you understand what you're working with, you get a feel for what's
possible AND what's not — and you stop taking the answers for granted. That's
what makes people take you seriously when you talk about AI.

And… it's just fun to understand. That's really why I'm giving this talk.
-->

---

# This is a workshop

<div class="grid grid-cols-2 gap-8 mt-8">
<div class="text-left text-xl leading-relaxed">

During each section, <b>write down at least one question</b>:

- something you <b>don't understand</b>
- something that makes you <b>wonder</b>
- something you want to <b>know more</b> about

<span class="accent">→ it can be anything.</span>

</div>
<div class="text-left text-xl leading-relaxed">

After each section: <b>5 minutes</b> to ask your question — <b>to AI</b>.

- any chat app you already have<br><span class="opacity-60 text-base">ChatGPT · Claude · Gemini — free tier is fine</span>
- your own question beats my examples

</div>
</div>

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

# Three claims

<div class="mt-10 space-y-6 text-left max-w-3xl mx-auto">
  <div class="claim"><img :src="'/art/box-crack.svg'" class="h-16" /><span><b>1 ·</b> AI is not new</span></div>
  <div class="claim"><img :src="'/art/box-half.svg'" class="h-16" /><span><b>2 ·</b> An LLM is statistics built on our written world</span></div>
  <div class="claim"><img :src="'/art/box-open.svg'" class="h-16" /><span><b>3 ·</b> AI tools are cars around the same engine</span></div>
</div>

<!--
So here's the plan — three sections, and each title is a claim I'm going to
prove to you.

One: AI is not new. Two: an LLM is statistics built on our written world —
sounds cryptic now, it won't in half an hour. Three: AI tools are cars around
the same engine.

And with every claim, the box opens a little further.
-->

---

# Who am I

<div class="grid grid-cols-2 gap-x-10 gap-y-6 mt-8 text-left text-lg quadrant">
<div>

**MSc Applied Physics · MSc Econometrics**
<span class="opacity-60">understand the world, describe it with math</span>

</div>
<div>

**R&D engineer, Dutch high-tech**
<span class="opacity-60">ASML · Philips</span>

</div>
<div>

**Nomad → freelance developer**
<span class="opacity-60">startups & research institutes</span>

</div>
<div>

**Now: building with AI**
<span class="opacity-60">a personal human + software agency · AI master's</span>

</div>
</div>

<div class="mt-8 text-lg opacity-70">balance: outdoors · sports · community</div>

<img :src="'/art/magician-intro.svg'" class="mage" />

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
layout: center
class: section-slide
---

<img :src="'/art/box-crack.svg'" class="h-32 mx-auto mb-6" />

# 1 · AI is not new

<img :src="'/art/magician-curious.svg'" class="mage" />

<!--
Claim number one: AI is not new. In fact, it's about as old as the computer
itself. Let me show you — quickly, because history should feel like a
fly-over.
-->

---

# What is intelligence?

<div class="mt-10 text-2xl text-center">
<span class="pill">perception</span> → <span class="pill">processing</span> → <span class="pill">action</span>
</div>

<div class="mt-10 text-xl opacity-80 text-center">
natural intelligence is everywhere in nature — in <b>degrees</b>
</div>

<img :src="'/art/magician-curious.svg'" class="mage" />

<!--
First: what even IS intelligence? There are many definitions — whole schools of
thought. A workable one: perception, processing, action. You take something in,
you do something with it, you act. And notice — you need the action to
OBSERVE intelligence. A brain in a jar doesn't show you anything.

And it's not just us. Nature is full of intelligence, in degrees — an octopus
opening a jar, a bee finding the shortest route. Intelligence is not a yes/no
thing, it's a dial.

Keep that in mind, because "artificial" intelligence is just: humans trying to
build some of that.
-->

---

# As old as the computer

<div class="mt-8 timeline text-left max-w-2xl mx-auto text-xl space-y-5">
  <div><b>1600s</b> — Leibniz dreams: <i>"calculemus"</i> — let us calculate</div>
  <div><b>1950</b> — Turing: can machines think? <span class="opacity-60">(the Turing test)</span></div>
  <div><b>1956</b> — the term "artificial intelligence" is coined</div>
  <div><b>1997</b> — a chess computer beats the world champion</div>
</div>

<div class="mt-8 text-xl opacity-80">"This dream is older than most of us."</div>

<img :src="'/art/magician-curious.svg'" class="mage" />

<!--
Humans have wanted to build thinking machines for centuries. Leibniz —
sixteen hundreds! — dreamed that arguments could be settled by computation:
"calculemus", let us calculate. When the computer arrived, the question came
with it immediately: Turing, 1950 — can machines think? How would we even
tell? That's the Turing test. By '56 the field had a name. By '97 a computer
beat Kasparov at chess.

So no — this did not start with ChatGPT. This dream is older than most of us
in this room.
-->

---

# AI summers and winters

<div class="mt-6 winters mx-auto max-w-3xl">
<svg viewBox="0 0 700 240" class="w-full">
  <path d="M20,200 Q90,80 150,110 Q190,130 230,190 Q300,60 370,100 Q420,125 460,185 Q560,20 680,35"
        fill="none" stroke="#22d3ee" stroke-width="4" stroke-linecap="round"/>
  <text x="80" y="60" fill="#f5f7fa" font-size="20">summer</text>
  <text x="185" y="225" fill="#8b95a3" font-size="20">winter</text>
  <text x="320" y="45" fill="#f5f7fa" font-size="20">summer</text>
  <text x="420" y="225" fill="#8b95a3" font-size="20">winter</text>
  <text x="570" y="90" fill="#22d3ee" font-size="22" font-weight="bold">now</text>
</svg>
</div>

<div class="mt-4 text-xl opacity-80 text-center">money flows in → results disappoint → winter. repeat.<br>
the ambition all along: <b>AGI</b> — AI that can do everything a human can</div>

<img :src="'/art/magician-curious.svg'" class="mage" />

<!--
But the road was bumpy. AI moves in summers and winters. The pattern repeats:
big promises, money flows in… the results disappoint… funding dries up —
winter. Twice, for years.

The ambition behind it never changed though: AGI — artificial GENERAL
intelligence, a system that can do everything a human can. That's still the
stated goal of the big labs today.

And right now? We are in the hottest summer the field has ever had.
-->

---

# Why the boom <i>now</i>?

<div class="mt-8 grid grid-cols-3 gap-6 max-w-4xl mx-auto text-xl">
  <div class="ignite"><b>one architecture</b><br><span class="opacity-60">the transformer paper (2017)</span></div>
  <div class="ignite"><b>hardware</b><br><span class="opacity-60">GPUs — built for games</span></div>
  <div class="ignite"><b>data</b><br><span class="opacity-60">the internet finally produced enough text</span></div>
</div>

<div class="mt-8 text-xl text-center opacity-90">ChatGPT: ~100M users in ~2 months — fastest-growing consumer app ever</div>

<div class="mt-6 text-lg text-center accent">LLMs are only a small part of AI — but that's our focus today</div>

<img :src="'/art/magician-curious.svg'" class="mage" />

<!--
So why did THIS summer explode, after seventy years? Three igniters came
together.

One: a new recipe — the transformer, one research paper from 2017. Two:
hardware — GPUs, graphics cards built for gaming, turned out to be perfect for
this kind of math. And three: data — for the first time in history, the
internet had produced enough text to learn language from. Remember that one —
it comes back in a big way in section two.

Put together: ChatGPT reached about a hundred million users in two months.
The fastest-growing consumer app in history.

One honest note: LLMs — the text models — are only a small part of AI. But
they're the part everyone here uses, so that's our focus today.

And that's claim one done: AI is not new. The boom is new. — Time for YOUR
questions.
-->

---
layout: center
class: qround
---

# 🖐 Round 1 — ask AI your question

<div class="mt-6 grid grid-cols-2 gap-10 max-w-4xl mx-auto text-left text-xl">
<div>

**Stuck? Start with:**
- "Why did … ?"
- "What ended … ?"
- "Explain … like I'm 12"

</div>
<div>

**For example:**
- What ended the last AI winter?
- Is a thermostat intelligent?

</div>
</div>

<div class="mt-8 text-2xl text-center"><span class="accent font-bold">5 minutes</span> · one question · any chat app</div>

<img :src="'/art/magician-curious.svg'" class="mage" />

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
class: section-slide
---

<img :src="'/art/box-half.svg'" class="h-32 mx-auto mb-6" />

# 2 · An LLM is statistics<br>built on our written world

<img :src="'/art/magician-flashlight.svg'" class="mage" />

<!--
Claim number two — and this is the heart of the talk: an LLM is statistics
built on our written world.

Statistics? Really? Let me prove it. You'll do the statistics yourselves —
right now.
-->

---
layout: center
---

# You are the model

<div class="mt-10 space-y-6 text-3xl text-center">
  <p>"Titanic got stuck on …"</p>
  <p v-click>"From Southampton, the ship sails across the Atlantic to New …"</p>
  <p v-click>"A transatlantic crossing takes … days"</p>
</div>

<div v-click class="mt-10 text-xl accent text-center">you just predicted the next word from the previous words</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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

# The list of percentages IS the answer

<img :src="'/art/top5.png'" class="h-72 mx-auto mt-4 rounded" />

<div class="mt-4 text-xl text-center opacity-80">everything the model outputs is this list —<br>the reply you see is just a draw from it</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

<!--
Here's what that looks like inside a real model. This is an actual language
model, given our sentence — and this is its real output: a short list of
candidate next words, each with a probability.

And here's the thing most people don't know: this list IS the answer.
Everything else — the fluent reply, the paragraph, the personality — is just
drawing from lists like this, one word at a time, again and again.

Percentages. Sound familiar? That's… statistics.
-->

---

# LLMs are pattern generators

<div class="grid grid-cols-2 gap-10 mt-8 items-center">
<div class="mx-auto">
<svg viewBox="0 0 360 240" class="w-80">
  <g fill="#22d3ee">
    <circle cx="40" cy="190" r="5"/><circle cx="90" cy="165" r="5"/><circle cx="140" cy="150" r="5"/>
    <circle cx="190" cy="118" r="5"/><circle cx="240" cy="95" r="5"/><circle cx="290" cy="80" r="5"/>
  </g>
  <path d="M20,205 L330,55" stroke="#f5f7fa" stroke-width="2.5" stroke-dasharray="7 6" opacity="0.8"/>
  <circle cx="330" cy="55" r="7" fill="none" stroke="#22d3ee" stroke-width="2.5"/>
</svg>
</div>
<div class="text-left text-xl leading-relaxed">

find the pattern →<br>predict the next point

<span v-click class="block mt-6">now imagine this in <b>many, many more dimensions</b></span>

<span v-click class="block mt-6 opacity-80 italic">"an econometrician would call this a regression —<br>just in absurdly many dimensions"</span>

</div>
</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

<!--
You've all seen this picture in school: some data points, a line through them,
and the line predicts the next point. Find the pattern, extend the pattern.

That is what you did with the Titanic sentence, and it's what the model does
with language. Just — not in two dimensions. In many, many more.

An econometrician would call this a regression. Just… in absurdly many
dimensions. That's not a joke, that's technically accurate — and it's the
whole reason I can stand here and tell you it's statistics.
-->

---

# It learned the connections between words

<div class="mt-10 text-2xl text-center leading-relaxed">
"like an old couple<br>finishing each other's sentences —<br><span class="opacity-70">trained on years of being together"</span>
</div>

<div v-click class="mt-8 text-xl text-center">
those connections are numbers: <b class="accent">weights</b><br>
<span class="opacity-70 text-lg">a web of weighted connections = a <b>neural network</b>. that's the whole mystery.</span>
</div>

<div class="bubble">wait — so it never<br>looks anything up?</div>
<img :src="'/art/magician-flashlight.svg'" class="mage" />

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

# A model is literally a file of numbers

<div class="grid grid-cols-2 gap-6 mt-6 items-center">
  <img :src="'/ai_model_file_numbers.png'" class="rounded" />
  <img :src="'/ai_model_file_heatmap.png'" class="rounded" />
</div>

<div class="mt-4 text-lg text-center opacity-80">real weights from a real model (GPT-2) — this is <i>literally</i> what's inside</div>

<div v-click class="mt-3 text-xl text-center accent">so… where do these numbers come from?</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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

# Step 1 · Data is gold

<div class="mt-6 text-left max-w-3xl mx-auto text-xl space-y-4">
  <p>the raw material: the public web · books · articles · code</p>
  <p class="accent"><b>"well over 100,000 years of nonstop reading, around the clock"</b></p>
  <p v-click>quality matters: what it read is what it learned <span class="opacity-60">— bias comes in with the data<br>(and yes: whose text was this? — the ethical question)</span></p>
  <p v-click>the exact mix is a <b>trade secret</b> — training runs cost <b>$78M – $490M</b></p>
</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

<!--
Step one: data. You need a mountain of text — the public web, books, articles,
code. How much? One open model was trained on more than thirty TRILLION
words-worth of text. If you read around the clock, no sleep, that's well over
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

# Step 2 · Training = trial and error

<div class="mt-6 text-left max-w-3xl mx-auto text-xl space-y-4">
  <p>start with <b>random</b> numbers → billions of tiny corrections</p>
  <p class="opacity-80 italic">"a machine with billions of dials — training is the machine turning its <b>own</b> dials, a tiny nudge per example"</p>
  <p v-click>nobody programs the numbers in → <b class="accent">machine learning</b></p>
  <p v-click>it kept the <b>patterns, not the pages</b> · every run ends up slightly different</p>
  <p v-click>only possible in parallel → GPUs, data centers</p>
</div>

<div class="bubble">who turns<br>billions of dials?!</div>
<img :src="'/art/magician-flashlight.svg'" class="mage" />

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

# watch it grow up

<img :src="'/art/stages.png'" class="h-80 mx-auto mt-4 rounded" />

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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

# Meaning becomes geometry

<img :src="'/art/embedding-map.png'" class="h-80 mx-auto mt-4 rounded" />

<div class="mt-3 text-lg text-center opacity-80">similar things end up close together in the numbers</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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

# Step 3 · Post-training

<div class="mt-8 text-left max-w-3xl mx-auto text-xl space-y-5">
  <p>the raw model is a <b>text-completer</b> — not yet an assistant</p>
  <p v-click>tuned with <b>human feedback</b>: helpful answers, good behaviour <span class="opacity-60">(the term: RLHF)</span></p>
  <p v-click>+ safeguards & guardrails</p>
  <p v-click class="accent"><b>"AI is not neutral — it's built, tuned and controlled."</b></p>
</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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
layout: center
---

# Weights are <span class="accent">saved!</span>

<div class="grid grid-cols-2 gap-8 mt-8 items-center max-w-4xl mx-auto">
  <img :src="'/ai_model_file_heatmap.png'" class="rounded" />
  <div class="text-left text-xl leading-relaxed">

training happens <b>once</b>, in a data center

what remains is <b>ONE file</b>

no database · no internet inside

<span class="opacity-70">open source = download the file<br>to your own server</span>

  </div>
</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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

# …and the results are <span class="accent">spectacular</span>

<div class="mt-8 text-2xl text-center leading-relaxed max-w-3xl mx-auto">
train it only to predict the next word —<br>
and abilities appear that <b>nobody put in</b>
</div>

<div class="mt-6 text-xl text-center opacity-80">translation · reasoning · code<br><span class="accent">emergence</span> — even the makers were surprised</div>

<img :src="'/art/magician-hat-back-on.svg'" class="mage" />

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
-->

---

# …and <span class="accent">weird</span>: hallucination

<div class="grid grid-cols-2 gap-8 mt-6 text-left text-xl">
<div class="leading-relaxed">

<b>the riverbed</b> 🏞

training carves the riverbed —<br>
every answer is new water,<br>
and water <i>always</i> finds a way down

<span class="accent block mt-4">plausible ≠ true</span>

</div>
<div v-click class="leading-relaxed">

<b>…and it rolls dice</b> 🎲

sometimes a less likely word wins<br>
<span class="opacity-60">(the knob is called temperature)</span>

training made the models differ<br>from <i>each other</i> —<br>
the dice make the <i>same</i> model<br>answer differently each time

</div>
</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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
layout: center
class: qround
---

# 🖐 Round 2 — ask AI your question

<div class="mt-6 grid grid-cols-2 gap-10 max-w-4xl mx-auto text-left text-xl">
<div>

**Go one level deeper:**
- ask your question
- then ask one <b>follow-up</b> on the answer

</div>
<div>

**For example:**
- Why can't it just look things up?
- What did *your* model train on?
- If it just predicts words, how can it write code?

</div>
</div>

<div class="mt-8 text-2xl text-center"><span class="accent font-bold">5 minutes</span> · one question · any chat app</div>

<img :src="'/art/magician-flashlight.svg'" class="mage" />

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
class: section-slide
---

<img :src="'/art/box-open.svg'" class="h-32 mx-auto mb-6" />

# 3 · AI tools are cars<br>around the same engine

<img :src="'/art/magician-builder.svg'" class="mage" />

<!--
Claim number three. You now know what a model is. But here's the thing — you
never actually use a raw model. Nobody does. You use products built AROUND
one. Let me show you the anatomy of every AI tool you've ever opened.
-->

---

# The anatomy of every AI tool

<div class="diagram mt-8 mx-auto">
  <div v-click="3" class="ring guard"><span class="ring-label">GUARDRAILS <span class="opacity-50">— the company's rules</span></span>
    <div v-click="2" class="ring harness"><span class="ring-label">HARNESS <span class="opacity-50">— the car: chat window · memory · tools</span></span>
      <div class="ring engine">LLM<br><span class="text-sm opacity-70">the engine</span></div>
    </div>
  </div>
  <div v-click="4" class="ctx-arrow"><span class="accent font-bold">YOUR CONTEXT →</span><br><span class="text-sm opacity-70">prompt · your data · instructions</span></div>
</div>

<img :src="'/art/magician-builder.svg'" class="mage" />

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

# Same engine, different cars

<div class="mt-6 text-left max-w-3xl mx-auto text-xl space-y-4">
  <p>Claude the chat app & Claude Code — <b>same model behind</b><br><span class="opacity-60">same for ChatGPT and everything built on GPT</span></p>
  <p v-click>most "AI startups" = a new car around someone else's engine <span class="opacity-60">(a wrapper)</span></p>
  <p v-click>the labs — OpenAI · Anthropic · Google · Mistral — each build their <b>own engines</b>, in versions & sizes</p>
</div>

<img :src="'/art/magician-builder.svg'" class="mage" />

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

# Three ways to make it yours

<div class="mt-6 text-left max-w-3xl mx-auto text-xl space-y-5">
  <p><b>1 · fine-tuning</b> — extra training data, changes the weights <span class="opacity-60">(rare, for specific use cases)</span></p>
  <p v-click><b>2 · harness</b> — build tools & memory around the engine</p>
  <p v-click><b>3 · context</b> — what <b>you</b> feed it, every call — <span class="accent">the only layer you always control</span></p>
  <p v-click class="opacity-80 italic">"a tool that searches your documents and pastes what it finds into the prompt — that's all 'RAG' is"</p>
  <p v-click class="accent">context is also your anti-hallucination lever:<br>give it your facts instead of letting it guess</p>
</div>

<img :src="'/art/magician-builder.svg'" class="mage" />

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

# The tool zoo, sorted

<div class="mt-6 grid grid-cols-3 gap-6 max-w-4xl mx-auto text-lg text-left">
  <div class="zoo"><b>cars you drive</b><br><span class="opacity-70">ChatGPT · Claude · Gemini<br>Perplexity · Notion AI</span></div>
  <div class="zoo"><b>car factories</b><br><span class="opacity-70">Zapier · n8n<br>Cursor · LangChain</span></div>
  <div class="zoo"><b>engine builders</b><br><span class="opacity-70">OpenAI · Anthropic<br>Google · Mistral</span></div>
</div>

<div class="mt-10 text-2xl text-center accent font-bold">Overwhelmed? It doesn't matter what you use exactly — just start.</div>

<img :src="'/art/magician-builder.svg'" class="mage" />

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
layout: center
class: qround
---

# 🖐 Round 3 — ask AI your question

<div class="mt-6 grid grid-cols-2 gap-10 max-w-4xl mx-auto text-left text-xl">
<div>

**Make it practical:**
- describe what <b>you</b> do
- ask what would help

</div>
<div>

**For example:**
- Which tool fits my work?
- What's the difference between ChatGPT the app and GPT the model?

</div>
</div>

<div class="mt-8 text-2xl text-center"><span class="accent font-bold">5 minutes</span> · one question · any chat app</div>

<img :src="'/art/magician-builder.svg'" class="mage" />

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
class: section-slide
---

<img :src="'/art/box-grey.svg'" class="h-36 mx-auto mb-4" />

# AI is not magic

<div class="mt-6 text-2xl leading-relaxed">
data · weights · math — the box is grey now
</div>

<div class="mt-8 text-2xl accent font-bold">
"Treat the model as a noisy estimator,<br>not an oracle."
</div>

<img :src="'/art/magician-bow.svg'" class="mage" />

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

# Thank you

<div class="mt-8 text-xl leading-relaxed opacity-90">
find me on board — questions, AI talk, or just a chat<br>
<span class="opacity-70">…and at the morning workouts on deck 🏋️</span>
</div>

<div class="mt-10">
  <img :src="'/art/magician-bow.svg'" class="h-40 mx-auto" />
</div>

<div class="mt-6 opacity-60">Marijke Valk · NomadCruise 17</div>

<!--
Thank you! I'm on this ship all week — find me for questions, deep AI talk, or
just a chat. And if you want to start the day properly: morning workouts on
deck, every day. See you there!
-->
