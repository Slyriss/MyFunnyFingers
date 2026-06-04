---
name: content-planner
description: Weekly LinkedIn content calendar for Sean Lee Yang. Produces 4 post briefs for the week — each with a post type, hook formula, specific angle, and the key detail Sean needs to provide. Always load voice-profile/SKILL.md before generating output.
---

# Content Planner Skill

## What This Skill Produces

A 4-post week plan. Not generic topics — specific angles, matched post types, named hook formulas, and the exact detail Sean needs to supply before writing.

The plan staggers types and formulas so no two consecutive posts feel the same.

---

## Step 1: Load Context

Load `voice-profile/SKILL.md`. Review Sean's active themes:

- Shenzhen NOC internship and what living inside China's tech build feels like
- SME IT modernisation — what it actually takes to move a 20-person business off spreadsheets
- Enterprise vs startup mindset (SAP background vs current BD work)
- Training: Hyrox, compound lifts, sub-25 min 5K target
- People worth spotlighting — founders, operators, mentors he's encountered
- Building things: software, AI agents, pipelines

---

## Step 2: Intake

Ask Sean two things only:

1. **What's been on your mind this week?** Any experiences, conversations, frustrations, wins, or observations — however rough. List as many as you want.

2. **Anything you want to avoid?** Topics that feel overexposed, post types you've done too recently, anything you're not ready to write about yet.

Do not ask more than these two questions.

---

## Step 3: Build the Plan

Map Sean's raw inputs to 4 post briefs. Apply these sequencing rules:

- No two consecutive posts use the same post type
- No two consecutive posts use the same hook formula
- Start the week with a high-save format (Take or Insight with Contrarian or Odd-Precision hook) — best for algorithm reach early in the week
- Place the most personal post (Story or Milestone) mid-week (Wednesday) when engagement rates are highest
- End the week with something that drives comments — an Insight or Take with a slightly incomplete angle that invites responses

**Format each brief as:**

```
POST [N] — [Day]
Type: [post type]
Hook formula: [formula name]
Angle: [one specific sentence — what this post argues or reveals]
Open with: [first line or first scene suggestion]
Key detail needed from Sean: [the one specific thing he needs to provide to make this post real]
Algorithm target: [Saves / Shares / Comments]
```

---

## Step 4: Sequence Check

Before delivering, verify:
- [ ] 4 posts, no two consecutive with same type or formula
- [ ] At least one Take or Insight (high save potential)
- [ ] At least one Story or Portrait (high share potential)
- [ ] At least one post rooted in Sean's Shenzhen or work context (his primary differentiator)
- [ ] Every angle is specific — not "talk about SME challenges" but "the specific moment an SME owner told you their biggest IT problem was their own team, not the software"
- [ ] Every "key detail needed" item is concrete — not "more context" but "the exact number, name, or scene"

---

## Timing Guidance

Append to the bottom of the plan:

**Best posting days:** Tuesday, Wednesday, Thursday
**Best window:** 7:30–9:00 AM local time
**Post-publish:** Reply to every comment within 60 minutes. At least 10 words per reply.

---

## Optional: Generate a Full Draft

If Sean wants to turn any brief into a full post immediately, run `content-linkedin/SKILL.md` on that brief — skip the intake questions since the brief already contains the angle and detail needed.
