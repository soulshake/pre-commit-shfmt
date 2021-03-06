#!/usr/bin/env bash

set -o nounset  # abort on unbound variable
set -o pipefail # capture fail exit codes in piped commands
# set -x          # execution tracing debug messages

echo "--> begin shfmt"

for f in $(git diff --cached --diff-filter=AM --name-only | grep .sh$); do
    shfmt -i 2 -w "$f"
done
