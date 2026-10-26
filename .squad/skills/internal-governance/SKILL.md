# Internal-Content Governance — ShoCode

This skill defines the guardrails for handling internal, sensitive, and gated
content across the ShoCode repos. Read before touching sponsor, budget, venue,
partner, or gated program files.

## Two-Repo Split

| Repo | Visibility | Contains |
|------|-----------|----------|
| `ShoCodeJP/ShoCode` | **PUBLIC** | Registration, public program, templates, scripts, workflows, landing page |
| `ShoCodeJP/shocode-internal` | **PRIVATE** | Sponsor pipeline, budget, venue negotiation, partner proposals, internal ops |

## Non-Negotiable Rules

1. **Sponsor pipeline = PRIVATE repo only.** Issues, labels, board, prospect
   research, tracking notes — all in `ShoCodeJP/shocode-internal`. Never the
   public repo.
2. **No personal emails or PII** in any file, issue, or commit (either repo).
   Official channels only.
3. **Gated drafts stay out of public repo** until: (a) Earthful Magic partnership
   confirmed AND (b) date + venue locked. Gated content includes: themes,
   schedule, awards, info pack, brand identity, speaker materials.
4. **Sponsorship never buys judging, winners, talk slots, or program control**
   (see `sponsor-rules.md`).
5. **No outreach yet.** Prep only until copy is approved and date/venue confirmed.
6. **Bilingual EN/JP** for anything attendee/contributor-facing.

## 後援 (Official Endorsement) vs. Sponsors

後援 targets (MOE, Kanagawa, host city) are credibility, not cash. Tracked as a
checklist in `showcode-internal/sponsors/koen-endorsements.md`, NOT as sponsor
pipeline issues.

## Sponsor Labels (in private repo)

- 5 tier labels: `sponsor:kuroshio`, `sponsor:tide`, `sponsor:wave`,
  `sponsor:ripple`, `sponsor:in-kind`
- 6 stage labels: `sponsor-stage:prospect`, `sponsor-stage:contacted`,
  `sponsor-stage:discussing`, `sponsor-stage:committed`, `sponsor-stage:signed`,
  `sponsor-stage:declined`

## When in Doubt

If a file feels internal (money, negotiation, prospect names, venue rates,
partner terms), it goes in the PRIVATE repo. When uncertain, ask the coordinator.
