---
name: linkedin-hiring-post
description: Generate LinkedIn hiring posts in the Voltade storytelling format — opens with a specific incident that reveals the candidate's character, follows through with concrete metrics, ends with a hiring CTA. Story-first, no corporate speak, honest and specific. Use when the user wants to write a LinkedIn post to hire or celebrate a team member, intern, or employee. Trigger: /linkedin-hiring-post
---

# LinkedIn Hiring Post Generator

Turn a person's story into a LinkedIn hiring post that leads with a real moment, not a resume summary.

Three structural approaches are available. The user picks the one that fits. The voice rules apply to all three.

---

## The 3 Approaches

### A — Curiosity-Gap / Portrait
Open on a quiet detail — a late-night message, an unexpected question, a small thing that turned out to be significant. Don't name or explain the person immediately. Let the reader wonder. The reveal lands when it's earned.

**Best when:** the defining moment is subtle. The person didn't save the day dramatically — they noticed something others missed, or handled something quietly that nobody expected them to handle at all.

**Arc:** detail that implies more → who sent it / what happened → the reveal → parenthetical aside → company proof → achievements → quote → one-line close → CTA

**Example opening:**
> [Name] sent me a message at 11pm on a Wednesday.
> It wasn't urgent. She wanted to know if the positioning angle we were using for [Product] was the same one we'd tested six months ago, and if so, why.
> She'd been with us three weeks.

---

### B — Time-Anchor / Story
Open on the crisis or the pressure point. A deadline, a fallthrough, a moment where something had to happen and the obvious person wasn't available. The candidate steps in. You expected one thing. You got another.

**Best when:** there's a clear before-and-after. Something was broken or missing, and this person fixed or filled it — not because they were asked to go that far, but because that's how they think.

**Arc:** the crisis → what you expected → what actually happened → parenthetical aside → company proof → achievements → quote → insight line → CTA

**Example opening:**
> Three days before a product launch, our campaign brief fell apart.
> The freelancer we'd worked with for two years couldn't deliver. We had a launch date, a product, and nothing in between.
> I asked [Name] to take a first pass at the messaging.

---

### C — Contrarian / Take
Open on what most companies do. Name the gap between what internships or roles usually are and what yours actually is. Then prove it with one person.

**Best when:** the company genuinely does something unusual — throws interns into real work, gives them actual ownership, puts them in front of clients. The person's story is the proof, not the point.

**Arc:** what most [role]s look like → what this person did instead → the contrast moment → parenthetical aside → company proof → achievements → quote → sharp close → CTA

**Example opening:**
> Most marketing internships are about learning to use the tools.
> Scheduling posts. Resizing assets. Sitting in on calls where you're not sure why you're there.
> [Name] did those things. She also rewrote a campaign brief in her second week because she thought the angle was off.

---

## Workflow

### 0. Style question (always first)

Before anything else, ask the user which approach fits — in a single `AskUserQuestion` call:

**Question 1:** Which structural approach fits this person's story?
- A: Curiosity-Gap — open on a quiet detail, earn the reveal
- B: Time-Anchor — open on the crisis, show how they stepped in
- C: Contrarian — open on what most companies do, then prove you're different

**Question 2:** What's the person's name, role, and how long they've been with you? Still there or moved on?

**Question 3:** Give me the specific moment — the incident, the detail, the message, the decision. What happened and when?

**Question 4:** What did they actually produce? Numbers if you have them — campaigns, leads, content pieces, audience growth, revenue, anything with a figure attached. Rough is fine.

**Question 5:** Did they say anything that stuck with you — about the work, the market, how they think? One line in their own voice. If nothing comes to mind, say so.

**Question 6:** What role are you hiring for, and what's the one thing your JD promises that most companies wouldn't?

Wait for answers before writing a word.

---

### 1. Draft the post

Use the chosen approach's arc. Write in plain prose, short paragraphs, no headers or bullet lists inside the post.

**Sequence for all three approaches:**

```
[OPENING — 2-3 sentences]
Set the scene using the approach's entry point. Specific. No throat-clearing.

[THE EXPECTATION — 1-2 sentences]
What you thought would happen, or what the situation implied.

[THE REVEAL — 2-3 sentences]
What actually happened. The contrast that makes the person real.

[(PARENTHETICAL ASIDE) — 1 sentence in brackets]
One honest, self-aware note. Shows fairness, not cheerleading.

[COMPANY PROOF — 2-3 sentences]
Quote or paraphrase your JD. Show this person is evidence you meant it.

[ACHIEVEMENTS — 2-4 sentences]
Numbers first. Systems, campaigns, customers, scale. One compact paragraph.

[DIRECT QUOTE — 1 sentence, its own line]
Their words. Short. Specific. Slightly surprising.

[CLOSE — 1-2 sentences]
The line the whole post was pointing at. Should earn a save.

[CTA — 2 sentences]
Role + the one unusual thing + role is open / link.
```

---

### 2. Voice rules (apply to every post, no exceptions)

**Structure**
- Line break between every paragraph
- 1-3 sentences per paragraph
- No headers, no bullet lists inside the post
- Numbers as digits: "4 campaigns", not "four campaigns"
- Parentheticals in actual brackets for aside voice

**What to cut**
- Em dashes — replace with a period and a new sentence every time
- Banned vocabulary: passionate, leverage, utilize, harness, foster, streamline, robust, cultivate, garner, underscore, fundamentally, essentially, ultimately, crucially, notably, game-changer, thought leader, thrilled, excited to share
- Throat-clearing openers: "Here's the thing:", "The truth is,", "I'll be honest", "The reality is"
- Binary contrast patterns: "Not X. But Y." — rewrite as a direct positive claim
- Dramatic fragmentation: isolated 1-2 word sentences used as a rhetorical move — fold into a real sentence
- Rhetorical setups: "Here's what I mean:", "What this tells us is:", "What if I told you" — delete the setup, state the point directly
- Cliché closers: "What do you think?", "Tag someone who needs this", "Drop a comment below"

**What to add**
Per 100 words, verify at least:
- 1 specific number
- 1 named entity (person, company, place, product)
- 1 first-person concrete detail ("I asked", "I read", "I pulled up the docs")

**Sentence rhythm**
No 3 consecutive sentences of roughly the same length. Every section needs at least one sentence under 7 words and one over 20 words. Uniform length is an AI tell.

**Hook window**
LinkedIn renders 210 characters before "...see more" on mobile. Count the first 210 characters. The hook must create tension or imply a gap before that cut. If it doesn't pull the reader through, rewrite the first two lines.

**The close**
The close is where the real thing lands. It should feel like the post was always moving toward this one line. Test: read only the last two lines before the CTA. If they don't land without context, sharpen them.

What works:
- A reframe of the opening that lands differently now
- A conviction stated plainly
- An implication: what it means if this person is who you say they are

What doesn't:
- Restating the lesson already made in the body
- A question to prompt engagement
- Generic forward-looking lines ("can't wait to see what comes next")

---

### 3. Reference posts

**The canonical example (Approach B — Time-Anchor):**

> A few weeks into his internship at Voltade, Jared Kong got on a call with an angry customer.
>
> It escalated to the point where the customer threatened to report him to his boss.
>
> I checked in on him afterwards, expecting to do damage control.
>
> But he shrugged it off. He'd worked in a call center before, so one unhappy caller wasn't going to ruin his week. He stayed calm and professional the whole way through.
>
> (We parted ways with that customer in the end. Jared was not the problem.)
>
> Most companies would never put a software engineering intern anywhere near that call. Honestly, I felt a bit bad that we did.
>
> But our intern JD literally says "you'll be thrown into the deep end" and "talking directly to SME owners from day one." I wrote those lines. Jared is the proof we meant them.
>
> In his 5 months with us, he shipped 4 systems to production, including 2 AI chatbots talking directly to customers. One sends hundreds of clinic reminders a day. Another handles thousands of enquiries a week.
>
> On his last day with us, he said: "sometimes the hacky approach becomes the permanent way people use it".
>
> AI adoption is messier than it sounds, and nothing beats hands-on learning.
>
> Voltade is hiring our next Software Engineer Intern. If this sounds like your kind of internship, the role is open.

---

**Approach A example (Curiosity-Gap / Portrait — Marketing):**

> [Name] sent me a message at 11pm on a Wednesday.
>
> It wasn't urgent. She wanted to know if the positioning angle we were using for [Product] was the same one we'd tested six months ago, and if so, why.
>
> She'd been with us three weeks.
>
> I pulled up the docs. She was right. We'd run the same angle before and the numbers had been flat. Nobody had flagged it before the brief went to the designer.
>
> (We caught it in time. [Name] was not supposed to be the one who caught it.)
>
> Our marketing JD says "you'll work on real campaigns, not hypothetical ones." That line is easy to put in a document. It's hard to actually mean. She's the reason we mean it.
>
> In [X] months, she ran [3] campaigns from brief to publish, wrote copy seen by [XX,000] people, and rebuilt our content calendar from scratch. One post she drafted brought in [X] inbound leads the week it went live.
>
> She told me once: "most brands talk to their audience like they're explaining something, not saying something."
>
> Some people already know the difference before you teach it.
>
> [Company] is hiring our next Marketing Intern. The role is open.

---

**Approach C example (Contrarian / Take — Marketing):**

> Most marketing internships are about learning to use the tools.
>
> Scheduling posts. Resizing assets. Sitting in on calls where you're not sure why you're there.
>
> [Name] did those things. She also rewrote a campaign brief in her second week because she thought the angle was off.
>
> The brief had been approved. I read her version and sent it to the designer instead.
>
> (I told her it needed a few tweaks. It needed almost none.)
>
> Our JD says interns here work on campaigns with real consequences. That line has been in the doc for two years. [Name] is the first person who tested it inside the first month.
>
> In [X] months, she ran [3] campaigns end to end, wrote copy that reached [XX,000] people, and grew our LinkedIn page by [XX%]. One post she wrote in an afternoon became the top-performing piece of content we published all quarter.
>
> She told me: "I didn't expect to be making the actual decisions."
>
> The best marketing hires don't wait to be given a point of view. [Name] walked in with one.
>
> [Company] is hiring our next Marketing Intern. The role is open.

---

### 4. Present for review

Show the full draft. Then ask: "Does this read right? Any detail wrong, any line that doesn't sound like you?"

One round of edits. Show only the changed sections. Then: "Good to finalise?"

---

### 5. Deliver

1. The post in a code block, ready to paste into LinkedIn.
2. 3-5 hashtag suggestions (niche, not generic).
3. Reminder to @ the person in the post — LinkedIn's algorithm rewards it.
4. Optional: one alternative opening if a different approach would work equally well.
