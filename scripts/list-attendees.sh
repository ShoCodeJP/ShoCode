#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  echo "Usage: $(basename "$0") [--help]"
  echo ""
  echo "List all confirmed ShoCode attendees from merged registration PRs."
  echo "Requires 'gh' and 'jq' to be installed and authenticated."
  exit 0
fi

data=$(gh pr list --label registration --state merged --json number,author,title,mergedAt \
  --jq '.[] | [.number, .author.login, .title, (.mergedAt[:10])] | @tsv')

if [[ -z "$data" ]]; then
  echo "No confirmed registrations yet."
  exit 0
fi

printf "%-6s  %-20s  %-40s  %-12s\n" "PR#" "Author" "Title" "Merged"
printf "%-6s  %-20s  %-40s  %-12s\n" "------" "--------------------" "----------------------------------------" "------------"
echo "$data" | while IFS=$'\t' read -r number author title merged; do
  printf "%-6s  %-20s  %-40s  %-12s\n" "#$number" "@$author" "$title" "$merged"
done
