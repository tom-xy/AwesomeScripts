#!/bin/bash

# Print each path in the PATH environment variable, supporting paths with spaces, line by line.

OLD_IFS="$IFS"
IFS=":" read -ra parts <<< "$PATH"
IFS="$OLD_IFS"

for part in "${parts[@]}"; do
  echo "$part"
done