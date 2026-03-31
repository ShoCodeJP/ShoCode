# Shikamaru — History

## Core Context

- **Project:** A full-cycle event planning and execution squad for ShoCode conferences, covering operations, programming, speakers, marketing, quality review, and attendee experience.
- **Role:** Tooling & Technical Support
- **Joined:** 2026-03-31T07:31:31.174Z

## Learnings

<!-- Append learnings below -->
- 2026-03-31: Audited full repo tooling state. Key findings: `markdown_checks.yml` is broken (Node 14, `return 1` instead of `exit 1`, checkout@v2). MCP config points to wrong package (`@anthropic/github-mcp-server`). Pre-commit spellcheck is impractical for bilingual JP/EN repos. All 2023 issue/PR templates are stale and need replacement. Squad workflows (heartbeat, triage, assign, label-sync) are modern and functional — leave them alone.
- 2026-03-31: The @copilot registration flow does NOT need a custom GitHub Action. It uses GitHub's native Copilot Coding Agent (repo setting toggle) + `copilot-instructions.md` to guide profile creation. Keep it simple — no custom bots or apps.
- 2026-03-31: For bilingual repos, drop `markdown-spellcheck` entirely — the false positive rate on Japanese content makes it worse than useless. Markdownlint + link-check are sufficient quality gates.
- 2026-03-31: Wrote comprehensive tooling architecture proposal → `.squad/decisions/inbox/shikamaru-tooling-architecture.md`. Covers: gh CLI scripts, MCP server fix, Actions (4 workflows), repo config (labels/branch protection/CODEOWNERS/project board), dev container modernization, Copilot instructions, and a kill list of tools to avoid.
