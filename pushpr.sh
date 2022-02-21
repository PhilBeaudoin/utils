#!/usr/local/bin/bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
BAD_BRANCHES=("master" "dev" "test" "prod")

for BAD_BRANCH in "${BAD_BRANCHES[@]}"; do
  if [ "${BRANCH,,}" = "${BAD_BRANCH,,}" ]; then
    echo "Cannot push ${BRANCH}. Did you create a branch?"
    exit 1
  fi
done

git push --force --set-upstream origin "${BRANCH}"
