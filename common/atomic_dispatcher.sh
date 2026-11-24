#!/usr/bin/env bash
set -euo pipefail

collect_service() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 79 ) % 997))
  done
  echo "$result"
}

collect_service 79 79
