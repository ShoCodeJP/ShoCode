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

### 2026-06-20: Standing Constraints (Planning Sprint)

- **GitHub access:** Always prefer the **GitHub MCP server** over the `gh` CLI when working with GitHub.
- **No public website changes:** Do not touch the public site or announce venue/date/changes until the team confirms. All planning docs stay internal/DRAFT until approved.
- **Backlog fan-out rule:** Complete doable backlog work; hold anything blocked on the user, external parties, or unconfirmed venue/date — or ship the doable part and file a follow-up issue for the remainder.

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

### Internal-Content Governance (Coordinator)

**Date:** 2026-06-30 | **By:** Drew Robbins (via Copilot)

Non-negotiable guardrails for internal-content governance and sponsor pipeline setup:

1. **All sponsor pipeline work happens in the PRIVATE repo** (`ShoCodeJP/shocode-internal`), NEVER the public repo. Issues in the public repo are world-readable.
2. **Official channels only.** No personal emails or PII in any file, issue, or commit.
3. **Do NOT commit gated drafts to the public repo** (themes, schedule, awards, info pack, brand, speaker materials) until the Earthful Magic partnership is confirmed AND the date + venue are locked. Enforce via review/CODEOWNERS.
4. **Bilingual EN/JP quality standards** apply to anything attendee/contributor-facing.
5. **Sponsorship never buys judging, winners, talk slots, or program control** (see sponsor-rules.md). No actual outreach yet — prep only, until copy is approved and date/venue are confirmed.
6. **後援 (official endorsement) targets** — MOE, Kanagawa Pref., host city — tracked as a separate checklist in the private repo, NOT as sponsor pipeline cards (credibility, not cash).

---

## Venue Evaluation Log

### 2026-06-20: Proposed venue research — Share Village Hayama (9/12)

**By:** Naruto (Operations), requested by Drew
**Status:** PROPOSED — under evaluation. **Public publishing ON HOLD pending team confirmation.** Research lives in `ops/venue-share-village-hayama.md` only; no `docs/`/site changes.

**What:** Deep-research dossier created for the newly proposed venue **ShareVillageHAYAMA / シェアビレッジ葉山** (operator: ALL.e), proposed date **September 12 (Saturday)**. Existing `ops/venue-research.md` matrix left untouched.

**Key findings:**

- Renovated solid-wood detached house in Hayama (堀内746-1); ~9 min walk to sea; garden/terrace + optional sauna. Strong Shonan "village" vibe (not oceanfront).
- Access: JR → Zushi (~60 min) → bus ~10–15 min to 風早橋 → 3–5 min walk. Total ~75–85 min — within <90 min target, but final leg is a bus.
- Facilities listed: fiber+mobile+wired WiFi, power + extension cords, projector/screen, wireless mic + speakers, full kitchen, catering (restaurant permit), 10–11 parking.

**Cost range found (whole-venue charter, "from" pricing):**

- Weekday: from ¥14,437/hr (min 4h). **Weekend/holiday (applies 9/12 Sat): from ¥18,480/hr (min 4h).**
- Est. full day 9/12 ≈ ¥111k–154k + ¥6,050 4K projector add-on; catering/deposit unpriced.

**Top 3 risks / open questions (MUST confirm before booking):**

1. 🔴 **Seated capacity** — only ~20–30 seated indoors (~47 w/ outdoor benches). "100" is standing only. For 50–100 seated devs with tables+power this is tight → may cap us ~40–50.
2. 🔴 **WiFi under load** — "high-speed" but 50–100 simultaneous dev connections unconfirmed. Plan BYO APs + 5G/Starlink backup until proven.
3. 🔴 **Power density** — outlets + extension cords present, but coverage for 50–100 laptops unconfirmed.

**Next:** Contact ALL.e (via LINE/Spacemarket/Instagram — no email) for 9/12 availability, weekend quote, seated capacity, WiFi spec; site visit; compare vs CIRQ/Hayama Marina. **No public announcement until team confirms.**

---

## 2026-06-20: Planning Sprint

Seven-agent background fan-out to advance the event backlog for a **~40–50 attendee** event at **Share Village Hayama** (proposed **9/12 Sat**). All deliverables are internal/DRAFT; public publishing remains on hold. ~40 issues advanced (closed-now) across domains; venue/date-dependent items held.

### Operations (Naruto)

Delivered budget, runsheet, AV inventory, power plan, venue shortlist, catering options, and MC/interpreter plan (`ops/`), plus 3 issue templates. Budget range **¥214k (low, 40) / ¥346k (expected, 45) / ¥492k (high, 50)**; per-head ≈¥5,350–9,850. **Sponsorship is the primary funding lever** — a single ¥200k–250k sponsor makes a free/donation event viable at 45. Decision gate: if the venue can't seat 45–50 indoors with power + adequate WiFi, **pivot to CIRQ Kamakura** (confirmed WiFi, 80 seated). Closed: #76, #93, #94, #95, #68, #97, #62, #71, #99, #90. Held: #78 (date — needs venue + Drew), #96/#100 (coordinator/Shikamaru scope).

### Program & Content (Sakura)

Three hackathon theme prompts on the Earthful Magic **measure / prove / connect** framing (#57): *Make the Invisible Visible*, *Earn the Trust*, *Close the Loop* — each a one-day agentic build; Open Track preserved. Awards (#55: Shonan Spirit, Agent Whisperer, Best Demo, + contingent "Build for the Planet"), Hacker's Toolkit (DRAFT), and schedule automation: `schedule.yml` as single source of truth with generate/validate scripts (CI fails on double-booked speakers). Closed: #57, #55, #25, #56, #75, #74. Held: #72, #73. **Open decisions:** award voting mechanism (recommend Google Form); confirm EM partnership before publicizing themes/"Build for the Planet"; Agent Whisperer prize sponsor; whether to publish the Toolkit; whether `program/generated/` is committed or gitignored.

### Partnership — Earthful Magic (Sakura)

Collaboration proposed with **Earthful Magic** (regenerative-land / carbon-credit company) defining the theme **"Build for the Planet, Build for the People"** plus five challenges + open track (Living Proof / PDD Co-pilot / Hands on the Ground / Show Me It's Real / Land Scout). **Status: DRAFT — not public.** Filed at `partnerships/earthful-magic/proposal.md` (new `partnerships/` folder). Gates the measure/prove/connect themes and the "Build for the Planet" award going public.

### Speaker Relations (Kakashi)

New `speakers/` folder + bilingual GitHub templates (talk proposal, slide template, speaker guide, speed-dating format, bridge-volunteer model, CFP announcement DRAFT, keynote shortlist [types only, no real names], CFP committee charter) and `.github` issue/PR templates. Talk formats: 30-min keynote, 15-min standard (12+3 Q&A), 5-min lightning. CFP backwards-plan anchored to (unconfirmed) 9/12: open ~8wk out, close ~4wk, review 1wk, decisions ~3wk out. Closed: #85, #81, #91, #79, #86, #80, #88, #92, #84. Held: #82 (committee recruiting — needs real people + confirmed date).

### Marketing & Comms (Tsunade)

Marketing foundation under `marketing/`: brand identity/palette, social calendar template, sponsor rules, sponsor prospectus, pre-event announcement (DRAFT), recap template, outreach channels, sponsor tracking. **Proposed sponsorship tiers (⚠️ draft prices):** Kuroshio ¥250k (1) / Tide ¥150k (2) / Wave ¥75k (4) / Ripple ¥30k (open) / in-kind. **Recommended sponsorship target ¥350k** (covers expected case → free/donation event), **stretch ¥500k**; headline path 1 Kuroshio + 1 Tide = ¥400k. Closed: #20, #22, #36, #37, #38, #39, #61. Held: #18 (banner — needs image gen), #40 (YouTube — needs Drew/org account), #60 (sponsor labels — coordinator to create).

### Attendee Operations (Hinata)

Attendee docs under `attendees/` (all DRAFT, bilingual): capacity plan, check-in process, badge spec, info pack DRAFT, post-event survey, dietary/accessibility handoff, registration-flow test plan. **Capacity:** treat **50** as hard limit; accept up to **55** registrations (~10% overbook); expected turnout ~45 at 15–20% no-show; waitlist ranked by PR merge time. **Action for Neji:** wire four private dietary/accessibility fields into registration intake (not in the public profile). Closed: #41, #28, #70, #53, #67, #77. Held: #17 (@copilot reg test — needs live @copilot + test PR; plan drafted), #23 (reg→PR auto-convert — stretch).

### Tooling & Technical Support (Shikamaru)

Ops GitHub Actions (#100, non-destructive): `ops-budget-lint.yml` + `scripts/check-budget.sh` (structure lint on `ops/budget.md`), `ops-runsheet-freeze.yml` (freeze guard via label or marker), `ops-auto-assign.yml` (stamps `squad:<ops-member>` on `logistics`/`ops*` issues — fills a real routing gap, chains into the existing assign workflow). All YAML validated; budget script smoke-tested. Closed: #100. Held: #30 (branch protection — ruleset recommended in `scripts/branch-protection-recommended.md`, coordinator to apply via MCP), #31 (GitHub Pages — HELD, blocked by no-announce).

### Quality & Review (Neji)

Added **Language Preference** and **Agentic Tools/Stack** fields to BOTH profile templates (kept parallel per BQ-4). **Dietary/accessibility kept OUT of public profiles** (no-PII rule) — added a note directing private submission at registration; Hinata owns the private channel. Formalized `quality/bilingual-standards.md` (BQ-1…BQ-5 with checklists + pass/fail examples). Closed: #64, #69. Suggested follow-up: CI check for BQ-4 template parity.

### Cross-cutting blockers

1. **Venue confirmation** — Share Village Hayama seated capacity + WiFi-under-load gate booking and the 9/12 date (#78).
2. **Sponsorship target** — ¥350k recommended; unlocks the free/donation ticket model.
3. **Earthful Magic partnership** — still DRAFT; gates public use of themes, the "Build for the Planet" award, and co-branding.
4. **@copilot registration test (#17)** — needs live @copilot + test PR.

---

## Governance

- All meaningful changes require team consensus
- Document architectural decisions here
- Keep history focused on work, decisions focused on direction
