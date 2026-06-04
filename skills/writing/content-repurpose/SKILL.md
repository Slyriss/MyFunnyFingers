---
name: content-repurpose
description: Orchestrator skill. Takes one raw input from Sean and produces both a LinkedIn post and a Substack essay simultaneously. Handles platform routing, unified intake, and parallel output. Always load voice-profile/SKILL.md before generating anything.
---

# Content Repurpose — Orchestrator Skill

## What This Skill Does

Takes one raw input. Runs one intake process. Outputs two pieces:

1. A LinkedIn post — following all rules in `content-linkedin/SKILL.md`
2. A Substack essay — following all rules in `content-substack/SKILL.md`, including the research sub-skill

The two pieces are not the same content reformatted. They are two different treatments of the same source material, each suited to its platform and format. The LinkedIn post compresses. The Substack essay expands. They may open differently, land differently, and emphasize different angles — as long as both are true to Sean's voice.

---

## Step 0: Load Skills

Before doing anything, load:

1. `voice-profile/SKILL.md` — all voice rules apply to both outputs
2. `content-linkedin/SKILL.md` — rules for the LinkedIn version
3. `content-substack/SKILL.md` — rules for the Substack version, including the research sub-skill

---

## Step 1: Platform Routing Assessment

Before intake, read the raw input and assess silently:

**For LinkedIn:** Which of the 5 post types fits best (Insight, Milestone, Portrait, Story, Take)? What is the hook? What is the one thing this post should do?

**For Substack:** Which of the 4 essay types fits best (Field Report, Argument, Portrait, Essay)? What is the central argument? Does this input have enough depth for a full essay, or does it need more from intake?

**The two platforms may not use the same type.** A raw input might be a Story post on LinkedIn and an Argument essay on Substack. Identify the best fit for each independently.

State both assessments in one sentence each before asking intake questions.

---

## Step 2: Unified Intake

Run one intake process that covers both platforms. Do not run two separate intakes. Ask questions that serve both versions at once — note in brackets which platform a question primarily serves if it's not obvious.

**Always ask:**

1. **Central argument in one sentence.** What does this actually mean — not what happened, what you think it means. [Drives Substack spine and LinkedIn thesis]

2. **The specific moment.** Where were you, what exactly happened, what did you see or hear? The more concrete the better. [Drives LinkedIn hook and Substack scene-setting]

3. **What changes for the reader after seeing this?** What should they think, feel, or do differently? [Drives LinkedIn CTA-free close and Substack hard-won conclusion]

**Ask one platform-specific question if needed:**

- If the Substack version needs a wider frame: What's the larger trend, tension, or context this experience belongs to? [Substack only]
- If the LinkedIn post needs a sharper hook: What's the single most surprising or counterintuitive thing about this? [LinkedIn only]

Maximum 4 questions total across both. If the raw input is already specific, skip what you don't need.

Also run the research sub-skill from `content-substack/SKILL.md` here — identify 0–2 facts that could strengthen the Substack version. Flag any useful findings before writing.

---

## Step 3: Write Both Versions

Write the LinkedIn post first. Then write the Substack essay.

Present them in this order:

```
---
LINKEDIN
---

[LinkedIn post]

---
SUBSTACK
---

[Substack essay]
```

Do not explain what you did. Do not add commentary between the two pieces. Deliver both versions cleanly, separated by the labels above.

---

## Platform Differences to Apply

| | LinkedIn | Substack |
|---|---|---|
| Length | 120–380 words | 600–1,500 words |
| Opening | Hook — payload arrives late | Scene or plain claim |
| Structure | Compressed, one thing | Builds through scenes or beats |
| Stats | Rarely — only if one line, specific, surprising | Up to 2, woven in as prose |
| Hashtags | 0–3 at end | None |
| Emoji | 0–1, milestone posts only | None |
| Section breaks | None | Up to 3, used sparingly |
| Close | Statement, no question | Hard-won statement, no question |

Both pieces share: no em dashes, no buzzwords, no headers inside content, no bold, no bullets, no closing question.

---

## Quality Check Before Delivering

Run this across both outputs:

- [ ] Voice profile rules applied to both pieces
- [ ] LinkedIn post follows content-linkedin rules (correct type, format, length)
- [ ] Substack essay follows content-substack rules (correct type, format, length)
- [ ] The two pieces are not the same content copy-pasted and padded — they are genuinely different treatments
- [ ] Research sub-skill ran — any stats used are verified, woven in, limited to two in Substack
- [ ] Neither piece closes with a question
- [ ] No em dashes in either piece

If any item fails, fix it before delivering.
