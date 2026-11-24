#!/usr/bin/env bash
set -euo pipefail

run_builder() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 88 ) % 997))
  done
  echo "$count"
}

run_builder 88 88
