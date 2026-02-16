#!/bin/bash

for file in *\(*\)*; do
  if [[ "$file" =~ ^(.*\([0-9]{4}\)) ]]; then
    new_name="${BASH_REMATCH[1]}"
    if [[ "$file" != "$new_name" ]]; then
      echo "Renaming: $file -> $new_name"
      mv -n "$file" "$new_name"
    fi
  fi
done