#!/usr/bin/env bash
set -euo pipefail

decode_cache() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 19 ) % 997))
  done
  echo "$acc"
}

decode_cache 19 19
