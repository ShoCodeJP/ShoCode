# Hinata — History

## Core Context

- **Project:** A full-cycle event planning and execution squad for ShoCode conferences, covering operations, programming, speakers, marketing, quality review, and attendee experience.
- **Role:** Attendee Operations
- **Joined:** 2026-03-31T02:33:51.121Z

## Learnings

<!-- Append learnings below -->

### 2026-03-31T06:30:00Z — Attendee Experience & Registration Design
- Designed two registration paths (PR and @copilot) that both converge to the same outcome: a merged profile page. Originally proposed three paths — the Issue Form was dropped per Drew's directive to keep @copilot as the accessible, on-theme agentic path.
- Bilingual design must be "culturally native, not translated." Key example: the Display Name field is freeform — no forced first/last split — which respects both Japanese (family-first) and Western (given-first) conventions equally.
- GitHub Issue Forms YAML supports bilingual labels elegantly by using "English / 日本語" in the label and description fields. No need for separate forms per language.
- For a 50–100 person community event, first-come-first-served with a soft cap and waitlist is fairest. The PR requirement already self-selects for engagement.
- Accessibility questions should be optional but visible — people need to see that we thought about it, even if they don't need accommodations.
- The @copilot registration path requires a well-structured pinned issue with an example comment template so Copilot can reliably parse attendee details.
- Name badges should show display name large, GitHub username small, role color-coded, and language preference flagged — this creates immediate social affordances at the event.
- Post-event community warmth matters: GitHub Discussions, quarterly virtual meetups, and persistent profile pages turn a one-day event into an ongoing community.

### 2026-03-31T07:00:00Z — Registration Revision: Drop Issue Form, Drop Email
- Drew directed: no email collection (privacy concern for public repo profiles), and drop Path 3 (Issue Form) in favor of Path 2 (@copilot) as the sole accessible registration alternative.
- Two paths is cleaner than three. @copilot as the accessible path is on-theme — attendees register by talking to an AI agent, which IS agentic coding. The Issue Form was a safe fallback but redundant.
- Contact fields should be public/social only (Twitter/X, LinkedIn, Bluesky, LINE, Mastodon, etc.). Never store email in a public repo profile.
- When a lead gives a clear directive to simplify, execute it fully across all files — READMEs, templates, vision docs, issue templates. Partial updates create inconsistency.
