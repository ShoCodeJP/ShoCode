# ShoCode — Copilot Instructions

## Project Context

ShoCode is a bilingual (English/Japanese) one-day agentic coding event held in Shonan, Japan. Participants register by submitting a profile via pull request. All content must support both English and Japanese.

## Registration Profile Creation

When a user wants to register for ShoCode, create their profile as follows:

1. **Create the profile folder:** `profiles/{github_username}/`
2. **Create `profile.md`** inside that folder, using `profiles/template.md` as the base. Fill in the user's details from their request.
3. **Optionally create `profile_jp.md`** if the user wrote their registration in Japanese, using `profiles/template_jp.md` as the base.
4. **PR title format:** `Register: {username} for ShoCode`

## Content Rules

- **No email addresses.** Only public/social contact links (Twitter/X, LinkedIn, Bluesky, Mastodon, LINE, GitHub, etc.).
- **Bilingual support:** Both English and Japanese submissions are welcome. If a user submits in Japanese, create the `profile_jp.md` version. If they submit in English, `profile.md` is sufficient.
- **Follow templates exactly.** Preserve all required sections from the template: About Me, Introduction, What I'll Bring to ShoCode, Code & Project Links, and Preferred Role.
- **Preferred Role** must have exactly one option checked (Presenter, Hacker, Both, or Attendee).
- Do not invent information the user hasn't provided. Leave template placeholders for missing optional fields.

## PR Expectations

- One profile per PR.
- The PR should only add/modify files under `profiles/{github_username}/`.
- Ensure the profile passes markdownlint and link checks before submitting.
