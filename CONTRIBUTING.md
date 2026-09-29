# Contributing to Vantio public repositories

Thank you for your interest. Vantio is machine authority infrastructure for artificial intelligence. Public open-core work here is **Vantio Optics** (observe / Sight Loop). Phantom Engine is private. Integrity: **no fake maturity**.

## Where to contribute

| Repository | Posture |
|---|---|
| `vantio-open-core` | Limited external contributions welcome for Optics CLI/SDKs/observe MCP (Ring-3 user-space) |
| `vantio-optics-cursor-plugin` | Limited — small observe-only Cursor/MCP plugin |
| `vantio-phantom-engine` | **Private** — not an open contribution surface |
| `autonomous-ops-framework` | **Archived legacy** (archived 2026-09-29, read-only) — not a current product; do not treat as an active contribution target |

## How we review

Maintainers review pull requests on a **best-effort** basis. There is **no response-time or merge promise**.

## Before you open a PR

1. Search existing issues/PRs.
2. Keep changes scoped to Optics observe / public packages.
3. Do not introduce eBPF, kernel probes, or dependencies on private Phantom Engine source.
4. For TypeScript: no `any`; use `unknown` with guards.
5. Use `pnpm` only in `vantio-open-core` (no npm/yarn lockfile commits).

## Development (vantio-open-core)

```bash
pnpm install
pnpm build
```

See the repo root `CONTRIBUTING.md` on `vantio-open-core` for package-specific commands. Prefer current published package versions from npm/PyPI over any stale pins in docs.

## Code of conduct

See CODE_OF_CONDUCT.md.

## License

Published Optics packages declare MIT in their package manifests. A root LICENSE on `vantio-open-core` is planned for consistency — do not assume legal certainty from this contributing note alone.
