#!/bin/bash
set -e
tests=($(find tests | sed 1d))

echo "tests to run:"
printf '  %s\n' "${tests[@]}"

echo tests

parallel --halt now,fail=1 :::./${tests[@]}
