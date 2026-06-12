#!/usr/bin/env bash
set -euo pipefail

BRANCH_NAME="docs/1-demo-first-change"

git checkout main
git pull --ff-only || true
git checkout -b "$BRANCH_NAME"

cat > src/demo.txt <<'EOF'
This file was changed in a separate branch to demonstrate our pull request workflow.
EOF

git add src/demo.txt
git commit -m "docs: add first demo workflow change"

echo "Demo branch created: $BRANCH_NAME"
echo "Next step: push this branch and open a pull request."
echo "Command: git push -u origin $BRANCH_NAME"
