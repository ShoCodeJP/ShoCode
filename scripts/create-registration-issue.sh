#!/bin/bash
# Creates the pinned registration issue for the @copilot registration flow.
# Requires: gh auth login
#
# Usage: bash scripts/create-registration-issue.sh

set -e

TITLE="🎫 Register for ShoCode / ShoCode 参加登録"

BODY='## Register for ShoCode / ShoCode に参加登録する

Welcome! To register for ShoCode, comment below with your details and ask **@copilot** to create your profile.

ようこそ！ShoCode に参加登録するには、以下にあなたの情報をコメントし、**@copilot** にプロフィール作成を依頼してください。

---

### How it works / 登録方法

**Option 1: Ask @copilot (recommended / おすすめ)**

Comment on this issue with your info. Include `@copilot` in your comment and ask it to create your registration PR. Example:

> @copilot please register me for ShoCode!
>
> - **Name:** Your Name
> - **GitHub:** @yourusername
> - **Contact:** [twitter.com/you](https://twitter.com/you), [linkedin.com/in/you](https://linkedin.com/in/you)
> - **Role:** Hacker
> - **What I'\''ll bring:** I'\''m building an agentic code review tool and want to demo it at the hackathon.
> - **Language:** English

Copilot will create your profile page and open a PR for you. ✨

> @copilot ShoCode に参加登録をお願いします！
>
> - **氏名:** あなたの氏名
> - **GitHub:** @yourusername
> - **連絡先:** [twitter.com/you](https://twitter.com/you)
> - **役割:** ハッカー
> - **持ち込むもの:** エージェンティック・コーディングのツールをデモしたいです。
> - **言語:** 日本語

Copilot があなたのプロフィールページを作成し、PR を開きます。 ✨

**Option 2: Submit a PR directly / 直接 PR を提出**

Fork this repo, create `profiles/your_username/profile.md` using the [template](profiles/template.md), and submit a PR. See the [README](README.md) for details.

---

### Required info / 必要な情報

| Field | Required | Notes |
|-------|----------|-------|
| Name / 氏名 | ✅ | |
| GitHub username | ✅ | |
| Public contact / 連絡先 | ✅ | Social links only — no email / ソーシャルリンクのみ（メール不可） |
| What you'\''ll bring / 持ち込むもの | ✅ | Talk, hack idea, demo, etc. |
| Preferred role / 希望する役割 | ✅ | Presenter, Hacker, Both, or Attendee |
| Language preference / 言語 | Optional | English, 日本語, or Both |

⚠️ **No email addresses** — use public/social contacts only (Twitter/X, LinkedIn, Bluesky, LINE, etc.)

⚠️ **メールアドレス不可** — 公開ソーシャルリンクのみ使用してください'

echo "Creating registration issue..."
gh issue create --title "$TITLE" --body "$BODY" --label "registration"

echo ""
echo "Issue created! Now pin it:"
echo "  1. Go to the issue on github.com"
echo "  2. Click the '...' menu → Pin issue"
echo ""
echo "Or use: gh issue pin <number>"
