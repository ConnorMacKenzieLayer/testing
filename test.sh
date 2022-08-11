#!/bin/bash

tests=($(find tests))

echo "tests to run:"
printf '  %s\n' "${tests[@]}"

parallel --compress --halt now,fail=1 ./ ::: ${tests[@]}
