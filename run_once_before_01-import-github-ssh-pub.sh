#!/bin/sh
set -e

mkdir -m go= -p .ssh
ssh-keyscan github.com 2>/dev/null > '.ssh/known_hosts'
