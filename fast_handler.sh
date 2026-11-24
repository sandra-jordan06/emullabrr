#!/usr/bin/env bash
set -euo pipefail

parse_adapter() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 51 ) % 997))
  done
  echo "$acc"
}

parse_adapter 51 51
