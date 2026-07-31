# project-x-vibe-skills

> From learning how to code -> to building something real.

A curated set of AI agent skills by [Project X Vietnam](https://projectxvietnam.org) to help you go from idea -> build -> test -> ship with AI.

AI agent skills for vibe coding your own project — clone this, install the skills, and AI agent will pick them up automatically based on what you ask for.

## Install

```bash
git clone https://Project-X-Vietnam/project-x-vibe-skills
cd project-x-vibe-skills
./setup.sh
```

This copies every skill into `~/.claude/skills/`, `~/.codex/skills/`, or any agents so they're available in **any** project you open — not just this one.

Restart your AI agent or start a new session afterward to pick them up.

## Update

```bash
git pull
./setup.sh
```

Re-running `setup.sh` overwrites the installed copies with whatever is currently in `skills/`.

## Skills in this repo

| Skill | Use it when... |
|-------|-----------------|
| `problem-statement` | You have an idea but haven't nailed down what you're building or what "done" looks like |
| `ai-prompting` | You're about to ask the AI for code, or its output isn't matching what you wanted |
| `debugging-basics` | Something's broken and you don't know how to describe it precisely |
| `planning` | A feature is big enough to need breaking into phases |
| `feature-dev` | Building a new page, component, or integration |
| `web-test` | Verifying a page/feature works in the browser |
| `review-pr` | Reviewing code before merging |
| `git-commit` | Committing, branching, and opening PRs |
| `memory` | Recording decisions and context so future-you (or the AI) remembers why |

You don't need to invoke these by name — just describe what you're trying to do, and AI agent will use the matching skill.
