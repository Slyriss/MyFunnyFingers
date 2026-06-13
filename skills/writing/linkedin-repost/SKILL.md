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

### A — Add
You agree. But there is a layer the author did not include — a personal story, a specific example, a nuance that sharpens the point. The reader leaves knowing more than the original gave them.

**Best when:** You have a real situation from your own work that makes the original more concrete, more personal, or more specific to your world.

**Opening posture:** Name the signal in the original, then pivot to what it is missing. "The clearest example I have seen of this..." or "What it does not say is..."

---

### B — Extend
You take one thread buried in the original — a single line, an implication, an underdeveloped idea — and pull it further than the author did. The original becomes a launching pad, not the centrepiece.

**Best when:** The original made one good point among several, and you have a strong take on that one point that could stand alone. The reader should finish your commentary and think the most interesting part was yours.

**Opening posture:** Name the specific thread you are pulling. "There is one line in this post I keep coming back to..." or "The part that matters most is buried in the middle."

---

### C — Reframe
You respectfully disagree, complicate, or add a counterpoint that changes how the reader sees the original. Not a takedown — a genuine alternative grounded in something you have actually seen.

**Best when:** The original made a claim that is partially true, overgeneralised, or missing a real exception. You have seen the other side firsthand.

**Opening posture:** Acknowledge what is true before naming what it misses. "This is right in most cases. The exception is the part worth talking about." Never open by dismissing the author.

---

## Workflow

The intake runs in two phases. Phase 1 gets the post and the gut reaction. The skill reads the post, identifies the core claim, and suggests an angle. Phase 2 asks 3 targeted drilling questions based on what the post actually says. Generic questions produce generic answers. The questions have to be about this post.

---

### Phase 1 — Get the post

Ask in one `AskUserQuestion` call:

**Question 1:** Paste the post (or the key section you are responding to).

**Question 2:** What is your gut reaction?
- Mostly agree — but it is missing something from my own experience
- Agree — and one part of it hits harder than the rest
- Disagree — or at least the picture is more complicated than this
- Not sure yet — I just know I have something to say about it

**Question 3:** In one sentence — what is your connection to this topic? Have you worked on this, seen it in a client, built something related, or watched it play out badly?

Wait for answers. Do not write the repost yet.

---

### Between phases — Read and identify

After Phase 1, do this before asking anything else:

1. **Read the post carefully.** Identify the single core claim the author is making — not the topic, the actual argument. State it in one sentence to yourself.

2. **Suggest an angle** based on the gut reaction and the post's claim. Tell the user in one sentence which angle you recommend and why. Example: "This looks like a B — Extend. The author's point about trust being the real bottleneck is the strongest line in the post and it is barely developed. I would pull that one thread rather than respond to the whole thing."

3. **Confirm or let them redirect.** One line: "Does that feel right, or do you want to go a different direction?"

Once the angle is confirmed, move to Phase 2.

---

### Phase 2 — Drill for specifics

Ask 3 targeted questions in one `AskUserQuestion` call. These questions must be tailored to what the post actually says — not generic prompts. The goal is to surface the personal anchor, the tension, and the real take.

**Always ask these three, worded to fit the specific post:**

**Q1 — The anchor moment.**
Ask for a specific situation from their own work where the post's claim played out — or failed to. The question must name the topic from the post. Not "have you seen this?" but "Walk me through a specific time you saw [the post's claim] play out. Who was involved, what happened, what was the result?"

**Q2 — The tension.**
Ask where they would push back, even slightly. Even if they mostly agree, there is usually a "yes, but..." somewhere. Surface it. "What is the part of this post that is incomplete, overstated, or missing a real exception from your experience?"

**Q3 — The raw sentence.**
Ask for the one thing they actually want people to come away with — the sentence they would say at a dinner table but might not post publicly. "Finish this thought with the first thing that comes to mind: the part of this I keep coming back to is..."

Wait for answers before writing anything.

---

### 1. Analyse before drafting

From the two phases, extract:

- **The spine** — the single most specific, most original claim in the user's answers. Everything else serves this.
- **The personal anchor** — the named situation, client, project, number, or decision that makes it theirs. If they did not give one, go back and ask. Do not write without it.
- **The thread** — for Extend, the exact sentence in the original being pulled. For Add and Reframe, the exact claim being responded to.
- **The close** — identify the final line before writing the hook. The best closes reframe the opening or state the spine as a plain conviction.

---

### 2. Draft the repost

Minimum 120 words of original commentary. Do not pad — earn the length with specific content.

```
[HOOK — 1-2 sentences, fits within 140 characters before truncation]
Create tension or imply a gap. Do not summarise the original.
Do not open with "This post by [Name]..." or "Great point from..."

[THE ANGLE — 2-3 sentences]
Name what you are adding, extending, or reframing.
Be specific about what in the original triggered this.

[THE PERSONAL ANCHOR — 3-5 sentences]
The named situation, number, or decision from their own world.
This is the part that cannot be written by anyone else.
Named entities. Specific figures. First-person concrete detail.

[THE INSIGHT — 2-3 sentences]
The one thing the reader now knows that was not in the original.

[SOFT CTA — 1 sentence, optional]
A question that invites real discussion.
"Have you seen this work the other way?" not "What do you think?"
```

The repost button attaches the original automatically. Do not quote or summarise it in the commentary.

---

### 3. Voice rules (no exceptions)

**Cut:**
- Em dashes — period and new sentence, every time
- Banned words: passionate, leverage, utilize, harness, foster, streamline, robust, cultivate, garner, underscore, fundamentally, essentially, ultimately, crucially, notably, game-changer, thought leader, thrilled, excited to share, resonate (as a verb)
- Throat-clearing openers: "This is such an important post", "Couldn't agree more", "Great perspective", "This really resonates"
- Binary contrast: "Not X. But Y." — rewrite as a direct positive claim
- Dramatic fragmentation — isolated 1-2 word sentences as a rhetorical move. Fold into a real sentence
- Rhetorical setups: "Here's what I mean:", "What this tells us is:" — delete and state the point
- Cliché closers: "What do you think?", "Drop a comment", "Tag someone who needs this"

**Verify per 100 words:**
- At least 1 specific number
- At least 1 named entity (person, company, place, product, project)
- At least 1 first-person concrete detail ("I asked", "we ran", "the client told me")

**Sentence rhythm:** No 3 consecutive sentences of similar length. At least one sentence under 7 words and one over 20 words per section.

**Hook window:** LinkedIn truncates at 140 characters on mobile. Count them. If the cut lands on something flat, rewrite the first two lines.

**The close:** Read only the last two lines before the CTA. If they do not land without context, sharpen them. Conviction stated plainly. An implication. A reframe of the hook. Not a summary. Not a question.

---

### 4. Filler vs. original — the test

If the commentary could have been written by anyone who read the same post, it is filler. Rewrite until it could only have been written by this person.

**Filler:**
- "Such an important point. So many people overlook this."
- "This perfectly captures what I have been seeing in my own work."
- "Sharing this because more people need to hear it."

**Original:**
- A specific situation where you saw the opposite happen — and what that taught you
- A number from your own work that confirms or complicates the claim
- A named client, project, or decision the reader cannot find in the original
- A thread the author did not pull — and a specific reason it matters

---

### 5. Present for review

Show the full draft. Then: "Does this sound like you? Any detail wrong, any line that feels off?"

One round of edits. Show only the changed lines. Finalise.

---

### 6. Deliver

1. **The commentary** in a code block, ready to paste before hitting Repost.
2. **Hook check** — first 140 characters confirmed.
3. **Word count** — 120+ words of original content confirmed.
4. **3 hashtag suggestions** — niche, not generic.
5. **Timing note:** First 60 minutes are critical. Reply to every comment within the hour with at least 10 words — acknowledge what they said, add one sentence of your own. After 24-48 hours, hit Repost again for a second distribution wave.

---

## Reference examples

### Angle A — Add
*(Post was about AI adoption being slower than expected)*

> The companies I talk to are not slow because they do not understand AI.
>
> They are slow because the first implementation went sideways and nobody wants to be responsible for the second one.
>
> We ran an onboarding workflow for a clinic in March. The model worked. The staff did not trust it. Three nurses checked every output manually for six weeks before they stopped. Not because the AI was wrong — it rarely was — but because they had no way to know when it would be.
>
> That is the real adoption problem. Not capability. Not cost. Trust, and the absence of any system for building it.
>
> The post below is right that adoption is slower than the headlines suggest. What it does not say is where the slowdown actually lives.

---

### Angle B — Extend
*(Post was about founder burnout)*

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

### Angle C — Reframe
*(Post argued for showing up to more networking events)*

> This is true for most people in most rooms.
>
> The exception is worth naming.
>
> I went to four industry events in the first half of this year. Three produced nothing except a stack of cards I have not followed up on. One produced a client who has been with us for five months and referred two others.
>
> The difference was not the event. It was that I went to one of them specifically to meet one person, and I did.
>
> Broad networking and targeted relationship-building are not the same activity. Treating them as the same is why most people leave events feeling like they wasted an evening.
>
> The post below argues for showing up more. I would argue for showing up with a shorter list.
