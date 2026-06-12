# Recommended GitHub branch protection settings

For the demo and pilot, protect `main`.

Recommended settings:

- Require a pull request before merging
- Require approvals: 1
- Require conversation resolution before merging
- Do not allow force pushes
- Do not allow deletions

Optional later:

- Require status checks to pass before merging
- Require branches to be up to date before merging
- Require signed commits
- CODEOWNERS
- GitHub Actions CI

## What each setting does

### Require a pull request before merging

Nobody can push directly to `main`. Every change — human or AI-assisted — must go through a pull request, so there is always a visible diff and a place to discuss it before it lands.

### Require approvals: 1

At least one other person must click "Approve" before the merge button works. This is the human-review guarantee: AI can propose changes, but a human always signs off.

### Require conversation resolution before merging

If a reviewer leaves a comment, the PR cannot be merged until that comment is marked as resolved. Feedback cannot be silently ignored.

### Do not allow force pushes

History on `main` cannot be rewritten. What was merged stays visible forever, which keeps the review history trustworthy.

### Do not allow deletions

The `main` branch cannot be deleted, by accident or otherwise.

## Optional settings, explained

### Require status checks to pass before merging

If you add automated tests or linters later (CI), GitHub blocks the merge until they pass. Useful once there is real code.

### Require branches to be up to date before merging

The branch must contain the latest `main` before merging, so tests run against the actual end result. Adds friction; only worth it with CI.

### Require signed commits

Every commit must be cryptographically signed, proving who made it. Stronger guarantees, more setup per developer.

### CODEOWNERS

A file that maps folders to owners; GitHub then automatically requests review from the right person (e.g. the Security/Privacy Owner for `docs/`).

### GitHub Actions CI

Automated checks (tests, linting, secret scanning) that run on every PR. A logical next step after the pilot.

## Where to configure this

GitHub → repository → **Settings → Branches → Add branch protection rule**, branch name pattern `main`.
Newer repos can use **Settings → Rules → Rulesets** instead; the options are equivalent.
