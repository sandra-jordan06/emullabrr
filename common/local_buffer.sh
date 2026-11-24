#!/usr/bin/env bash
set -euo pipefail

encode_loader() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 56 ) % 997))
  done
  echo "$result"
}

encode_loader 56 56
