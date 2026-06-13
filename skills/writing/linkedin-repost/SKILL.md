---
name: linkedin-repost
description: Craft an insightful LinkedIn repost. User pastes a post, answers a few questions about their context and free thoughts, and gets a repost with 120+ words of original commentary that adds real value — not filler. Three angles available: Add (build on it), Extend (pull one thread further), Reframe (respectful counterpoint). Applies full voice rules. Trigger: /linkedin-repost
---

# LinkedIn Repost Skill

One-click reposts earn a median of 2 likes. Reposts with fewer than 50 words of commentary perform 3x worse than not reposting at all. Reposts with 120+ words of original, specific insight outperform both by 4x.

The difference is not length. It is lexical originality — new vocabulary, a personal example, a named situation, a number from your own experience. Generic observations are penalised. Original takes are rewarded.

This skill produces a repost that earns its place in someone's feed.

---

## The 3 Repost Angles

Before writing anything, the user picks an angle. The angle determines the entire structure.

### A — Add
You agree with the post. But there is a layer the original author did not include — a personal story that proves it, a specific example from your own context, a nuance that sharpens the point. The reader leaves knowing more than the original gave them.

**Best when:** The original post is strong and you have a real story or specific experience that extends it. You are not disagreeing — you are making it more concrete, more personal, or more specific to your world.

**Opening posture:** Affirm the signal in the original, then pivot to your addition with "What it doesn't mention is…" or a story that starts with "The clearest example I've seen of this…"

---

### B — Extend
You take one thread buried in the original — a single line, an implication, an underdeveloped idea — and pull it much further than the author did. The original post becomes a launching pad, not the centrepiece.

**Best when:** The original post made one good point among several, and you have a strong, specific take on that one point that could stand alone. The reader should finish your commentary and think the most interesting part was yours.

**Opening posture:** Name the specific thread you are pulling. "There is one line in this post I keep coming back to…" or "The part that matters most here is buried in paragraph three."

---

### C — Reframe
You respectfully disagree, complicate, or add a counterpoint that changes how the reader sees the original. Not a takedown — a genuine alternative interpretation grounded in your own experience or observation.

**Best when:** The original post made a claim that is partially true, overgeneralised, or missing a meaningful exception. You have seen the other side of it firsthand. The disagreement is specific and evidence-backed, not reflexive.

**Opening posture:** Acknowledge what is true in the original before naming what it misses. "This is right in most cases. The exception is the part worth talking about." Never open by dismissing the original author.

---

## Workflow

### 0. Intake

Ask everything in one `AskUserQuestion` call. Never ask again after this.

**Ask:**

1. **The post** — Paste the original post you want to repost. If it is long, just paste the key section you are responding to.

2. **Your angle** — Which one fits?
   - A: Add — you have a story or example that builds on it
   - B: Extend — you want to pull one specific thread much further
   - C: Reframe — you want to add a respectful counterpoint

3. **Your context** — What is your connection to this topic? Have you seen this play out in your own work, with a client, in your industry? Even rough notes. One sentence is enough.

4. **Free thoughts** — What do you actually want to say? Not polished — raw. A reaction, a memory, a disagreement, a data point. Whatever came to mind when you read the original.

5. **Tone** — Any constraints? (Keep it under X words, British English, avoid tagging the author, include a specific CTA, etc.)

Wait for answers before writing anything.

---

### 1. Analyse before drafting

Read the original post and the user's answers. Before writing, identify:

- **The thread to pull** — For Extend, name the exact sentence or idea. For Add and Reframe, name what the original actually argues so you are responding to the right thing.
- **The user's real take** — Strip the free thoughts down to the one most specific, most original claim. That is the spine of the repost.
- **The personal anchor** — The one concrete detail from the user's context (a client, a project, a number, a decision) that makes the commentary theirs and not anyone else's.
- **The close** — What is the line the whole repost is building toward? Identify it before writing the hook.

---

### 2. Draft the repost

**Minimum 120 words of original commentary.** Under 50 words performs worse than not reposting. Do not pad — earn the length with specific content.

Structure:

```
[HOOK — 1-2 sentences, within 140 characters before truncation]
Create tension or imply a gap. Do not summarise the original post.
Do not open with "This post by [Name]..." or "Great point from..."

[YOUR ANGLE — 2-3 sentences]
Name what you are doing: adding, extending, or reframing.
Be specific about what in the original triggered this.

[THE PERSONAL ANCHOR — 3-5 sentences]
The story, example, or data point from your own world.
Named entities. Specific numbers. First-person concrete detail.
This is the part that makes the commentary original.

[THE INSIGHT — 2-3 sentences]
The one thing the reader now knows that they did not before.
Not a summary of the original. A genuine addition.

[SOFT CTA — 1 sentence, optional]
A question that invites discussion, not a demand.
"Have you seen this work the other way?" not "What do you think?"
```

Then below the commentary, the repost button pulls in the original post automatically. No need to quote or summarise it in your commentary.

---

### 3. Voice rules (apply without exception)

Inherited from the content-linkedin skill. Every repost must pass all three passes.

**What to cut:**
- Em dashes — replace with a period and a new sentence, every time
- Banned vocabulary: passionate, leverage, utilize, harness, foster, streamline, robust, cultivate, garner, underscore, fundamentally, essentially, ultimately, crucially, notably, game-changer, thought leader, thrilled, excited to share, resonate (as a verb applied to content)
- Throat-clearing openers: "This is such an important post", "Couldn't agree more", "Great perspective from", "This really resonates"
- Binary contrast patterns: "Not X. But Y." — rewrite as a direct positive claim
- Dramatic fragmentation — isolated 1-2 word sentences used as a rhetorical move. Fold them into a real sentence
- Rhetorical setups: "Here's what I mean:", "What this tells us is:", "The truth is," — delete the setup, state the point
- Cliché closers: "What do you think?", "Drop a comment below", "Tag someone who needs this"

**What to verify — per 100 words:**
- At least 1 specific number
- At least 1 named entity (person, company, place, product, project)
- At least 1 first-person concrete detail ("I asked", "I saw", "we ran", "the client told me")

**Sentence rhythm:**
No 3 consecutive sentences of roughly the same length. Every section needs at least one sentence under 7 words and one over 20 words.

**Hook window:**
LinkedIn truncates at 140 characters on mobile before "...see more". The hook must create enough tension or curiosity to earn the tap. Count the characters. If the cut lands on something flat, rewrite the first two lines.

**The close:**
Read only the last two lines before the CTA. If they do not land without context, they are not working. The close should feel like the post was always moving toward that one line. Conviction stated plainly. An implication. A reframe of the hook.

What does not work: restating the lesson already made in the body, questions for engagement, anything that sounds like a bow.

---

### 4. What makes commentary original vs. filler

LinkedIn's algorithm detects lexical originality — vocabulary and sentence patterns that differ from the original post. Filler commentary (paraphrasing, agreeing without adding, listing the author's own points back at them) is penalised.

**Filler:**
- "Such an important point about X. So many people overlook this."
- "This perfectly captures what I have been seeing in my own work."
- "Sharing this because more people need to hear it."

**Original:**
- A specific situation where you saw the opposite happen, and what that taught you
- A number from your own work that confirms or complicates the claim
- A named client, project, or decision that gives the reader something they cannot find in the original post
- A thread the original author did not pull — and a reason it matters

If the commentary could have been written by anyone who read the same post, it is filler. Rewrite it until it could only have been written by this person.

---

### 5. Algorithm timing note (include in delivery)

After posting, flag this to the user:

- **First 60 minutes are critical.** Reply to every comment within the hour. Each author reply refreshes the algorithm signal.
- **Reply with substance** — at least 10 words, acknowledge what they said specifically, add one sentence of your own.
- **After 24-48 hours**, LinkedIn's Repost button gives a second distribution wave. Use it.

---

### 6. Present for review

Show the full commentary draft. Then ask:

"Does this sound like you? Any detail wrong, any line that feels off?"

One round of edits. Show only the changed lines. Then finalise.

---

### 7. Deliver

1. **The commentary** in a code block, ready to paste before hitting Repost.
2. **Hook check** — confirm the first 140 characters create pull.
3. **Word count** — confirm 120+ words of original content.
4. **3 hashtag suggestions** — niche, not generic.
5. **Timing note** — when to post and how to seed the first hour.

---

## Reference examples

### Angle A — Add (building on a post about AI adoption being slower than expected)

> The companies I talk to are not slow because they do not understand AI.
>
> They are slow because the first implementation went sideways, and nobody wants to be responsible for the second one.
>
> We ran an onboarding workflow for a clinic in March. The model worked. The staff did not trust it. Three nurses checked every output manually for six weeks before they stopped. Not because the AI was wrong — it rarely was — but because they had no way to know when it would be.
>
> That is the real adoption problem. Not capability. Not cost. Trust, and the absence of any system for building it.
>
> The post below is right that adoption is slower than the headlines suggest. What it does not say is where the slowdown actually lives.

---

### Angle B — Extend (pulling one thread from a post about founder burnout)

> There is one line in this post I have been sitting with since I read it this morning.
>
> "You can be building the right thing in the wrong way."
>
> I have watched three founders in my network step away in the last eight months. None of them ran out of runway. None of them had a product problem. They had a pace problem — and by the time they named it, the damage was already done.
>
> The pattern I kept seeing: the month before they stepped back, they were the most productive they had ever been. Output up. Clarity down. The metrics looked fine until the person behind them did not.
>
> Speed without a floor is just a faster way to hit the ground.

---

### Angle C — Reframe (complicating a post about the value of networking events)

> This is true for most people in most rooms.
>
> The exception is worth naming.
>
> I went to four industry events in the first half of this year. Three of them produced nothing except a stack of cards I have not followed up on. One produced a client that has been with us for five months and referred two others.
>
> The difference was not the event. It was that I went to one of them specifically to meet one person, and I did.
>
> Broad networking and targeted relationship-building are not the same activity. Treating them as the same is why most people leave events feeling like they wasted an evening.
>
> The post below argues for showing up more. I would argue for showing up with a shorter list.
