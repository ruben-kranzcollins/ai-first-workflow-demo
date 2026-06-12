# AGENTS.md

This file is the shared AI context for this repository.

## Project overview

This is a demo repository for our AI-first workflow.

The goal is to show how humans and AI tools can work from the same project context while keeping changes visible, reviewable and safe.

## Workflow rules

- GitHub is the source of truth.
- Work through issue → branch → pull request → review → merge.
- Do not push directly to `main`.
- Keep pull requests small and reviewable.
- Mention AI use in the pull request template.
- A human must review and merge every change.
- Important project knowledge must be written back to the repo.

## Folder structure

- `src/` — demo project files
- `docs/adr/` — decision records
- `.github/` — GitHub templates and workflow files
- `demo/` — demo instructions and screenshot checklist
- `README.md` — human starting point
- `PROJECT.md` — scope, roles and data rules
- `HANDOVER.md` — current status and next steps

## Folder rules

- Do not create new top-level folders without a clear reason.
- Keep demo files in `src/`.
- Put documentation in `docs/`.
- Put project decisions in `docs/adr/`.
- Put GitHub-specific templates in `.github/`.
- Do not edit generated files manually.

## Design rules

For this demo, keep design and branding simple.

- Use existing project wording.
- Do not introduce random branding or visual styles.
- If a real UI project is added later, create `docs/DESIGN_LANGUAGE.md`.
- Follow the linked Figma or design source when available.
- Avoid one-off UI patterns.

## Safety rules

Never include:

- secrets;
- API keys;
- `.env` values;
- PII;
- client data;
- production data;
- contracts;
- raw logs;
- database dumps.

Use dummy examples only.

## Expected AI behavior

When assisting in this repository:

- read `README.md`, `PROJECT.md`, `AGENTS.md` and `HANDOVER.md` first;
- make small changes;
- explain assumptions;
- suggest documentation updates when context changes;
- never self-merge;
- never bypass review;
- ask before risky or destructive actions.
