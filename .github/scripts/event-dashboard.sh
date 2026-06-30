#!/usr/bin/env bash
set -euo pipefail

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  echo "Usage: $(basename "$0") [--help]"
  echo ""
  echo "Show ShoCode event status dashboard."
  echo "Requires 'gh' and 'jq' to be installed and authenticated."
  exit 0
fi

# Colors (disabled if not a terminal)
if [[ -t 1 ]]; then
  BOLD='\033[1m'
  CYAN='\033[36m'
  GREEN='\033[32m'
  YELLOW='\033[33m'
  MAGENTA='\033[35m'
  RESET='\033[0m'
else
  BOLD='' CYAN='' GREEN='' YELLOW='' MAGENTA='' RESET=''
fi

echo -e "${BOLD}${CYAN}╔══════════════════════════════════════╗${RESET}"
echo -e "${BOLD}${CYAN}║      🏖️  ShoCode Event Dashboard     ║${RESET}"
echo -e "${BOLD}${CYAN}╚══════════════════════════════════════╝${RESET}"
echo ""

# --- Registrations ---
merged=$(gh pr list --label registration --state merged --json number | jq length)
open=$(gh pr list --label registration --state open --json number | jq length)

echo -e "${BOLD}${GREEN}📋 Registrations${RESET}"
echo -e "   Confirmed:  ${BOLD}$merged${RESET}"
echo -e "   Pending:    ${BOLD}$open${RESET}"
echo ""

# --- Open issues by label ---
echo -e "${BOLD}${YELLOW}📌 Open Issues by Label${RESET}"
for label in logistics speaker content tooling sponsor; do
  count=$(gh issue list --label "$label" --state open --json number | jq length)
  echo -e "   ${MAGENTA}$label${RESET}: $count"
done
echo ""

echo -e "${BOLD}${CYAN}──────────────────────────────────────${RESET}"
echo -e "Run with ${BOLD}--help${RESET} for usage info."
