#!/bin/sh

export GPG_TTY="$(tty)"
exec "$HOME/.local/share/mise/shims/gopass-jsonapi" listen

