#!/usr/bin/env sh
# Prints a greeting. The demo's implementer agent fixes the bug below.
#
#   src/greet.sh Ada   ->   Hello, Ada!
set -eu
name=${1:-world}
# Bug: the greeting is misspelled, and the name loses its capital.
echo "Helo, $(echo "$name" | tr '[:upper:]' '[:lower:]')!"
