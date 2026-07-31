---
name: ai-prompting
description: How to prompt an AI coding assistant effectively as a vibe coder — give context, iterate in small steps, and know when to push back. Triggers on "how do I ask", "vibe code this", "prompt the AI", "AI isn't doing what I want".
---

# AI Prompting

Habits for getting good results from an AI coding assistant, and for noticing when a conversation has gone off the rails.

## When to Use

- Any time you're about to ask the AI to write or change code
- When the AI's output isn't matching what you wanted

## When NOT to Use

- You already have a precise technical spec ready — just paste it in directly

## Core Principles

- Context beats cleverness: tell the AI the goal and constraints, not just the command
- One change at a time — big multi-part asks produce big, hard-to-review diffs
- You must be able to explain what changed, even if you didn't write it — ask the AI to explain in plain language if you can't
- Never accept code silently — try it before moving on
- Treat the AI as a fast junior partner: capable, but needs clear direction and checking

## Good Prompt Template

```
Goal: [what you want to happen]
Context: [relevant file/feature/problem statement]
Constraints: [must keep X working, don't touch Y, keep it simple]
Example (optional): [what "good" looks like]
```

## After the AI Responds — Checklist

- [ ] Read the summary of what it changed
- [ ] Run it / try the feature yourself
- [ ] Ask "explain what you changed and why" if anything is unclear
- [ ] Check it against the "Done means" test in `docs/features/problem-statement.md` (see `problem-statement` / `memory`)

## Red Flags (Stop and Reset)

- **Going back and forth 3+ times on the same issue with no progress** → stop guessing fixes, describe the actual symptom instead (see `debugging-basics`)
- **The AI says it fixed something but you didn't verify it yourself** → always verify before moving on
- **Your prompt has grown into a paragraph covering 5 different asks** → split it into separate prompts, one at a time
- **You don't understand what the code does at all** → ask for a plain-language walkthrough before continuing

## Related Skills

| Skill | When to Chain |
|-------|--------------|
| problem-statement | Have this ready before your first prompt |
| memory | Re-read the saved brief if you've lost track of the plan |
| debugging-basics | When the AI's output doesn't work as expected |
| feature-dev | For larger, multi-file builds once scoped |
