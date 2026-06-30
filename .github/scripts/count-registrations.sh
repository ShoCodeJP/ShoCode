#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  echo "Usage: $(basename "$0") [--help]"
  echo ""
  echo "Count confirmed ShoCode registrations (merged registration PRs)."
  echo "Requires 'gh' and 'jq' to be installed and authenticated."
  exit 0
fi

count=$(gh pr list --label registration --state merged --json number | jq length)
echo "🎫 Registered attendees: $count"
