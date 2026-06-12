---
name: linkedin-hiring-post
description: Generate LinkedIn hiring posts in the Voltade storytelling format — opens with a specific incident that reveals the candidate's character, follows through with concrete metrics, ends with a hiring CTA. Story-first, no corporate speak, honest and specific. Use when the user wants to write a LinkedIn post to hire or celebrate a team member, intern, or employee. Trigger: /linkedin-hiring-post
---

# LinkedIn Hiring Post Generator

Turn a person's story into a LinkedIn hiring post that leads with a real moment, not a resume summary. The format is proven: specific incident → honest reaction → the reveal → achievements → quote → insight → CTA.

## Why this format works

Generic hiring posts ("We're looking for a passionate team player...") die in the feed. Posts that open with a specific story — one unhappy customer call, one late-night deploy, one unusual question — earn reads because they feel like a person wrote them, not a company. The hiring CTA at the end lands harder because the reader already believes you.

This format works whether the person is still with you (celebrate + CTA for similar candidates) or leaving (send-off + CTA for their replacement). Both have the same structure.

---

## Workflow

### 0. Run the discovery interview (always — skip nothing)

Before writing a word, ask these questions in a single `AskUserQuestion` call. The post lives or dies on specific details; generalities produce forgettable copy.

Ask all of these:

1. **The person**: Name, role, duration (e.g. "5-month intern", "2-year engineer"). Are they still at the company or have they left?

2. **The moment**: One specific incident that shows their character — a difficult call, an unexpected solution, a decision under pressure, a question they asked that surprised you. This becomes the opening scene. If the user already shared this, confirm: "Is this the scene you want to open with, or is there a better one?"

3. **The achievement list**: Concrete, metric-backed output. Systems shipped, customers served, scale (hundreds/thousands/millions), AI models deployed, revenue influenced. The more specific the better. Even rough numbers beat vague superlatives.

4. **Their best quote**: Something they said in their own words — about the work, about learning, about the company. Not a compliment to you; something that reveals how they think. If the user doesn't have one, ask: "Did they say anything memorable about the work or the experience?"

5. **What you're hiring for**: The exact role title and one line on what makes this company/internship unusual. What does your JD actually promise that others don't?

6. **Tone notes**: Any constraints? (British/American English, first-person vs third, formal/casual, keep it under X words, include a specific hashtag, etc.)

Wait for answers before writing anything.

---

### 1. Analyse the inputs

From the answers, identify:
- **The opening scene**: the most specific, most human moment. It should have a setting, a tension, and a resolution or reveal.
- **The contrast**: what you expected vs. what happened. This is the structural engine of the post — it creates a micro-story arc in the first three paragraphs.
- **The parenthetical**: one honest aside that shows fairness or self-awareness (e.g. "I felt a bit bad that we did", "we parted ways with that customer in the end"). This makes the writer sound human, not a PR department.
- **The proof point**: the JD claim or company promise that this person's story validates. Ideally quote your own JD or onboarding doc.
- **The metrics block**: convert the achievements into one compact paragraph — count of systems, volume of interactions, AI models, etc. Lead with the most impressive number.
- **The quote**: use verbatim if given; paraphrase only if it needs tightening. Always keep the cadence of how they actually speak.
- **The insight**: one-line philosophical takeaway about the work, the industry, or what you learned. Should feel earned, not generic.
- **The CTA**: role title + what makes the opportunity unusual + where to apply (link or "role is open" if no link given).

---

### 2. Draft the post

Write the post in this exact sequence. No headers, no bullet lists — plain prose, short paragraphs.

```
[OPENING SCENE — 2-3 sentences]
Set the incident. Be specific: who, what happened, where in the timeline.

[YOUR REACTION / EXPECTATION — 1-2 sentences]
What you expected to happen or how you felt walking into it.

[THE REVEAL — 2-3 sentences]
What actually happened. The contrast that earns the reader's respect for the person.

[(PARENTHETICAL ASIDE) — 1 sentence in brackets]
One honest, self-aware note: shows fairness, shows you're not just cheerleading.

[COMPANY PROOF — 2-3 sentences]
Quote or paraphrase your JD/onboarding doc. Show this person is the proof you meant it.

[ACHIEVEMENTS — 2-4 sentences]
Specific numbers. Systems. Customers. Scale. One compact paragraph.

[DIRECT QUOTE — 1 sentence, set off on its own line]
Their words. Keep it short. The more specific and slightly-surprising the better.

[INSIGHT — 1-2 sentences]
The philosophical takeaway. What this tells you about the work, AI adoption, internships, etc.

[CTA — 2-3 sentences]
Company is hiring [role]. One line on what makes it unusual. Role is open / link.
```

**Word count target**: 200–350 words. Long enough to tell the story, short enough to finish on mobile.

**Style rules (non-negotiable):**
- First person throughout ("I checked in", "I wrote those lines")
- Short paragraphs: 1-3 sentences each
- No corporate buzzwords: no "passionate", "team player", "world-class", "leverage", "synergy", "thrilled"
- No em dashes — use a period and a new sentence instead
- Numbers as digits, not words ("4 systems", not "four systems")
- Parentheticals in actual brackets for aside voice
- The quote gets its own line, no attribution needed if the person's name is already in the post

---

### 3. Present for review

Show the full draft inline. Then ask:

"Does this read right? Any details to change, any metric I got wrong, or anything that doesn't sound like you?"

Make one round of edits based on feedback. Show only changed sections.

Then ask: "Good to finalise?"

---

### 4. Deliver the final post

Once approved, deliver:

1. **The post** in a code block for easy copy-paste into LinkedIn.
2. **Optional caption notes**: if the user wants to add hashtags or tag the person — suggest 3-5 niche hashtags (e.g. `#softwaredevelopment #internship #AIadoption`) and remind them to @ the person in the post itself (LinkedIn's algorithm rewards it).
3. **One alternative opening** (optional): if the scene could be told from a different angle, offer one swapped version of just the first paragraph.

---

## Reference post (the canonical example)

This is the post that established the format. When in doubt, match its length, voice, and structure:

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

**What makes it work:**
- Paragraph 1: scene, specific person, specific incident
- Paragraphs 2-4: escalation → expected reaction → the reveal (contrast)
- Paragraph 5: parenthetical aside in brackets (honest, fair, humanising)
- Paragraphs 6-7: company culture proof via JD quote
- Paragraph 8: achievements with real metrics
- Paragraph 9: direct quote, one line, set off alone
- Paragraph 10: one-line insight about the industry
- Paragraph 11: CTA, two sentences

Total: ~230 words.
