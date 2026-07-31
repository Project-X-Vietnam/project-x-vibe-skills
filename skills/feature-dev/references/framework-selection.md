# Framework Selection

Use this guide only for a new project or an explicit migration. For an existing codebase, preserve its current stack unless there is a clear, approved reason to change it.

| Project need | Default choice | Notes |
|---|---|---|
| Full-stack React app with SEO, server rendering, and routing | React + Next.js | Use the current stable Next.js release and its App Router conventions. |
| Client-rendered dashboard, tool, or embedded widget | React + Vite | Keep the app client-side unless server rendering solves a real requirement. |
| Content-first site, blog, or marketing site | Astro | Add interactive islands only where needed. |
| Vue application | Vue + Nuxt | Follow the existing Vue/Nuxt conventions when present. |
| Small, performance-focused reactive app | Svelte + SvelteKit | Prefer it when the team wants Svelte, not merely because it is new. |

## Shared Defaults

- Use TypeScript for non-trivial applications.
- Use the framework's current, documented scaffolder and stable release; verify versions before installation instead of pinning versions in this guide.
- Use Tailwind CSS when utility-first styling suits the project. For Tailwind v4+, define design tokens in CSS with theme variables; do not require a JavaScript config file.
- Use a component system only when it fits the chosen stack. shadcn/ui provides source-owned components and supports multiple frameworks; do not install it solely out of habit.
- Prefer CSS container queries, responsive layout, semantic HTML, and reduced-motion support before adding UI or animation dependencies.
- Use Playwright for end-to-end browser checks and the stack's conventional unit-test runner when unit tests are needed.

## Migration Guardrails

- Do not migrate a framework as part of a feature request.
- Establish the user-visible reason, supported deployment target, migration scope, and rollback plan before proposing a migration.
- Upgrade one major dependency at a time and follow its official migration guide.
