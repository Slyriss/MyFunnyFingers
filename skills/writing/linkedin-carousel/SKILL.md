---
name: linkedin-carousel
description: Generate viral-quality LinkedIn carousel content on any topic — slide-by-slide copy, a designed 1080x1350 HTML deck, a rendered PDF ready to upload, and the accompanying LinkedIn caption. Built on analysis of viral carousels (hook formulas, 8-12 slide arcs, 20-30 words per slide, CTA patterns). Use this whenever the user wants a LinkedIn carousel, document post, swipe file, slide-based LinkedIn content, or asks to turn an idea/article/topic into LinkedIn slides. Trigger: /linkedin-carousel
---

# LinkedIn Carousel Generator

Turn any topic into a complete, ready-to-post LinkedIn carousel: the slide copy, a designed deck, a PDF (LinkedIn carousels are uploaded as PDF document posts), and the caption text for the post itself.

## Why these rules exist

LinkedIn carousels live or die on two moments: whether slide 1 stops the scroll, and whether each subsequent slide is digestible in 2-3 seconds of swiping. Analysis of viral carousels (800+ likes each) found remarkably consistent numbers — read `references/viral-patterns.md` before writing your first carousel in a session. The headline findings:

- **11 slides** was the most common length (8-12 is the high-engagement band; drop-off grows after slide 10, hard ceiling ~15)
- **20-30 words per slide** is the mode, but the viral range ran 18.6-87 words/page — density works only when typography carries the design; sparse copy needs an image on every page
- **5-7 words per line** — short lines read fast on a phone
- Format: **1080x1350 portrait PDF**, under 10 MB

## Workflow

### 1. Understand the brief

From the user's topic, establish: the audience (who swipes this?), the promise (what do they walk away with?), and the angle (contrarian take, numbered lessons, framework, story, mistakes-to-avoid?). If the user gave only a bare topic, pick the strongest angle yourself and state your choice — don't interrogate them. If they pasted source material (article, notes, post), mine it for the most surprising or specific claims; specificity is what makes hooks work.

### 2. Outline the arc

Every carousel is a three-act structure:

1. **Cover (slide 1)** — hook + sub-hook. A bold, specific claim, number, or question as the primary hook, plus one smaller line of context/intrigue. Put the author's name (or photo, if assets exist) on the cover — viral carousels lead with the person, not a logo. Add a subtle swipe cue (arrow or "swipe →").
2. **Body (slides 2 to N-1)** — **dive right in, rehooking as you go**. No agenda or intro slide; slide 2 delivers the first real content *while* deepening the curiosity (raise the stakes, sharpen the promise). Use numbered headings ("#1…" or "STEP ONE…") so progress feels legible and completable. One idea per slide, each slide earns the next swipe.
3. **Close (last 1-2 slides)** — a recap slide (summarize the steps — this drives saves), then a CTA slide. Pick the CTA from the viral menu: comment-a-keyword lead magnet (highest engagement), newsletter plug with a screenshot of it, follow + profile pic, or a reflective question. A carousel that ends abruptly wastes the attention it earned.

Hook formulas that recur in viral carousels (pick one, make it specific):
- Number + outcome: "6 copywriting lessons that made me 6 figures"
- Contrarian declaration: "Company pages are dead"
- Anti-pattern: "My anti-to-do list"
- Big promise: "Steal my exact [system/template/process]"
- Curiosity gap: "I analyzed 11 viral carousels. Here's what they all do."

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
