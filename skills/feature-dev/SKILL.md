---
name: feature-dev
description: End-to-end, stack-aware feature implementation workflow. Use when implementing a new page, component, integration, or multi-file feature; preserve the existing project's framework and conventions, or choose a suitable modern stack for a new project.
---

# Feature Development

A structured 7-phase workflow for implementing features from discovery to completion.

## When to Use

- Implementing a new page or section
- Adding a significant component or feature
- Building an integration (API, form, etc.)
- Any task that touches 3+ files

## When NOT to Use

- Bug fixes (just fix directly)
- Simple text/style changes
- Adding a single small component

## Core Principles

- Preserve the existing stack, architecture, design system, and package manager unless the user asks to change them
- Reuse existing components before creating new ones
- Use design tokens and semantic HTML; build mobile-first responsive layouts
- Prefer platform capabilities and CSS for simple visual effects; add an animation library only when it materially improves the experience
- Choose a framework only for a new project or an explicitly requested migration; read `references/framework-selection.md` when making that choice

## The 7 Phases

### Phase 1: Discovery

**Goal**: Understand what needs to be built.

1. Read the user's request carefully
2. Identify the feature's purpose and scope
3. List expected deliverables (pages, components, API routes)
4. Identify any external dependencies or data sources

### Phase 2: Exploration

**Goal**: Understand the existing codebase context.

**Actions**:
1. Read `AGENTS.md` for architecture overview
2. Inspect the project manifest, lockfile, app entry points, and existing configuration to identify the framework, router, styling, test runner, and package manager
3. Identify similar existing implementations and reusable primitives/components
4. Find design tokens in CSS variables, theme files, component libraries, or framework configuration; do not assume a `tailwind.config.*` file exists
5. For a new project with no established stack, select one using `references/framework-selection.md` and state the reason briefly

**Output**: List of reusable code and patterns found.

### Phase 3: Questions

**Goal**: Resolve ambiguity before coding.

1. List any unclear requirements
2. Ask the user targeted questions (max 3-5)
3. Propose defaults for minor decisions
4. Confirm the approach before proceeding

### Phase 4: Architecture

**Goal**: Design the solution structure.

**Actions**:
1. Define the component tree
2. List new files to create and existing files to modify
3. Define TypeScript interfaces for data shapes
4. Plan the responsive layout (mobile → desktop)
5. Plan animations and transitions

**Output**: Component tree + file list + key interfaces.

### Phase 5: Implementation

**Goal**: Write the code.

**Order**:
1. Types/interfaces
2. Utility functions (`lib/`)
3. UI components (bottom-up: primitives → composites → page)
4. Page assembly
5. API routes (if needed)
6. Animations (last)

**Rules**:
- Follow the framework's rendering and client-boundary conventions (for example, use `"use client"` only where required in Next.js)
- Reuse the project's component primitives; use shadcn/ui only when it is already present or explicitly selected
- Follow the project's established styling and conditional-class patterns
- Prefer CSS transitions, `prefers-reduced-motion`, and native platform APIs for simple effects; use a compatible animation library only when needed
- Test each component as you build

### Phase 6: Review

**Goal**: Self-review the implementation.

**Checklist**:
- [ ] TypeScript: no `any` types, proper interfaces
- [ ] Responsive: works on mobile (320px), tablet (768px), desktop (1280px)
- [ ] Design system: uses the project's tokens, typography, and components
- [ ] Components: reuses existing primitives before adding dependencies
- [ ] Accessibility: alt text, semantic HTML, keyboard navigation
- [ ] Performance: images optimized, no unnecessary re-renders
- [ ] Animations: smooth, no layout shifts, and reduced-motion friendly

### Phase 7: Summary

**Goal**: Report what was built.

**Output**:
- Files created/modified
- Components added
- Key decisions made
- Any follow-up tasks or known limitations

## Related Skills

| Skill | When to Chain |
|-------|--------------|
| planning | Before feature-dev, to break a large feature into phases |
| web-test | After feature-dev, to test in browser |
| review-pr | After feature-dev, to review code quality |
| git-commit | After feature-dev, to commit and push |
