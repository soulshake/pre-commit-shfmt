#!/usr/bin/env bash

set -e          # exit on command errors
set -o nounset  # abort on unbound variable
set -o pipefail # capture fail exit codes in piped commands
# set -x          # execution tracing debug messages

for f in $(git diff --cached --name-only | grep .sh$); do
    shfmt -l -i 4 -w "$f"
done
exit $?
