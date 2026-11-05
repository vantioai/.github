# Cursor cloud agent setup — evidence

**Repo:** `vantioai/.github` (public org metadata)  
**Agent run:** https://cursor.com/agents/bc-55adbfad-27e4-512c-8cbc-47f806515957  
**Scope:** Add `AGENTS.md`, `.cursor/rules/agent-*.mdc`, `scripts/check-org-agent-docs.sh`, and this file. No workflow, profile, or community-health meaning changes.

## Pre-change inspection (read-only)

| Area | Finding |
| --- | --- |
| Org profile | `profile/README.md` — product overview, install snippets, public links |
| Community health | `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md`, `SUPPORT.md` present |
| PR template | `.github/PULL_REQUEST_TEMPLATE.md` — Optics-scoped checklist |
| Issue forms | `.github/ISSUE_TEMPLATE/bug_report.yml`, `feature_request.yml`, `config.yml` |
| Workflows | `.github/workflows/ci.yml` only — file-presence checks; no workflow templates directory |
| Prior agent docs | No `AGENTS.md`, `.cursor/rules/`, or `evidence/` on `main` at task start |

## Commands

Run from repo root after changes committed.

| Command | Exit | Notes |
| --- | ---: | --- |
| `bash scripts/check-org-agent-docs.sh` | 0 | Last line: `org-agent-docs-ok` |
| `git rev-parse HEAD` | 0 | SHA recorded below after final commit |

### `bash scripts/check-org-agent-docs.sh` (detail)

```
issue-templates-yaml-ok
org-agent-docs-ok
```

## Git SHA

Commands above were run against: _(updated after commit — see PR head SHA)_.

## Gap list

What this run does **not** prove:

- GitHub renders `profile/README.md` correctly on the org Overview tab
- Issue forms render and validate correctly in the GitHub UI
- Optional `markdownlint-cli2` pass (documented in `AGENTS.md` but not required by CI)
- Council or Zach approval for any future org-profile or policy wording changes (agents must not apply those edits directly)
- That other Vantio repos pick up these agent rules automatically (each repo maintains its own agent docs)

## Files added (not modified)

- `AGENTS.md`
- `.cursor/rules/agent-workflow.mdc`
- `.cursor/rules/agent-evidence.mdc`
- `.cursor/rules/agent-safety.mdc`
- `.cursor/rules/agent-claims.mdc`
- `scripts/check-org-agent-docs.sh`
- `evidence/cursor-setup.md`

**Not changed:** `profile/README.md`, community health files, `.github/workflows/ci.yml`, issue templates, PR template.
