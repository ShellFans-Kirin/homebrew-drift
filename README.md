# Homebrew tap for Drift AI

This is the Homebrew tap for [**Drift AI**](https://github.com/ShellFans-Kirin/drift_ai) —
a local-first CLI that captures AI coding sessions (Claude Code + Codex),
compacts them, and binds them to git commits via `refs/notes/drift`.

## Install

```bash
brew install ShellFans-Kirin/drift/drift
```

or, equivalently:

```bash
brew tap ShellFans-Kirin/drift
brew install drift
```

## How this tap stays current

Formula updates are automated. Whenever `drift_ai` publishes a new
[release](https://github.com/ShellFans-Kirin/drift_ai/releases), its
`release.yml` workflow fires a `repository_dispatch` event of type
`drift-released` at this tap, and the `update-formula.yml` workflow here
regenerates `Formula/drift.rb` against the new tag's artefacts.

## Layout

- `Formula/drift.rb` — generated Formula (per-release)
- `.github/workflows/update-formula.yml` — dispatch listener that updates the Formula on release

## About

- Upstream: <https://github.com/ShellFans-Kirin/drift_ai>
- License: [Apache-2.0](https://github.com/ShellFans-Kirin/drift_ai/blob/main/LICENSE)
