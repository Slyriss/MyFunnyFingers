---
name: linkedin-carousel
description: Generate viral-quality LinkedIn carousel content on any topic — slide-by-slide copy, a designed 1080x1350 HTML deck, a rendered PDF ready to upload, and the accompanying LinkedIn caption. Built on analysis of viral carousels (hook formulas, 8-12 slide arcs, 20-30 words per slide, CTA patterns). Use this whenever the user wants a LinkedIn carousel, document post, swipe file, slide-based LinkedIn content, or asks to turn an idea/article/topic into LinkedIn slides. Trigger: /linkedin-carousel
---

# LinkedIn Carousel Generator

Turn any topic into a complete, ready-to-post LinkedIn carousel: the slide copy, a designed deck, a PDF (LinkedIn carousels are uploaded as PDF document posts), and the caption text for the post itself.

## Brand detection

Before writing a single word, check whether this carousel is for a specific brand. If the user mentions **Aggasys**, **Aggasys Solutions**, or the brief is clearly for their LinkedIn, apply the Aggasys brand profile:

- Read `references/aggasys-brand.md` for all palette, typography, voice, and carousel-architecture rules
- Use `assets/aggasys-template.html` instead of the generic template — it already has the correct Navy cover → White content → Cyan proof → Navy CTA slide architecture
- Hook must lead with a **verified metric or proof point** — never the company name first
- **Arial only** — no serif fonts (overrides the "pair two contrasting fonts" rule below)
- Slide count: **4–8** (Aggasys brand spec, not 8-12)
- CTA slide must include: `www.aggasys.com` and `presales@aggasys.com`
- Voice: British English, active voice, no "world-class / cutting-edge / leverage / synergy"

For all other brands or personal carousels, continue with the generic workflow below.

---

## Why these rules exist

LinkedIn carousels live or die on two moments: whether slide 1 stops the scroll, and whether each subsequent slide is digestible in 2-3 seconds of swiping. Analysis of viral carousels (800+ likes each) found remarkably consistent numbers — read `references/viral-patterns.md` before writing your first carousel in a session. The headline findings:

- **11 slides** was the most common length (8-12 is the high-engagement band; drop-off grows after slide 10, hard ceiling ~15)
- **20-30 words per slide** is the mode, but the viral range ran 18.6-87 words/page — density works only when typography carries the design; sparse copy needs an image on every page
- **5-7 words per line** — short lines read fast on a phone
- Format: **1080x1350 portrait PDF**, under 10 MB

## Workflow

### 0. Run the discovery interview (always — skip nothing)

Before writing a single word of copy, ask these four questions. Generic carousels die in the feed; the answers to these are what make copy feel like it was written about the reader, not at them.

Ask all four in a single `AskUserQuestion` call (show them as multiple-choice with an "Other" escape hatch for nuance):

1. **Target reader** — Job title and what keeps them up at night. Options: CTO/IT Director (AI readiness, budget); IT Manager/Sysadmin (downtime, vendor gaps); Procurement/Finance (ROI, reliability); Business owner/MD (falling behind competitors).

2. **Core emotion / pain** — The thing clients actually say before they sign. Options: "We don't know where to start"; "Our setup can't handle AI workloads"; "We got burned by a bad deployment before"; "Competitors are moving faster than us."

3. **Proof point** — A real number, sector win, or outcome. Even rough is fine. If they have one, use it verbatim as the hook. If not, fall back to brand proof points from `references/aggasys-brand.md`.

4. **Desired action + emotion** — What the reader does AND feels after the last slide. Options: DM/email (feel confident we're the right partner); comment for lead magnet (feel like they're missing something — drives algorithm); save the post (feel informed — long-term reach); visit website (feel like this is exactly what they need).

**Why this matters:** the answers change everything. The same product list written for a CFO who fears being left behind reads completely differently from the same list written for an IT manager who is frustrated with downtime. Same products. Different emotional truth. Different copy. Do not skip this step even if the brief feels clear — the questions often surface a detail (a real deployment stat, a specific fear phrase) that becomes the hook.

### 1. Understand the brief

From the user's topic, establish: the audience (who swipes this?), the promise (what do they walk away with?), and the angle (contrarian take, numbered lessons, framework, story, mistakes-to-avoid?). If the user gave only a bare topic, pick the strongest angle yourself and state your choice — don't interrogate them. If they pasted source material (article, notes, post), mine it for the most surprising or specific claims; specificity is what makes hooks work.

### 2. Outline the arc

Every carousel is a three-act structure:

1. **Cover (slide 1)** — hook + sub-hook. A bold, specific claim, number, or question as the primary hook, plus one smaller line of context/intrigue. Put the author's name (or photo, if assets exist) on the cover — viral carousels lead with the person, not a logo. Add a subtle swipe cue (arrow or "swipe →").
2. **Body (slides 2 to N-1)** — **dive right in, rehooking as you go**. No agenda or intro slide; slide 2 delivers the first real content *while* deepening the curiosity (raise the stakes, sharpen the promise). Use numbered headings ("#1…" or "STEP ONE…") so progress feels legible and completable. One idea per slide, each slide earns the next swipe.
3. **Close (last 1-2 slides)** — a recap slide (summarize the steps — this drives saves), then a CTA slide. Pick the CTA from the viral menu: comment-a-keyword lead magnet (highest engagement), newsletter plug with a screenshot of it, follow + profile pic, or a reflective question. A carousel that ends abruptly wastes the attention it earned.

**Hook selection — always use `references/hook-library.md`.** Read it before writing a single word of the cover slide. It contains 7 categories of proven formulas (curiosity, contrarian, problem/pain, list/value, story, authority/proof, trend) plus The LinkedIn Creator's 5 fill-in templates, a sub-hook pattern guide, and a hook strength checklist. Pick the category that matches the core emotion from the discovery interview — then fill every bracket with something specific. A hook with a real number always beats one without. A hook that names a real consequence always beats one that stays vague.

Hook category → discovery interview answer mapping:
- "We don't know where to start" → **Curiosity** (C-1, C-3) or **Problem** (P-5)
- "Our setup can't handle AI workloads" → **Problem** (P-1, P-4) or **Contrarian** (CT-3)
- "We got burned before" → **Story** (S-1) or **Authority** (A-2)
- "Competitors are moving faster" → **Trend** (T-2) or **Contrarian** (CT-5)
- Aggasys or verified-metric brief → **Authority** (A-3, A-4) — always

Before finalising the hook, run it through the hook strength checklist in the library. If it fails any box, rewrite it.

### 3. Write the slide copy

Write all slides as plain text first and show them to the user inline before designing — copy is the product, design is packaging. Per slide: a short headline (the one idea) and at most 2-3 supporting lines. Enforce the numbers: ~20-30 words per slide, 5-7 words per line. Cut adjectives, keep verbs and numbers. Each slide should be understandable on its own *and* create a reason to swipe (open loops, numbered progress like "3/7", cliffhanger last lines).

### 4. Design the deck

Copy `assets/template.html` to the working directory as `<topic-slug>-carousel.html` and fill in the slides. The template is a self-contained HTML file where each `.slide` is exactly 1080x1350 with `@page` CSS so it prints to a correct PDF.

First, pick one of the two design schools the viral set splits into, and commit to it for the whole deck:
- **Typographic** (Sahil Bloom, Chris Do): all-type slides, brutalist size contrast, mixed sizes *within* a headline, circled/struck-through/highlighted words. Can carry high word counts.
- **Illustrated** (Colby Kultgen, Luke Matthews): sparse copy (~20-35 words) with an illustration, graphic, or annotated screenshot-style example on every single page.

Design rules (these are anti-headache rules, not taste suggestions — cramped, low-contrast carousels measurably die):
- One typographic idea per slide: a huge headline (90-130px) and small supporting text. Size contrast is the whole design.
- Give the deck a unique text personality: pair two contrasting fonts (e.g. expressive serif headline + clean sans support), and mark the key phrase on each slide with a highlight, underline, or accent color — viral carousels style individual words, not whole slides.
- A mid-deck pattern-break slide (full-bleed image or typographic-art slide) resets attention in decks over 9 slides.
- Generous whitespace; text occupies the middle ~70%, nothing within 80px of edges — and keep the bottom corners empty, LinkedIn renders its nav arrows there over your content.
- Pick a 2-color palette + one accent that fits the topic. Avoid the AI-slop defaults (purple-to-blue gradients, glassmorphism, emoji bullets on every line).
- Consistent footer on every slide: page number ("3/11") and the author's name or @handle if known.
- Where a claim benefits from proof, use an evidence element: a stat called out at the bottom of the slide, or a screenshot-style block.
- The CTA slide may visually break the pattern (inverted colors) to signal the end.

### 5. Render the PDF

```powershell
powershell -File <skill-dir>/scripts/render-pdf.ps1 -HtmlPath <deck>.html
```

This uses headless Edge to print the deck to PDF. Verify the PDF exists and has the right page count, then send both the HTML and PDF to the user (the PDF is what gets uploaded to LinkedIn as a document post).

### 6. Write the caption

The post text above the carousel matters as much as the deck. Deliver it in a code block for easy copying:
- Line 1: a re-hook (different wording than slide 1 — don't duplicate), under ~140 characters so it isn't truncated behind "...see more"
- 2-4 short lines of context or the key takeaway
- A CTA that matches the final slide (e.g., "Comment 'TEMPLATE' and I'll DM it to you" — comment-gated CTAs drive the algorithm)
- 3-5 niche hashtags at the end, no hashtag walls

## Output checklist

Every run delivers four things: (1) slide-by-slide copy shown inline, (2) the HTML deck file, (3) the rendered PDF, (4) the caption in a code block. If the user only wants copy (they said "just the text"), skip steps 4-5.
