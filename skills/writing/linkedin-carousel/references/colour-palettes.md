# LinkedIn Carousel Colour Palettes

Curated combinations that work at 1080×1350 on a phone screen. Each palette has a cover (dark, stops scroll), content slides (light, readable), and a CTA (dark, signals end). Commit to one palette per deck — never mix.

---

## Contrast rules (non-negotiable)

- **Minimum contrast ratio 4.5:1** between text and background — check with a contrast checker before shipping
- Never put navy text on a dark background — reverse to white
- Never put cyan/yellow/orange text as body copy — accent colours are for single words, not sentences
- On white slides: heading must be very dark (near-black or deep brand colour) — mid-grey headings fail on phone screens
- On dark slides: body copy at full white (#FFFFFF) or near-white — no 60% opacity body text

---

## Palette 1 — Aggasys (locked)

Use this for all Aggasys Solutions content. The palette is fixed by brand spec — do not substitute.

| Role | Colour | Hex |
|---|---|---|
| Cover bg / CTA bg | Navy | `#0D2B55` |
| Content slide bg | White | `#FFFFFF` |
| Proof slide bg | Cyan | `#00AEEF` |
| Cover + CTA text | White | `#FFFFFF` |
| Content headings (product name) | Cyan | `#00AEEF` |
| Content sub-headings / model no. | Navy | `#0D2B55` |
| Body copy | Charcoal | `#1A1A2E` |
| Captions / labels | Mid Gray | `#6B7280` |
| Accent rule / underline | Cyan | `#00AEEF` |
| Warning callout | Alert Orange | `#F59E0B` |

**Aggasys slide-level colour strategy:**
- Cover: Navy bg → white headline → cyan sub-hook. Cyan rule line at bottom.
- Content slides: White bg → **cyan** for product names (high contrast, ties to cover) → navy for model numbers and section labels → charcoal body.
- Proof slide: Cyan bg → navy big stat → white supporting text. Centred. Bold.
- CTA: Navy bg → white headline → cyan contact details. Mirrors the cover.

Why cyan for product names on white: navy on white reads as heavy and flat. Cyan on white creates a visual pop and connects every product name back to the brand accent — the reader's eye lands on the product name first, then the body.

---

## Palette 2 — Editorial Dark (Sahil Bloom / thought-leadership)

Best for: personal brand, hot takes, framework reveals, high word-count slides.

| Role | Colour | Hex |
|---|---|---|
| Cover bg / CTA bg | Near-black | `#0A0A0A` |
| Content slide bg | Off-white | `#F9F9F7` |
| Heading (on dark) | White | `#FFFFFF` |
| Heading (on light) | Near-black | `#111111` |
| Accent (underlines, circles, highlights) | Amber | `#F5A623` |
| Body copy | Dark charcoal | `#222222` |
| Caption / label | Mid gray | `#888888` |

**Usage notes:**
- Mark exactly one phrase per slide with the amber accent (underline, circle, or inline highlight) — not multiple
- Cover headline can be very large (110–140px) because the near-black bg handles the contrast
- Never use amber for body text — accent only

---

## Palette 3 — Clean Tech (B2B SaaS / product walkthroughs)

Best for: product carousels, how-to frameworks, IT and software audiences.

| Role | Colour | Hex |
|---|---|---|
| Cover bg | Deep blue-gray | `#0F172A` |
| Content slide bg | White | `#FFFFFF` |
| CTA bg | Deep blue-gray | `#0F172A` |
| Heading (on dark) | White | `#FFFFFF` |
| Heading (on light) | Near-black | `#0F172A` |
| Accent | Electric blue | `#2563EB` |
| Panel / callout bg | Pale blue | `#EFF6FF` |
| Body copy | Dark gray | `#1E293B` |
| Caption | Slate | `#64748B` |

**Usage notes:**
- Use the electric blue accent for numbered step labels, underlines, and callout borders — not headings
- Callout boxes use the pale blue bg with a 4px electric blue left border
- This palette reads "modern SaaS" — strong for product comparisons and stack walkthroughs

---

## Palette 4 — Warm Authority (consulting / advisory / personal brand)

Best for: founder content, lessons-learned, frameworks, opinion pieces.

| Role | Colour | Hex |
|---|---|---|
| Cover bg | Deep warm navy | `#1E293B` |
| Content slide bg | Warm off-white | `#FAFAF9` |
| CTA bg | Deep warm navy | `#1E293B` |
| Heading (on dark) | Warm white | `#F5F0E8` |
| Heading (on light) | Deep brown-black | `#1C1917` |
| Accent | Terracotta / amber | `#C2410C` |
| Body copy | Warm charcoal | `#44403C` |
| Caption | Warm gray | `#78716C` |

**Usage notes:**
- The warm off-white bg (not pure white) gives it a human, non-corporate feel
- Terracotta accent for underlines and the one key phrase per slide
- Avoid this palette for technical product carousels — it reads personal, not enterprise

---

## Palette 5 — Forest Authority (sustainability / ESG / green tech)

Best for: sustainability content, sector leadership, CSR narratives.

| Role | Colour | Hex |
|---|---|---|
| Cover bg | Deep forest | `#052E16` |
| Content slide bg | Light mint | `#F0FDF4` |
| CTA bg | Deep forest | `#052E16` |
| Heading (on dark) | White | `#FFFFFF` |
| Heading (on light) | Deep green | `#14532D` |
| Accent | Emerald | `#34D399` |
| Body copy | Dark green-gray | `#1A2E1A` |
| Caption | Mid green-gray | `#4B7A5C` |

**Usage notes:**
- The light mint bg is unusual enough to stop a scroll — it reads "deliberate choice", not default
- Emerald accent for stats, underlines, and the proof slide bg
- Strong for environmental / circular economy narratives

---

## Palette 6 — Navy & Gold (finance / enterprise prestige)

Best for: financial services, board-level enterprise, premium product positioning.

| Role | Colour | Hex |
|---|---|---|
| Cover bg | Deep navy | `#0F2044` |
| Content slide bg | Ivory white | `#FDFCF8` |
| CTA bg | Deep navy | `#0F2044` |
| Heading (on dark) | White | `#FFFFFF` |
| Heading (on light) | Deep navy | `#0F2044` |
| Accent | Muted gold | `#C9A84C` |
| Body copy | Slate | `#334155` |
| Caption | Cool gray | `#94A3B8` |

**Usage notes:**
- Gold must be muted (#C9A84C range) — bright/neon gold looks cheap; dark gold is prestigious
- Use gold sparingly: rule lines, one underline per slide, stat callout borders
- This palette signals premium — don't use for casual/personal brand content

---

## What to avoid

| Pattern | Why it fails |
|---|---|
| Purple-to-blue gradient bg | Screams AI-generated; LinkedIn compresses JPEGs and the gradient banding becomes visible |
| Glassmorphism (frosted blur panels) | Doesn't render in PDF print mode; looks like 2021 |
| Neon on black (cyberpunk) | Technically high contrast but harsh — readers skip it as "design-first, content-second" |
| Four or more accent colours | No hierarchy; the eye doesn't know where to land |
| Mid-gray headings on white | Fails contrast on phone screens in bright light |
| Orange as a primary bg | High energy but fatiguing across 8 slides — use as accent only |
