# ADR-0001 Project foundation

## Status

Accepted

## Date

2026-06-12

## Context

The team wants to use AI more consistently without losing project knowledge in private chats, local files or personal tool settings.

The team needs a lightweight workflow that keeps work visible, reviewable and safe.

## Decision

We use GitHub as the source of truth for:

- code;
- project context;
- AI instructions;
- decisions;
- handover;
- review history.

The basic workflow is:

Issue → branch → pull request → review → merge

We use:

- `README.md` as the human starting point;
- `PROJECT.md` for scope, roles and data rules;
- `AGENTS.md` as the shared AI context;
- `CLAUDE.md` as the Claude-specific adapter;
- `HANDOVER.md` for current status and transfer;
- `.github/pull_request_template.md` for PR review.

## Consequences

Positive:

- project context is shared;
- AI tools get the same instructions;
- changes are reviewable;
- handover becomes easier;
- sensitive data rules are explicit.

Trade-offs:

- the team must keep a small set of Markdown files up to date;
- changes take a bit more structure than working directly in a private chat;
- PR review becomes mandatory before merge.
