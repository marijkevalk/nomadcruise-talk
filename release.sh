#!/usr/bin/env bash
# Release the deck to Atlas — only from a clean, committed state, and push the backup.
set -euo pipefail
cd "$(dirname "$0")"

if [ -n "$(git status --porcelain)" ]; then
  echo "release blocked: working tree is not clean — commit first" >&2
  exit 1
fi

npm run export:all
cp dist/ai-is-not-magic.pdf dist/ai-is-not-magic.pptx dist/ai-is-not-magic-notes.pdf \
   "${ATLAS_ROOT:-/root/atlas}/ai_nomadcruise_talk_assets/"
git push
echo "released to Atlas + pushed to GitHub"
