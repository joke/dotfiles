#!/bin/sh
set -e

# mise already installed
command -v mise >/dev/null 2>&1 && exit 0

echo "$(tput setaf 2 bold)****************************** -> bootstrap mise$(tput sgr0)"

wget="$(command -v wget 2>/dev/null)"
curl="$(command -v curl 2>/dev/null)"

export \
  MISE_INSTALL_HELP=0 \
  MISE_INSTALL_PATH="$HOME/.local/bin/mise" \
  PATH="$HOME/.local/bin:$PATH"

mkdir -p "$HOME/.local/bin"

if [ -n "$curl" ]; then
  "$curl" -sfL https://mise.run | sh
elif [ -n "$wget" ]; then
  "$wget" -qO- https://mise.run | sh
else
  echo "Neither curl nor wget detected" >&2
fi

"$MISE_INSTALL_PATH" use -g ubi:jdx/mise[matching=musl]@latest
ln -sf ../share/mise/installs/ubi-jdx-mise/latest/mise "$HOME/.local/bin/mise"

echo "$(tput setaf 2 bold)****************************** <- bootstrap mise$(tput sgr0)"
