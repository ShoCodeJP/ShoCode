#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  echo "Usage: $(basename "$0") [--help]"
  echo ""
  echo "List open registration PRs awaiting review."
  echo "Requires 'gh' and 'jq' to be installed and authenticated."
  exit 0
fi

data=$(gh pr list --label registration --state open --json number,author,title,createdAt \
  --jq '.[] | [.number, .author.login, .title, (.createdAt[:10])] | @tsv')

if [[ -z "$data" ]]; then
  echo "No open registration PRs."
  exit 0
fi

printf "%-6s  %-20s  %-40s  %-12s\n" "PR#" "Author" "Title" "Created"
printf "%-6s  %-20s  %-40s  %-12s\n" "------" "--------------------" "----------------------------------------" "------------"
echo "$data" | while IFS=$'\t' read -r number author title created; do
  printf "%-6s  %-20s  %-40s  %-12s\n" "#$number" "@$author" "$title" "$created"
done
