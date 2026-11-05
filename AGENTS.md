# Agent guide

Working map for Cursor cloud agents in `vantioai/.github`. This repository is **public**. It holds the GitHub organization profile, community health defaults, and shared templates — not product source code.

Human contributor flow stays in [CONTRIBUTING.md](CONTRIBUTING.md). CI for required files is [`.github/workflows/ci.yml`](.github/workflows/ci.yml). Read that workflow before changing it; edit workflows only when the task is that workflow.

Scoped agent rules live in [`.cursor/rules/`](.cursor/rules/) (`agent-workflow`, `agent-evidence`, `agent-safety`, `agent-claims`). They apply in addition to this file.

## Repository map

| Path | What it is |
| --- | --- |
| `profile/README.md` | Organization profile README shown on github.com/vantioai. **Agents do not edit.** List suggestions only. |
| `README.md` | Short pointer to the org profile and this repo. |
| `CONTRIBUTING.md` | Public contribution posture across Vantio repos. **Do not change policy meaning.** |
| `CODE_OF_CONDUCT.md`, `SECURITY.md`, `SUPPORT.md` | Community health files. **Do not change policy meaning.** |
| `.github/PULL_REQUEST_TEMPLATE.md` | Default PR template for org repos. |
| `.github/ISSUE_TEMPLATE/*.yml` | GitHub issue forms (YAML). |
| `.github/workflows/ci.yml` | Checks that required org metadata files exist. |
| `AGENTS.md` | This map, validation commands, definition of done. |
| `.cursor/rules/` | Always-on Cursor cloud agent rules. |
| `scripts/check-org-agent-docs.sh` | Local validation for metadata + agent docs (see Validation). |
| `evidence/` | Agent verification notes (`evidence/<name>.md`). |

There are no workflow **templates** under `.github` today — only `ci.yml`.

## Validation

Run from the repository root after your change. Record commands, exit codes, and `git rev-parse HEAD` in `evidence/<name>.md` and in the draft PR body.

### Org metadata (mirrors CI)

```bash
bash scripts/check-org-agent-docs.sh
```

Expected last line: `org-agent-docs-ok`, exit code `0`.

### Issue form YAML only

```bash
python3 <<'PY'
import pathlib, yaml
for p in sorted(pathlib.Path(".github/ISSUE_TEMPLATE").glob("*.yml")):
    yaml.safe_load(p.read_text())
print("issue-templates-yaml-ok")
PY
```

Parsing YAML does not prove GitHub renders the forms correctly in the UI.

### Markdown

There is no markdown linter in CI. For agent-only markdown (`AGENTS.md`, `evidence/*.md`, `.cursor/rules/*.mdc`), review by diff. Optional local check if `markdownlint-cli2` is installed:

```bash
npx --yes markdownlint-cli2 "AGENTS.md" "evidence/**/*.md" ".cursor/rules/**/*.mdc"
```

Do not treat an optional linter pass as required unless CI adds it.

## Definition of done

A task is done when all of the following hold:

1. **One scope, small diff.** Docs and agent config only unless the task explicitly includes something else. No change to the meaning of existing community health files or org profile text without human council review (agents list suggestions instead).
2. **Draft PR only.** One draft pull request; leave it in draft. Do not merge. Do not push to `main`.
3. **Validation run.** `bash scripts/check-org-agent-docs.sh` exits `0` on the commit you cite (plus any extra checks you ran).
4. **Evidence.** `evidence/<name>.md` lists each command, exit code, git SHA, and a gap list (what only GitHub UI, council review, or a maintainer can prove).
5. **Claims.** The PR body states only what those commands and logs prove on that SHA.
6. **Safety.** No secrets, keys, tokens, or customer data in the diff or logs. No workflow dispatch, tags, publishes, deploys, or cloud agent runs triggered from this task.
