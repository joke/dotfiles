#!/bin/sh
set -ex

echo "@1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" >&2

mkdir -m go= -p "$HOME/.ssh"
ssh-keyscan github.com 2>/dev/null > "$HOME/.ssh/known_hosts"

echo "@1@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@" >&2
