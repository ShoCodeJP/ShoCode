# Squad Decisions

## User Directives (Drew Robbins)

### 2026-03-31: Registration & Event Adjustments
- No email collection in registration — public/social contacts only.
- Drop registration Path 3 (Issue Form). Keep Path 2 (@copilot assisted) and make it fully agentic.
- Push back event start time to accommodate ~1hr travel from Tokyo without rush hour trains.

### 2026-03-31: Tooling & Repo Config
- Copilot Coding Agent — believed enabled (all Settings → Copilot toggles on).
- GitHub Discussions — Drew wants it, needs help enabling.
- Branch protection — defer until after infrastructure sprint.
- Profile folder structure: `profiles/{username}/` (folder per user, headshots may be included).

### 2026-04-01: Project Management
- Use labels (e.g., `squad:naruto`, `squad:sakura`) to mark which team member owns each issue — squad members don't have GitHub accounts.
- Sprint 1 items should be added to the project board and marked in-progress before work begins.

### 2026-04-01: Sprint 1 Adjustments
- Drew scouted two venues: Another Day (near Kamakura station, also a restaurant) and Hayama Marina.
- Naruto should research additional venue options beyond these two.
- Date selection issue should NOT be in-progress until venue is picked — move back to Todo.
- Keynote shortlist issue should NOT be in-progress — move back to Todo.

### 2026-04-02: NIHO Kamakura Preferred — 25-Person Curated Event
- Drew chose **NIHO kamakura** as preferred venue for ShoCode v1.
- Capacity pivoted to **25 attendees** (down from 50–100) — smaller inaugural event to build credibility and prove the format.
- Budget dramatically lower: ~¥139K total (¥76,500 venue + ~¥62,500 food).
- Scale-up path: CIRQ Kamakura, Hayama Marina, KOTOWA remain in pipeline for ShoCode v2+ at 50–100 attendees.

---

## Active Decisions

### Agenda & Format (Sakura)
One-day event, revised to **10:30–18:00** start (was 09:30–18:30) to accommodate Tokyo commuters avoiding rush hour. Keynote (30 min) + 3 standard talks (15 min each) + 5 lightning talks in the morning. 2.5-hour hackathon after lunch — build time fully protected. Team demos, community awards, networking to close. Speakers present in preferred language; slides must be bilingual. No simultaneous translation — bilingual MC summarizes between talks. Standard talks shortened from 20→15 min; lunch 60→50 min; tighter transitions throughout.

### Venue & Logistics (Naruto)
**NIHO kamakura** is Drew's preferred venue — 25-person capacity, 2 min from Kamakura station, tech-event proven, confirmed WiFi + power. Another Day Kamakura closed April 2026; Kamakura Seaside Coworking confirmed not real. Backup pipeline: CIRQ Kamakura (80-150, oceanfront Zaimokuza), Hayama Marina Emerald Room (60-100, ocean + Fuji views), KOTOWA Kamakura (130, central). KAYAC Meeting Building also worth investigating. Bilingual venue inquiry emails prepared. Budget estimate ~¥139K total for 25-person format.

### Speaker Program & CFP (Kakashi)
10 agentic coding topic categories. Three CFP submission paths: classic PR, GitHub Issue Form, and @copilot-assisted. Code artifact required from all speakers. 50% community slots reserved for speakers with ≤2 prior talks. Pair-speaking (JP+EN co-presenters) encouraged. Keynotes invited; community speakers reviewed blind.

### Branding & Sponsors (Tsunade)
Ocean-inspired palette (blues, sand white, sunset coral). "ShoCode: Agentic Coding on the Coast." Four sponsor tiers: Wave (infrastructure), Sun (experience), Shell (swag/infra), Beach (community). Non-negotiable rules: no recruiting booths, no marketing talks, no attendee data sharing. Community-first positioning — "for builders, not suits." Marketing content managed in-repo under `/comms` — no CMS, no scheduling tools. Manual posting at this scale. Sponsor tracking via GitHub Issues with labels + Project board.

### Attendee Experience & Registration (Hinata)
**Two registration paths** (revised from three): Path 1 PR (classic), Path 2 @copilot (agentic — elevated as the accessible path, on-theme for the conference). Path 3 Issue Form removed — @copilot replaces it. **No email collection** — public/social contacts only (Twitter/X, LinkedIn, Bluesky, Mastodon, LINE, etc.). Registration PR validation workflow needed: file location check, required fields, email regex scan (fail if found), template compliance, username match, duplicate check. `.github/ISSUE_TEMPLATE/registration.yml` deleted.

### Quality Standards (Neji)
Five bilingual quality standards: BQ-1 Parallel Content (all docs in both languages), BQ-2 Natural Language (no literal translations), BQ-3 Cross-Linking (badge links between versions), BQ-4 Template Consistency (identical fields both languages), BQ-5 Issue/PR Template Parity. Key gaps identified: CoC and CONTRIBUTING.md are English-only; profile templates inconsistent; older issue/PR templates outdated.

### Tooling Architecture (Shikamaru)
GitHub-native event management: GitHub CLI scripts in `scripts/` (count registrations, list attendees, open PRs, label sync, dashboard), GitHub MCP server for Copilot integration, GitHub Actions for PR validation. No external tools. Dev container provides `gh` + `gh-copilot`. Copilot custom instructions scoped to registration PR creation.

### GitHub Pages Landing Page (Shikamaru)
Bilingual (EN/JP) static landing page in `docs/` — `index.html`, `style.css`, `script.js`, banner image, CNAME placeholder. Ocean-inspired theme matching brand palette. Language toggle with localStorage + navigator.language auto-detect. Responsive, semantic HTML, zero external dependencies. Deploy via GitHub Pages from `docs/` on `main`. **Action required:** Drew must enable Pages in repo settings.

### Tooling Needs Summary

**Hinata (Attendee Ops):** @copilot registration flow via pinned issue + Copilot Coding Agent; PR validation workflow (`registration-pr-check.yml`) for profile field validation, email blocking, username match, duplicate check.

**Naruto (Operations):** GitHub Issues + Project board for venue/vendor tracking; AV inventory checklist; budget tracking in markdown; day-of runsheet; vendor comms logged as issue comments.

**Sakura (Program & Content):** CFP → Schedule pipeline on GitHub Project board; `schedule.yml` as structured data source of truth; auto-generated `SCHEDULE.md` (EN/JP); speaker slot validation.

**Tsunade (Marketing & Comms):** All content in-repo under `/comms`; social calendar as markdown checklist; manual posting; sponsor tracking via GitHub Issues with tier labels.

---

## Governance

- All meaningful changes require team consensus
- Document architectural decisions here
- Keep history focused on work, decisions focused on direction
