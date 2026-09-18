#!/usr/bin/env bash
# fails if terraform fmt would change anything
set -eu
cd "$(dirname "$0")/.."
if ! terraform fmt -recursive -check -diff; then
  echo "run make fmt" >&2
  exit 1
fi
