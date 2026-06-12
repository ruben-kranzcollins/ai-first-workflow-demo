# GitHub demo steps

This guide walks through the full demo: **issue → branch → pull request → review → merge**.

Legend:

- ✅ **Safe** — local only, changes nothing on GitHub.
- ⚠️ **Approval required** — creates or changes something on GitHub. Run only after explicit approval from the repo owner.

---

## 1. Create the repository or connect a remote

Option A — create a new private repo from this folder with GitHub CLI:

```bash
# ⚠️ Approval required — creates a repo on GitHub and pushes main
gh repo create ai-first-workflow-demo --private --source=. --remote=origin --push
```

Option B — connect an existing empty repo:

```bash
# ⚠️ Approval required — links and pushes to GitHub
git remote add origin https://github.com/<owner>/ai-first-workflow-demo.git
git push -u origin main
```

## 2. Push the first commit to `main`

If you used Option A above, this already happened. Otherwise:

```bash
# ⚠️ Approval required — pushes to GitHub
git push -u origin main
```

This is the **only** direct push to `main`. After branch protection is enabled, all changes go through pull requests.

## 3. Set up branch protection

Do this in the GitHub web UI (no CLI command needed):

1. Go to **Settings → Branches → Add branch protection rule** (or **Settings → Rules → Rulesets**).
2. Branch name pattern: `main`.
3. Apply the settings from [`demo/branch-protection-settings.md`](branch-protection-settings.md).
4. Save.

📸 Take the screenshots from the checklist here.

## 4. Create the demo issue

```bash
# ⚠️ Approval required — creates an issue on GitHub
gh issue create --title "Add first demo workflow change" --body-file demo/demo-issue.md
```

Or create it in the web UI with the same title and the text from `demo/demo-issue.md`. Note the issue number (normally `#1`).

## 5. Create a branch

```bash
# ✅ Safe — local only
git checkout main
git pull --ff-only
git checkout -b docs/1-demo-first-change
```

Or run the helper script, which does steps 5 and 6 in one go:

```bash
# ✅ Safe — local only (creates branch + commit, does NOT push)
./demo/create-demo-branch.sh
```

## 6. Make a small change in `src/demo.txt`

If you did not use the script, edit `src/demo.txt` manually and commit:

```bash
# ✅ Safe — local only
git add src/demo.txt
git commit -m "docs: add first demo workflow change"
```

## 7. Open a pull request

```bash
# ⚠️ Approval required — pushes the branch and opens a PR on GitHub
git push -u origin docs/1-demo-first-change
gh pr create --title "Add first demo workflow change" --body-file demo/demo-pr-body.md --base main --head docs/1-demo-first-change
```

## 8. Fill in the PR template

If you opened the PR in the web UI, the template from `.github/pull_request_template.md` loads automatically. Fill in all sections, especially **AI use** and **Safety check**. `demo/demo-pr-body.md` is a filled-in example.

Make sure the PR body contains `Closes #1` so the issue closes on merge.

## 9. Show that merge is blocked without review

Open the PR in the browser. The merge button is greyed out with the message *"Review required — at least 1 approving review is required"*.

📸 This is the most important screenshot of the demo: GitHub itself enforces the process.

## 10. Get a review

Ask a colleague (or a second account) to:

1. Open the PR → **Files changed**.
2. Check the diff and the filled-in template.
3. Click **Review changes → Approve → Submit review**.

Note: on a personal (non-organization) repo, the PR author cannot approve their own PR — you need a second person, which is exactly the point of the demo.

## 11. Merge into `main`

After approval the merge button turns green:

1. Click **Merge pull request → Confirm merge**.
2. Optionally delete the branch (GitHub offers this after merge).

## 12. Show that the issue closes

Go to the **Issues** tab: the demo issue is now closed automatically, because the PR body contained `Closes #1`. The issue page links to the merged PR — the full trace from idea to merged change.

---

## Demo run order (quick reference)

1. Repo overview + standard files (README, AGENTS.md, CLAUDE.md, PR template)
2. Branch protection settings on `main`
3. Issue → branch → small change
4. Open PR → template filled in
5. Merge blocked → review → approve → merge
6. Issue closed automatically
