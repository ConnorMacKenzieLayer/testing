#!/bin/bash
tests=($(find tests | sed 1d))

echo "tests to run:"
printf '  %s\n' "${tests[@]}"
