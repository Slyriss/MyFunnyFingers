---
name: linkedin-comment
description: Craft an insightful LinkedIn comment on someone else's post, or write a strong reply to a comment on your own post. Two modes: Outbound (commenting on others to build authority and visibility) and Inbound (replying to comments on your own posts to sustain engagement). Three comment angles: Agree+Add, Extend, Respectful Reframe. Data-backed structure, full voice rules. Trigger: /linkedin-comment
---

# LinkedIn Comment Skill

A like weighs 1x in LinkedIn's algorithm. A comment weighs 15x. A back-and-forth comment thread — where you reply and they reply back — weighs exponentially more than either.

Comments 15+ words have 2.5x more algorithmic impact than short responses. Generic comments ("Great post!", "So true!") are actively suppressed. A well-crafted comment on the right post in the first 60 minutes can drive more profile visits than a standalone post.

This skill writes the comment. Specific, original, worth reading.

---

## Two Modes

### Mode 1 — Outbound Comment
You are commenting on someone else's post. Goal: add genuine value, get visible to their audience, build authority in your niche. The comment is a mini-post attached to their content — it has its own reach, its own hook, its own close.

**Best used for:**
- Posts by people in your niche or target audience
- High-engagement posts in the first 60 minutes of going live
- Content where you have a specific experience, data point, or story to add

---

### Mode 2 — Inbound Reply
Someone commented on your post and you need to reply. Goal: keep the thread alive, reward the commenter with a real response, trigger another round of algorithmic distribution. Every author reply within the first 60 minutes doubles the engagement signal.

**Best used for:**
- Replies to substantive comments on your own posts
- Keeping a thread going past the first exchange
- Turning a like-and-move-on into a real conversation

---

## The 3 Comment Angles

### A — Agree + Add
You agree with the post or comment. But you have something to add that was not there — a personal experience, a data point, a nuance that sharpens the point. The reader leaves with more than the original gave them.

**Best when:** The original is solid and you have one specific thing to layer on — a situation you lived through, a number from your own work, an implication the author did not draw out.

**Structure:** Affirm the specific element that is right → pivot to your addition → close with a question or observation that invites a reply.

---

### B — Extend
You take one thread in the post — a line, an implication, an underdeveloped idea — and pull it further. The comment makes the most interesting part of their post even more interesting.

**Best when:** The post made one strong point buried among weaker ones, and you want to surface it and develop it. The author should feel like you understood their post better than most readers did.

**Structure:** Name the exact thread → pull it forward with your own take → land on something the original did not say.

---

### C — Respectful Reframe
You see it differently. Not a contradiction — an alternative interpretation grounded in your own experience or evidence. You are not correcting them; you are adding a perspective they did not have.

**Best when:** The post made a claim that is partially true, overgeneralised, or missing an important exception. You have seen the other side of it firsthand. Data or a named situation backs you up.

**Structure:** Acknowledge what is true → name what it misses → state your alternative with evidence → invite their response.

---

## Workflow

### Step 0 — Gateway question (always first, before anything else)

Ask this single question before doing anything. The answer determines the entire path.

```
What do you want to do with this post?
```

Options:
- **Comment** — write a long, substantive comment under the post (stays on their post, builds your authority in their audience)
- **Repost** — share it to your own feed with your own commentary on top (creates a new post on your profile)
- **Reply to a comment** — someone left a comment on your post and you want to respond well

**If they choose Repost:** stop here. Tell them: "For a repost, use `/linkedin-repost` — it has the full workflow for that." Do not proceed further in this skill.

**If they choose Comment or Reply:** continue to Phase 1 below.

---

### Phase 1 — Get the post and gut reaction

Ask in one `AskUserQuestion` call:

**Q1:** Paste the post (or the specific comment you are replying to — include the original post it sits under).

**Q2:** Which mode fits?
- Outbound — commenting on someone else's post to add value and get visible to their audience
- Inbound — replying to a comment left on my own post to keep the thread alive

**Q3:** What is your gut reaction?
- Mostly agree — but I have something to add from my own experience
- One specific part hits harder than the rest — I want to pull that thread
- I see it differently — I have a counterpoint backed by something real
- Not sure — I just know I have something to say

**Q4:** In one sentence — what is your connection to this topic? Have you seen this in your own work, with a client, in a decision you made?

Wait for answers. Do not write the comment yet.

---

### Between phases — Read and suggest

After Phase 1:

1. Read the post carefully. Identify the single strongest claim or the most specific line. That is what a good comment responds to — not the topic, the specific argument.

2. Suggest an angle (A, B, or C) with one sentence of reasoning. Example: "This looks like a B — the line about trust being the real adoption barrier is the sharpest thing in this post and it is barely developed. I would pull that thread."

3. For **Mode 2 (Inbound):** also read the comment being replied to. A good reply acknowledges what the commenter actually said — not just the topic — and adds something before asking a follow-up. If the comment is vague, the reply can sharpen the conversation by naming what the commenter probably meant.

4. Confirm the angle in one line before moving to Phase 2.

---

### Phase 2 — Drill for specifics

Ask 3 questions in one `AskUserQuestion` call. These must be tailored to what the post actually says — not generic.

**Q1 — The anchor.**
Ask for a specific situation from their own work where the post's claim played out. Name the topic from the post in the question. "Walk me through a specific time you saw [the post's core claim] in your own work. What happened, what was the result?"

**Q2 — The tension.**
"What is the part of this post that is overstated, incomplete, or missing an exception from your experience — even slightly?"

**Q3 — The one sentence.**
"Finish this thought with the first thing that comes to mind: the thing I actually want to say here is..."

Wait for answers before writing.

---

### 1. Analyse before drafting

Extract from both phases:

- **The spine** — the single most original claim in the user's answers. One sentence. Everything serves this.
- **The anchor detail** — the named situation, number, or decision that makes the comment theirs. Without this, the comment is filler.
- **The specific thread** — the exact line or claim in the post being responded to. Not the topic. The sentence.
- **The close** — what does the reader walk away knowing? Identify before writing the hook.

---

### 2. Draft the comment

**Length by purpose:**
- **Outbound authority-building:** 60–120 words. Long enough to show expertise, short enough to read in full.
- **Outbound quick add:** 20–40 words. One sharp observation. One question.
- **Inbound reply:** 30–80 words. Acknowledge specifically what they said, add one sentence, ask one question.

**Structure:**

```
[REFERENCE — 1 sentence]
Name the specific element of the post you are responding to.
Not the topic. The sentence, the claim, the number.
Shows you actually read it.

[YOUR CONTRIBUTION — 2-4 sentences]
The personal anchor: named situation, outcome, or number.
The thing the original post did not have.
This is the part that cannot be written by anyone else.

[THE CLOSE — 1 sentence]
A conviction, an implication, or a question that requires a real answer.
Not "What do you think?" — something specific:
"Have you seen this break down when [specific condition]?"
```

---

### 3. Voice rules (same as all LinkedIn skills — no exceptions)

**Cut:**
- Em dashes — period and new sentence, every time
- Banned words: passionate, leverage, utilize, harness, foster, streamline, robust, cultivate, garner, underscore, fundamentally, essentially, ultimately, crucially, notably, game-changer, thought leader, thrilled, resonate (as a verb)
- Opener clichés: "Great post!", "This is so true", "Couldn't agree more", "Thanks for sharing", "Love this perspective"
- Binary contrast: "Not X. But Y." — rewrite as a direct positive claim
- Dramatic fragmentation — isolated 1-2 word sentences. Fold into real sentences
- Vague closers: "What do you think?", "Would love to hear your thoughts", "Tag someone who needs this"

**Verify:**
- At least 1 named entity (person, company, project, product) if the comment is 40+ words
- At least 1 first-person concrete detail ("I saw", "we ran", "a client told me")
- At least 1 specific element from the original post — proof you actually read it

**Sentence rhythm:** Vary length. No 3 sentences of similar length in a row.

---

### 4. The filler test

Read the comment back. Could it have been written by anyone who skimmed the post? If yes, it is filler. Rewrite until it could only have been written by this person, about this specific post.

**Filler:**
- "Such a great point. So many people overlook this in their day-to-day work."
- "This is exactly what I have been seeing. Really important perspective."
- "Sharing this — more people need to read it."

**Original:**
- A situation with a named person, place, or outcome
- A number — even rough — from their own experience
- A thread the author did not pull, with a reason it matters
- An exception to the claim backed by something they actually witnessed

---

### 5. Algorithm timing note

Include this in the delivery:

**Outbound:** Comment within the first 60 minutes of a post going live. That is when LinkedIn is running its initial distribution test. A substantive comment in that window gets seen by the author's audience while the post is actively spreading.

**Inbound:** Reply to comments within 30 minutes of receiving them. Authors who reply within 30 minutes generate 64% more total comments. Each author reply refreshes the algorithm signal.

**Nested threads:** After your initial reply, if they reply back — reply again. Back-and-forth threads (3+ exchanges between two people) drive 2.4x more reach than standalone comments.

---

### 6. Niche authority note (for outbound commenting strategy)

If the user is building a commenting habit — not just one comment — add this:

Comment 5–10 times daily on posts within 3 core topics in your niche. After consistent activity, LinkedIn's algorithm begins tagging your account as authoritative in those topics and amplifies your own posts accordingly. Commenting before you post your own content (5-6 comments first) warms the algorithm before your post enters its test phase.

---

### 7. Present and deliver

Show the comment. Ask: "Does this sound like you? Anything wrong or off?"

One round of edits. Show only changed lines. Then deliver:

1. **The comment** in a code block, ready to paste.
2. **Timing note** — when to post it for maximum impact.
3. **Follow-up prompt** (optional) — a one-line question to keep the thread going if they reply.

---

## Reference examples

### Outbound — Agree + Add
*(Post was about AI tools not replacing salespeople)*

> The thing this captures well is that the tool is only as good as the brief it gets.
>
> We piloted an AI outreach tool with a client last quarter. 400 contacts, high intent list, solid product. The reply rate was 1.3%. We rewrote the prompt with input from their two best reps — people who had been selling this for four years — and the rate went to 6.8% in the next send.
>
> The reps did not do less work. They did different work. Knowing which part of the message actually lands is a skill that still has to come from somewhere human.

---

### Outbound — Extend
*(Post mentioned briefly that trust takes longer to build than most founders expect)*

> The line about trust taking longer than expected is the one I keep coming back to.
>
> Most founders measure trust by whether the client renewed. That is too late. The signal is earlier — it is whether the client cc's you on internal conversations, or whether they still double-check everything you send them six months in.
>
> I have seen relationships where the work was excellent and the trust never came. And the opposite. The variables are not the same thing.

---

### Outbound — Respectful Reframe
*(Post argued that cold outreach is dead)*

> This is true for the version of cold outreach that most people are still doing.
>
> We ran 3 cold campaigns last month — different sequences, different tones, one that was almost absurdly short. The short one booked 4 meetings. The polished one booked 1.
>
> Cold outreach is not dead. The version where you optimise for looking credible instead of starting a real conversation is dead. Those are not the same thing, and conflating them lets the bad version keep running while the good version gets dismissed along with it.

---

### Inbound — Reply to a comment
*(Someone commented "great point about trust — I've been burned by assuming it was there when it wasn't")*

> That gap between assuming trust exists and actually checking whether it does is where most things quietly go wrong.
>
> The check I started using: if a client has not asked a single question in 30 days, I assume something is wrong, not that everything is fine. Silence is not satisfaction.
>
> How long did it take before you realised trust had not been there in the situation you are thinking of?
