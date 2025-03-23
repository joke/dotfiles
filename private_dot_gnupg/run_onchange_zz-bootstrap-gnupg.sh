#!/bin/sh
set -e

echo "$(tput setaf 2 bold)****************************** -> Importing gpg keys$(tput sgr0)"

gpg --recv 0x7F827DD2737CE0B146FE632A86AA80787A77AAD9
gpg --recv 0x864E8B951ECFC04AF2BB233E5E5CCCB4A4BF43D7
gpg --import-ownertrust << EOF
7F827DD2737CE0B146FE632A86AA80787A77AAD9:6:
864E8B951ECFC04AF2BB233E5E5CCCB4A4BF43D7:6:
EOF

echo "$(tput setaf 2 bold)****************************** <- Importing gpg keys$(tput sgr0)"
