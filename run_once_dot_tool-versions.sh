#!/bin/sh

# .tools-versions: {{ include ".tools-versions" | sha256sum }}

for plugin in $(cut -f1 '-d ' ~/.tool-versions); do
  asdf plugin add "$plugin"
done
exit 0
