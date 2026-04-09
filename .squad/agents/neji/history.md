# Neji — History

## Core Context

- **Project:** A full-cycle event planning and execution squad for ShoCode conferences, covering operations, programming, speakers, marketing, quality review, and attendee experience.
- **Role:** Quality & Review
- **Joined:** 2026-03-31T02:33:51.112Z

## Learnings

<!-- Append learnings below -->
- 2026-03-31: README.md and README_jp.md are genuinely parallel and high quality — the Japanese reads natively, not like a translation. Minor gap: English README doesn't reference the Japanese profile template.
- 2026-03-31: CODE_OF_CONDUCT.md and CONTRIBUTING.md are English-only — critical gap for a "bilingual by design" event. These are the highest-priority items to fix.
- 2026-03-31: Profile templates use inconsistent bilingual strategy — English template is pure EN, Japanese template uses bilingual labels (EN/JP). Need alignment.
- 2026-03-31: registration.yml is the gold standard for bilingual templates — inline EN/JP labels, detailed descriptions, natural placeholder examples. All other issue/PR templates should follow this pattern.
- 2026-03-31: PR templates still reference 2023 "paper submission" and "speed-dating rounds" — stale artifacts that need replacement with profile-submission flow.
- 2026-03-31: Key quality principle for bilingual repos: never call one language the "translation." Both are originals. Structure the repo so neither language feels secondary.
- 2026-03-31: For profile review process, the most important inclusive practice: never reject based on language proficiency. Review for content and intent, not grammar.
- 2026-04-01: Sprint 1 completed — created Japanese translations for CODE_OF_CONDUCT.md and CONTRIBUTING.md with language toggle badges on all files. Key approach: write Japanese that reads natively (e.g. 行動規範, コントリビューション・ガイドライン) rather than transliterating English terms, while keeping agentic-coding loanwords in katakana where natural.
- 2026-04-01: Fixed template asymmetry — English template now explicitly links to the Japanese template in the closing note. The JP template already linked back via badge, so the gap was only in the EN direction.
- 2026-04-01: Added CoC reporting contact (Drew Robbins) to both EN and JP versions. Email is appropriate for safety/enforcement contacts even though profile pages prohibit email collection — these serve fundamentally different purposes.
- 2026-04-01: When creating bilingual file pairs, always add badges bidirectionally in the same commit to avoid a window where one file links to a nonexistent counterpart.
- 2026-04-01: Added "Language Inclusion" section to both EN and JP Code of Conduct. Placed between Expected Behavior and Unacceptable Behavior — after the positive standards, before enforcement. JP version written natively (言語インクルージョン), not translated from English.
- 2026-04-01: README.md Option 1 step 4 now cross-references profiles/template_jp.md alongside the English template, with natural bilingual phrasing ("Japanese template (日本語テンプレート)").
