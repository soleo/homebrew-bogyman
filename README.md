# homebrew-bogyman

Homebrew tap for [bogyman](https://github.com/soleo/bogyman-cli): which of your
agent sessions needs you, on what, and for how long.

```sh
brew install soleo/bogyman/bogyman
bogyman install   # wires Claude Code and Codex hooks
bogyman doctor    # confirms events arrive
```

The formula installs the prebuilt release binaries for macOS (Apple silicon
and Intel) and Linux (x86_64 and arm64). bogyman-cli's release workflow
updates `Formula/bogyman.rb` on every stable release, using
`scripts/homebrew-formula.sh` from that repo.
