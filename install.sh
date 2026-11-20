#!/bin/sh
set -eu

export PATH="$HOME/.local/bin:$PATH"
command -v mise >/dev/null 2>&1 || curl -fsSL https://mise.run | sh

mise bootstrap \
  --adopt joke/dotfiles \
  --update \
  --force-dotfiles \
  --yes
