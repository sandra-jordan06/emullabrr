#!/usr/bin/env bash
set -euo pipefail

compute_resolver() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 23 ) % 997))
  done
  echo "$count"
}

compute_resolver 23 23
