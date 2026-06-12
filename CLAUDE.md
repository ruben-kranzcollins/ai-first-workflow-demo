@AGENTS.md

# Claude-specific instructions

Read `AGENTS.md` first. It is the source of truth for project rules.

For this repository:

- start with a short plan for non-trivial tasks;
- keep changes small and reviewable;
- do not push, merge or deploy without explicit human approval;
- do not install packages without approval;
- do not read `.env` files or secrets;
- do not perform destructive git actions;
- suggest documentation updates when project context changes;
- if a structural decision changes, suggest an ADR update.

This file should stay thin. Shared rules belong in `AGENTS.md`.
