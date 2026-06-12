# AI-first workflow demo

This repository demonstrates our proposed AI-first project workflow.

## Purpose

This repo shows how we want to work with:

- GitHub as the source of truth;
- branches and pull requests;
- human review before merge;
- shared AI context through Markdown files;
- clear rules for AI and sensitive data.

## Workflow

Work should follow:

Issue → branch → pull request → review → merge

No direct pushes to `main`.

## Important files

- `PROJECT.md` — project scope, roles and data rules
- `AGENTS.md` — shared AI context for all tools
- `CLAUDE.md` — Claude-specific adapter
- `HANDOVER.md` — current status and next steps
- `docs/adr/` — project decisions
- `.github/pull_request_template.md` — review checklist

## Demo goal

This repository is not a production project. It is a practical demo for showing how our team can organize AI-assisted work in GitHub.
