# Security Policy

## Scope

This security policy covers **public** Vantio GitHub repositories under `vantioai`, primarily:

- `vantio-open-core` — Vantio Optics open-core (CLI, SDKs, observe-only MCP)
- `vantio-optics-cursor-plugin` — Cursor/MCP observe-only plugin

**Phantom Engine** source is private and is not an open contribution or public disclosure surface via these repos.

## Reporting a vulnerability

Please report suspected security issues responsibly:

- Email: **security@vantio.ai** (preferred)
- Or open a **private** GitHub Security Advisory on the affected public repository, if enabled

Do **not** open a public issue for unfixed vulnerabilities.

Include: affected package/repo, version or commit, reproduction steps, and impact. Avoid attaching secrets, customer data, or prompts/completions.

## What we will do

We will acknowledge receipt when we can and work to understand and fix confirmed issues in public Optics packages. We do **not** promise a response time.

## Safe harbor

Good-faith research that stays within legal and ethical bounds, and that does not disrupt production customer systems, is appreciated. Do not access data that is not yours.

## Supported versions

Security fixes are applied to current published Optics package lines on a best-effort basis. Older tags may not receive backports.

## Out of scope for public reports via this policy

- Social engineering
- Denial-of-service against third-party infrastructure you do not own
- Issues in private Phantom Engine source (contact security@vantio.ai instead)
