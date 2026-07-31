# project-x-vibe-skills

> From learning how to code -> to building something real.

A curated set of AI agent skills by [Project X Vietnam](https://projectxvietnam.org) to help you go from idea -> build -> test -> ship with AI.

AI agent skills for vibe coding your own project — clone this, install the skills, and AI agent will pick them up automatically based on what you ask for.

## Install

```bash
git clone https://github.com/Project-X-Vietnam/project-x-vibe-skills
cd project-x-vibe-skills
./setup.sh
```

By default, this copies every skill to `~/.agents/skills/`. Set `SKILLS_DEST` to install into a particular agent's skill directory:

```bash
# Codex
SKILLS_DEST="$HOME/.codex/skills" ./setup.sh

# Claude Code
SKILLS_DEST="$HOME/.claude/skills" ./setup.sh
```

The installer replaces only same-named skills at the selected destination. Restart the relevant AI agent or start a new session afterward.

## Update an installed copy

```bash
git pull
./setup.sh
```

Re-run the same command you used for installation. For example, use `SKILLS_DEST="$HOME/.codex/skills" ./setup.sh` to refresh Codex's copy. The installer replaces each matching skill with the version from `skills/`.

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
