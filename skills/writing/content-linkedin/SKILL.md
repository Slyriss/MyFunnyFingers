---
name: content-linkedin
description: Write or repurpose content for Sean Lee Yang's LinkedIn. Use this skill whenever Sean provides a raw thought, idea, draft, experience, or note and wants it turned into a LinkedIn post. Also triggers for editing an existing post, writing a hook, improving structure, or generating variants. Always load voice-profile/SKILL.md before generating output.
---

# LinkedIn Content Skill

## Step 1: Intake — Before Writing Anything

When Sean gives a raw input, do not write the post immediately.

First, read the input and do two things:

**A. Identify the post type** based on what the input is about. State which type you think it is and why in one sentence.

**B. Ask targeted questions** to get what's missing. The goal is specificity. Generic posts come from missing detail. Ask only what you actually need — 2 to 4 questions max, each with a clear purpose.

Use this as a guide for what to ask by post type:

**Insight** — What specifically made you think this? Was there one moment, scene, or thing you saw that triggered it? What did you believe before that changed?

**Milestone** — What is the one moment or thing that actually made this period real for you? Who was the one person who mattered most and what specifically did they do? What shifted in how you think or work?

**Portrait** — What is the one decision this person made that defines them? What did they see that others didn't? What's your honest one-line take on what they mean to you?

**Story** — What is the specific detail, scene, or moment you want to open on? Who is the subject and when do you want to reveal them? What does the reader feel differently at the end?

**Take** — What is the thing most people believe that you think is wrong or incomplete? What real thing have you seen that made you believe your version? What's the implication if you're right?

Format the intake response like this:

```
Type: [type] — [one sentence on why]

Before I write, a few questions:

1. [Question — why it matters in one clause]
2. [Question — why it matters in one clause]
3. [Question — why it matters in one clause, optional]
```

Once Sean answers, write the post. Do not ask again.

## Step 2: Load Voice Profile

Read `/home/claude/skills/voice-profile/SKILL.md` before writing. Every post must pass the voice profile check.

### Structure
- Line break between every paragraph — always
- 1–3 sentences per paragraph
- No headers, no subheadings, no bullet lists inside the post
- Bold only for a standalone title line if the post calls for one
- Emojis: 0–1 max, only in milestone posts, never as decoration

### Hook
LinkedIn shows ~2 lines before "...see more." The hook must earn the click — but it doesn't have to reveal the payload. It opens a tension or situation that the reader needs to resolve.

**What works:**
- A specific moment or fact that implies more: "I wrote my first LinkedIn post 4 years ago from my army bunk."
- A statement that feels incomplete: "I've lived in Shenzhen for 4 months and it changed how I think about building."
- A line that creates mild dissonance: "She left an 11-year career. Most people in her position never would have."

**What doesn't:**
- Questions ("Have you ever wondered...?")
- Announcements ("I'm excited to share...")
- Thesis statements that give away the ending

### Ending
The ending is where the real thing lands. It should feel like the post was always moving toward this one line.

**What works:**
- A reframe of the opening that lands differently now: "On hindsight, her professor was right. She is a homemaker."
- A clean implication: "The future still needs to be built in the physical world."
- A conviction stated simply: "Fear kills more dreams than failure ever will."

**What doesn't:**
- Questions to prompt engagement
- Generic CTAs
- Restating the lesson already made in the body
- Ending on gratitude unless it's the whole point

### Length by type
- Insight: 120–200 words
- Milestone: 200–350 words
- Portrait: 200–320 words
- Story: 250–380 words
- Take: 100–170 words

---

## The 5 Post Types

Each has a different job. Voice stays the same. Structure and payload differ.

---

### Type 1: Insight
*Job: Shift how someone sees something — one thing only.*

Sean has been somewhere, built something, or noticed a pattern. The post delivers one reframe. Not a listicle. Not "here's what I learned." A single observation that lands with weight.

**Arc:**
- Hook: a specific situation or fact that implies a question
- Middle: what you saw or did — specific, not general. 2–4 short paragraphs.
- Close: the reframe. One or two lines. The thing the whole post was pointing at.

**Constraint:** If you can identify two insights in the draft, cut one. The remaining one should be sharper for it.

**Test:** Read only the last two lines. If they land without context, the post is working.

---

### Type 2: Milestone
*Job: Mark a real moment without making it about yourself.*

Career transitions, completions, launches. The trap is gratitude-listing and adjective-stacking. The fix: anchor on one specific moment, project, or shift. Let everything else — including thanks — serve that anchor.

**Arc:**
- Anchor: one specific thing that happened (not "an incredible journey")
- What it actually was: concrete detail, not descriptions of how it felt
- What shifted: one genuine observation — not "I learned the importance of X"
- Thanks: specific people, specific reasons, one line each. Not a roll call.
- Close: one forward line — a door opening, not a bow

**Constraint:** If you're tagging more than 4 people, each one needs a real sentence. If you can't write that sentence, cut the tag.

---

### Type 3: Portrait
*Job: Make someone else the subject. Show why they matter through one decision.*

A person Sean has met, learned from, or wants to spotlight. The post is about them — but told through the lens of one moment or choice that defines who they are.

**Arc:**
- Open on the defining decision or fact: "She left her 11-year career."
- Who they are: context, briefly — don't over-explain
- The thing that made the decision make sense: what they saw that others didn't
- What they built: specific, concrete — numbers are fine if they carry weight
- Close: Sean's honest one-line take on what this person means

**Constraint:** Sean is present in this post only as a witness. His opinions should serve the subject, not centre him.

---

### Type 4: Story
*Job: Make the reader feel something through a delayed reveal.*

Personal narrative. A moment, a person, a memory. The subject is often obscured at the start. The reveal lands when earned.

**Arc:**
- Open on a detail or moment — not on the person or the point
- Build through specific sensory or situational details: what happened, what was there
- The reveal: who this person is, or what this moment meant
- Close: the thing that makes the whole story resonate differently in retrospect

**Constraint:** Don't name the subject until the reveal earns it. Don't explain the emotion — let the detail carry it.

**The mother post is the template.** Every sentence earns the next one. The close reframes the opening cruelty into something that lands completely differently.

---

### Type 5: Take
*Job: Say something plainly that others are hedging around.*

An opinion, a contradiction, a pattern. Should feel slightly uncomfortable to post. If it's safe, it probably isn't sharp enough.

**Arc:**
- The take, in the first sentence — no wind-up
- One real-world grounding: something observed, not hypothetical
- The implication: what it means if true

**Constraint:** No hedging. No "in my opinion." No softening question at the end. If you believe it, say it like you believe it.

---

## Quality Check

Before outputting, verify:

- [ ] Zero em dashes. Replace with a period or new sentence.
- [ ] Hook survives the "...see more" cutoff and creates pull
- [ ] No sentence that could have been written by anyone
- [ ] Specific detail is doing the work, not adjectives
- [ ] The close lands — it's the thing the whole post was pointing at
- [ ] One payload only — no second insight sneaking in
- [ ] Reads in Sean's voice, not generic LinkedIn voice
- [ ] Word count fits the post type

---

## Output Format

```
---
POST (Type: [insight/milestone/portrait/story/take])
Word count: ~XXX
---

[Post, formatted with line breaks as it appears on LinkedIn]

---
NOTES
[2–3 lines: what structural choice was made and why. Flag anything Sean might want to adjust.]
```

Offer two variants only when the raw input genuinely supports two different angles. Label the tradeoff, don't just offer "shorter vs longer."

---

## Red Flags — Reframe Before Writing

- "I'm grateful for this opportunity" → find the specific thing that made it real
- "I'm passionate about X" → show it through what was done, not said
- "I learned the importance of teamwork" → find the specific moment it became true
- Listing names without reasons → cut tags or write real sentences
- Two insights in one draft → pick one, cut the other
