---
name: debugging-basics
description: What to do when your vibe-coded app breaks or doesn't behave as expected, without a deep technical background. Triggers on "it's broken", "error", "not working", "this isn't doing what I want", "crash".
---

# Debugging Basics

A way to describe bugs precisely so the AI can actually fix them, instead of guessing.

## When to Use

- Something errors, crashes, or behaves differently than expected after AI-generated changes

## When NOT to Use

- You haven't tried running it yet — do that first
- The "bug" is actually a missing feature, not broken behavior — go back to `problem-statement`/`ai-prompting`

## Core Principles

- Don't ask the AI to "just fix it" without evidence — vague reports get vague (or wrong) fixes
- Isolate before you fix: what's the smallest thing that reproduces the problem?
- The error message is a clue, not noise — read it, even partially
- One hypothesis at a time — don't let the AI guess-and-check five things simultaneously
- If you just changed something and it broke, that change is your prime suspect

## Bug Report Template (Give This to the AI)

```
Expected: [what should happen]
Actual: [what actually happens]
Steps: [exactly what you did, in order]
Error message: [paste it verbatim, if any]
What changed recently: [last thing you or the AI touched]
```

## Escalation Ladder

1. Re-describe the exact symptom to the AI using the template above (not "fix this")
2. Ask the AI to isolate: "what's the smallest change that would reproduce this?"
3. Check what changed — `git diff` / undo the last change and retest
4. Search the exact error message text
5. Ask a fellow or mentor — bring the bug report template, not just "it's broken"

## Verify the Fix

- [ ] Re-run the exact steps from "Steps" above
- [ ] Confirm the original Expected result now happens
- [ ] Confirm you didn't break something else nearby

## Related Skills

| Skill | When to Chain |
|-------|--------------|
| ai-prompting | Use good-prompt habits once you have a fix direction |
| problem-statement | If the "bug" is really a missing or unclear requirement |
| git-commit | Once fixed and verified, commit the working state |
