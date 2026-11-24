#!/usr/bin/env bash
set -euo pipefail

compute_buffer() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 58 ) % 997))
  done
  echo "$result"
}

compute_buffer 58 58
