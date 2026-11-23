#!/usr/bin/env bash
# Usage: ./publish.sh <github-username-or-org> <contact-email>
# Replaces placeholders, commits, and pushes to github.com/<user>/openair-kz
set -euo pipefail
ORG="${1:?GitHub username/org required}"
EMAIL="${2:?contact email required}"

grep -rl --exclude-dir=.git --exclude=publish.sh "REPLACE_" . | while read -r f; do
  sed -i.bak -e "s/REPLACE_ORG/${ORG}/g" -e "s/REPLACE_CONTACT_EMAIL/${EMAIL}/g" "$f" && rm -f "$f.bak"
done

git init -b main
git add .
git commit -m "Initial commit: OpenAir KZ (DPG-ready repository)"

if command -v gh >/dev/null 2>&1; then
  gh repo create "${ORG}/openair-kz" --public --source=. --remote=origin --push \
    --description "Open source air-quality monitoring platform for Kazakhstan"
else
  git remote add origin "https://github.com/${ORG}/openair-kz.git"
  echo "Create an EMPTY public repo 'openair-kz' on github.com, then run: git push -u origin main"
fi
