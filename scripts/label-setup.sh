#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  echo "Usage: $(basename "$0") [--help]"
  echo ""
  echo "Creates or updates the ShoCode label taxonomy using the GitHub CLI."
  echo "Requires 'gh' to be installed and authenticated."
  exit 0
fi

labels=(
  "registration|#0E8A16|Registration profile PR"
  "registration:presenter|#1D76DB|Presenter registration"
  "registration:hacker|#5319E7|Hacker registration"
  "registration:both|#D93F0B|Presenter + Hacker registration"
  "registration:attendee|#FBCA04|Attendee registration"
  "needs-jp-update|#E4E669|Japanese content needs updating"
  "needs-en-update|#E4E669|English content needs updating"
  "needs-translation|#E4E669|Content needs translation"
  "content|#C5DEF5|Content related"
  "tooling|#BFD4F2|Tooling and infrastructure"
  "logistics|#F9D0C4|Event logistics"
  "speaker|#0075CA|Speaker related"
  "sponsor|#006B75|Sponsor related"
  "copilot-created|#10B981|Created by GitHub Copilot"
  "bug|#D73A4A|Something isn't working"
  "enhancement|#A2EEEF|New feature or request"
  "question|#D876E3|Further information is requested"
)

for entry in "${labels[@]}"; do
  IFS='|' read -r name color description <<< "$entry"
  echo "Creating label: $name ($color)"
  gh label create "$name" --color "${color#\#}" --description "$description" --force
done

echo "Done. All labels created/updated."
