# Naruto — History

## Core Context

- **Project:** A full-cycle event planning and execution squad for ShoCode conferences, covering operations, programming, speakers, marketing, quality review, and attendee experience.
- **Role:** Operations
- **Joined:** 2026-03-31T02:33:51.092Z

## Learnings

<!-- Append learnings below -->

### 2026-03-31: Venue & Logistics Vision Research

- Drafted comprehensive venue and logistics proposal for ShoCode v1 (`.squad/decisions/inbox/naruto-venue-logistics-vision.md`).
- **Key insight:** Fujisawa/Enoshima area is the strongest candidate for v1 — best balance of Tokyo train access (50–60 min), venue variety, and authentic Shonan atmosphere.
- **Venue type finding:** Coworking spaces and renovated creative spaces offer the best reliability-to-vibe ratio. Beach houses and temples are aspirational but risky for a WiFi/power-dependent coding event.
- **Budget finding:** Per-person cost of ¥4,400–¥7,300 is achievable for 80 attendees, keeping tickets under the ¥10,000 community-affordable target even without sponsorship.
- **Bilingual logistics:** Dual-screen setup (EN/JP) with a bilingual MC is more practical and affordable for v1 than simultaneous interpretation equipment.
- **Repeatability lever:** Booking next year's date at the current event, combined with being excellent tenants, is the simplest path to a sustainable venue relationship.

### 2026-04-01: Sprint 1 — RUNBOOK.md + Venue Research

- Created bilingual RUNBOOK.md covering full event lifecycle (pre-event, day-of, setup, teardown, emergencies, post-event, vendor templates). All section headings and checklist items in EN + JP.
- Completed venue research for 7 venues across the Shonan area. Wrote detailed comparison to `ops/venue-research.md`.
- **Venue insight:** Hayama Marina Emerald Room is the best-documented option — 100 cap, ¥6,600/hr daytime, ocean+Fuji views, AV rental available. WiFi/power are the critical unknowns for any non-coworking venue.
- **Venue insight:** Another Day (Kamakura) is Drew's favorite — built-in restaurant solves catering, great vibe — but capacity may cap around 60 and tech infra is unknown. Must visit.
- **Venue insight:** Shonan Village Center (湘南国際村センター) is the most reliable infra option — used by NII for international conferences — but isolated hilltop with corporate retreat feels, not Shonan beach vibes.
- **Runbook learning:** Bilingual formatting works best with EN first, JP inline after slash. Keeps the document scannable for both audiences without duplication.
- **Process note:** anotherday.jp returned 403 — limited public info. Site visit is non-negotiable for that venue.

### 2026-04-01: Venue Inquiry Emails Composed

- Drafted bilingual (JP + EN) venue inquiry emails for top 3 shortlisted venues: Another Day (Kamakura), Hayama Marina (Emerald Room), Shonan Village Center. File: `ops/venue-contact-emails.md`.
- **Pattern:** Japanese email first, English version second. Japanese version includes the "English reply welcome" note per Drew's preference.
- **Another Day email:** Acknowledged WiFi/power already confirmed; focused questions on capacity for tech events, pricing, and WiFi bandwidth for 50+ laptops.
- **Hayama Marina email:** Referenced Emerald Room specifically, cited AV rental prices from research, asked about WiFi as critical unknown, asked about portable AP bring-your-own option.
- **Shonan Village Center email:** Explicitly requested day-use only pricing (not overnight packages), referenced NII conference track record, asked about April 2026 price revision, included bus shuttle question.
- **Tone calibration:** Professional but warm — community event, not corporate. Drew's name as sender on all.

### 2026-04-01: Venue Email Revision & URL Verification

- Removed Shonan Village Center (Section 3) from `ops/venue-contact-emails.md` — bus-dependent hilltop location was impractical. Down to 2 venues: Another Day + Hayama Marina.
- **URL verification results:**
  - anotherday.jp → HTTP 403 (blocked); /contact/ and /about/ return 404. No public email or contact form found at all. Site visit is the only way to make contact.
  - hayamamarina.com → ✅ Live. TEL 046-875-0002, FAX 046-876-1146. No email found on any page. Phone inquiry is the way in.
  - shonan-village.co.jp → ✅ Live. Contact form available. TEL 046-855-1800.
  - nekton-fujisawa.com → JS-heavy SPA, failed automated fetch. Needs manual browser visit.
  - "Kamakura Seaside Coworking" → ⚠️ Cannot verify existence. No URL, no search results. Flagged in venue-research.md as unverified. Included in deep research prompt for further investigation.
- **Email shortening:** Cut both venues' JP and EN emails to roughly half length. Combined WiFi+power into single bullets, removed redundant pleasantries, kept English-reply-welcome note in JP versions.
- **Date update:** Changed all references from "2026年秋頃" / "autumn 2026" to "2026年5月下旬〜6月" / "late May or June 2026".
- **Contact info:** Added contact method notes to email section headers — Another Day has no discoverable contact method (TBD), Hayama Marina is phone-only (046-875-0002).
- **Deep research prompt:** Added comprehensive prompt to bottom of venue-contact-emails.md for an AI research agent to: find contact info for both venues, verify Kamakura Seaside Coworking existence, discover new Shonan-area venues, find venues that have hosted tech events.
- **Key learning:** Japanese venue websites often have no public email — phone is the primary contact method. For Another Day specifically, the 403 block + no contact info means an in-person visit is the only viable path. Google searches via fetch_webpage return JS challenge pages, not results.

### 2026-04-02: Deep Research Integration — Venue Pivot

- **CRITICAL:** Another Day Kamakura (Drew's #1 pick) is closing 2026-04-26 per Instagram. Removed from active candidates. Decision logged to `.squad/decisions/inbox/naruto-venue-pivot.md`.
- **Kamakura Seaside Coworking confirmed not real.** Deep research found no evidence of that name. Likely a mix-up with GOOD WORKING ZAIMOKUZA or NIHO kamakura.
- **New top-3 identified and integrated into `ops/venue-research.md`:**
  1. CIRQ Kamakura (cirq-hall.jp) — oceanfront Zaimokuza, 80-150 cap, confirmed WiFi + high-speed, AV, food/bento. Best combined ShoCode fit.
  2. Hayama Marina Emerald Room — 60-100 cap, ocean+Fuji views, WiFi/power unverified.
  3. KOTOWA Kamakura Tsurugaoka Kaikan (dearswedding.jp) — 130 seminar cap, 5 min from Kamakura station, strong catering, WiFi unverified.
- **KAYAC Meeting Building (ぼくらの会議棟)** at 鎌倉市御成町4-31 flagged as worth investigating — most developer-event-proven venue in Kamakura (kamakura.go, Kanagawa.swift, hackathons).
- **Venue inquiry emails updated:** `ops/venue-contact-emails.md` now has 3 bilingual emails (CIRQ, Hayama Marina, KOTOWA). Another Day removed.
- **New venues cataloged:** NIHO kamakura (30 cap, tech-event proven), the KAIDAN fujisawa (60 cap, developer WiFi), Kamakura Performing Arts Center (institutional backup), GOOD WORKING ZAIMOKUZA (beachfront, too small), Chiga lab (community, small).
- **Tech event history section added** to venue-research.md — connpass-verified event listings for Shonan area venues.
- **Key learning:** Connpass is the definitive source for Japanese tech event venue history. NIHO kamakura and KAYAC's meeting building are the two most-used tech venues in Kamakura proper.

### 2026-04-02: Strategic Pivot — NIHO kamakura, 25-Person Curated Event

- **Drew's decision:** NIHO kamakura is the preferred venue. Cap at 25 attendees. Smaller inaugural event to build credibility and vet applicants.
- **Drew's exact words:** "I really like NIHO kamakura. The space looks inspiring. We'd have to limit probably to 25 people, but it would give us a chance to do a smaller event, build credibility and we could be more vetting of applicants."
- **Venue profile updated** in `ops/venue-research.md` — NIHO promoted from "too small" to Drew's pick with full strategic rationale.
- **NIHO inquiry email drafted** in `ops/venue-contact-emails.md` — bilingual (JP/EN), tailored to 25-person event, references NIHO's tech event history. Now Section 1 (top priority).
- **Recommendation stack reordered:** NIHO #1 for v1, CIRQ/Hayama/KOTOWA moved to "v2 pipeline" for scale-up.
- **Budget insight:** 25-person event dramatically reduces costs (~¥139K total vs. hundreds of thousands for 80-100 person venues). Community-affordable without sponsorship.
- **Key strategic learning:** Starting small is a feature, not a compromise. A curated 25-person event with vetted attendees creates stronger community signal, lower logistics risk, and a credibility foundation for scaling.
- **Decision logged:** `.squad/decisions/inbox/naruto-niho-preferred.md`
- **Impact on other agents:** Sakura (agenda for 25), Hinata (selective registration), Kakashi (fewer speaker slots), Tsunade (intimate event positioning).
