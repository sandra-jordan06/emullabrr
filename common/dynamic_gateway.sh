#!/usr/bin/env bash
set -euo pipefail

handle_cache() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 80 ) % 997))
  done
  echo "$acc"
}

handle_cache 80 80
