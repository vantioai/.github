# Vantio

**Linux security for AI.**

AI now runs on Linux servers, both AI you deployed and AI that arrives uninvited. Vantio keeps that activity in line: we show what AI is doing on your Linux systems, stop what it isn't allowed to do, and keep the rules in the hands of named people.

| Product | What it does | Availability |
| --- | --- | --- |
| [**Optics**](https://github.com/vantioai/vantio-optics) | Visibility. See every AI process on a Linux host, its outbound calls, and its MCP tool use. Observe only. | Free and open source (MIT) |
| [**Phantom Engine**](https://vantio.ai/phantom-engine) | Protection. Kernel-level rules on Linux hosts you enroll: approved destinations pass and everything else is stopped, including processes the AI starts. | Early access. [Contact us](https://vantio.ai) |
| **Enterprise** | Governance. A control plane over Phantom Engine where every rule change belongs to a named person who signs it. AI cannot grant itself or another AI permission. | Early access. [Contact us](https://vantio.ai) |

## Start with Optics

```bash
npm install -g @vantio/cli
vantio run node agent.js
```

Python: `pip install vantio-agent-sdk`. See the [Optics README](https://github.com/vantioai/vantio-optics#readme) for pinned versions, Python usage, and the MCP server.

## Why below the AI

A prompt is a request. A kernel rule is not. Vantio enforces where the AI can't negotiate with it: in the Linux kernel on the machines you own.

## Links

- Website: [vantio.ai](https://vantio.ai)
- Security reports: see [SECURITY.md](https://github.com/vantioai/.github/blob/main/SECURITY.md)

Vantio AI, Inc. · Pittsburgh, PA
