#!/usr/bin/env bash
set -euo pipefail

decode_cache() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 93 ) % 997))
  done
  echo "$value"
}

decode_cache 93 93
