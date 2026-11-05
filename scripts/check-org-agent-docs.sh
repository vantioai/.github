#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

# Mirrors .github/workflows/ci.yml (Org profile CI file presence).
test -s README.md
test -s profile/README.md
test -s SECURITY.md
test -s SUPPORT.md
test -s CODE_OF_CONDUCT.md
test -s .github/PULL_REQUEST_TEMPLATE.md
test -s .github/ISSUE_TEMPLATE/bug_report.yml
test -s .github/ISSUE_TEMPLATE/feature_request.yml
test -s .github/ISSUE_TEMPLATE/config.yml

python3 <<'PY'
import pathlib
import yaml

for path in sorted(pathlib.Path(".github/ISSUE_TEMPLATE").glob("*.yml")):
    yaml.safe_load(path.read_text())
print("issue-templates-yaml-ok")
PY

test -s AGENTS.md
grep -q "## Repository map" AGENTS.md
grep -q "## Validation" AGENTS.md
grep -q "## Definition of done" AGENTS.md

for name in agent-workflow agent-evidence agent-safety agent-claims; do
  test -s ".cursor/rules/${name}.mdc"
done

echo "org-agent-docs-ok"
