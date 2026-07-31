---
name: problem-statement
description: Define what you're building and what "done" looks like before you start vibe coding. Triggers on "I want to build", "new project idea", "what should I build", "help me plan this out", "not sure where to start".
---

# Problem Statement

A structured way to turn a vague idea into a clear, checkable brief before you write your first AI prompt.

## When to Use

- Starting any new personal project or app idea
- A feature idea that's vague or hard to describe
- Before your first prompt to the AI, or before running `planning`/`feature-dev`

## When NOT to Use

- Trivial one-off asks ("fix this typo", "change this color")
- Mid-build small tweaks to something already scoped

## Core Principles

- Nail the problem before touching code — a clear ask produces far better AI output than a vague one
- "Done" must be checkable, not vibes ("users can create and delete a note", not "make a notes app")
- Keep the first version small enough to finish in one sitting
- Write it down — even 10 lines saves hours of confused back-and-forth with the AI

## The 6 Phases

### Phase 1: Capture the Idea

**Goal**: Say what you're building in plain language.

1. Write 1-2 sentences: what is it, who is it for
2. Don't mention tech stack or implementation yet — just the idea

### Phase 2: Define the Problem & User

**Goal**: Ground the idea in a real problem.

1. Who has this problem?
2. What do they do today without your app?
3. Why does it matter — what's the cost of the problem going unsolved?

### Phase 3: List Deliverables

**Goal**: Turn the idea into concrete, checkable outcomes.

1. Write a bullet list of things the finished thing must do
2. Each bullet should be checkable — you can look at the running app and say yes/no

### Phase 4: Cut Scope

**Goal**: Make v1 small enough to actually finish.

1. Mark each deliverable as must-have or nice-to-have
2. If you have more than ~5 must-haves, cut until you do
3. Move everything else to a "not doing yet" list — it's not gone, just later

### Phase 5: Write the One-Pager

**Goal**: Combine everything into a short, shareable brief — and save it so it outlives this conversation.

**Format**:

```markdown
# Project: [name]

## Problem
[Who has what problem, in 1-3 sentences]

## What I'm building
[1-2 sentences, plain language]

## Must work (v1)
- [ ] ...
- [ ] ...

## Not doing yet
- ...

## Done means
[The single sentence test: "I'll know this works when ___"]
```

**Save it**: write this to `docs/features/problem-statement.md` (the `memory` skill's convention for feature docs). A brief that only exists in this conversation disappears the moment the session ends — a saved file is what you and the AI check back against for the rest of the build.

### Phase 6: Confirm

**Goal**: Sanity-check before handing this to the AI.

1. Read the brief back to yourself
2. Ask: "Would I know it's done by this list?"
3. If yes, you're ready to prompt the AI. If no, go back to Phase 3, then re-save the file.

## Related Skills

| Skill | When to Chain |
|-------|--------------|
| memory | Save the brief to `docs/features/problem-statement.md` so it persists across sessions |
| ai-prompting | Turn this brief into your first prompt to the AI |
| planning | If the deliverables list is large, break it into phases |
| feature-dev | Once scoped, hand off to build |
