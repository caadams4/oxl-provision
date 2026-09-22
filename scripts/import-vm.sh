#!/usr/bin/env bash
# import existing hand-made vms into a stack. usage: import-vm.sh stg api-stg-01 <vm id>
set -eu
stack=$1; name=$2; id=$3
cd "$(dirname "$0")/../stacks/$stack"
terraform import "module.api[\"$name\"].oxlantern_vm.this" "$id"
