#!/bin/sh

export GPG_TTY="$(tty)"
exec gopass-jsonapi listen
