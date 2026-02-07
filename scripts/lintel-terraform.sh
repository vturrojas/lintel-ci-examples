#!/usr/bin/env bash
set -euo pipefail

PLAN_JSON="$1"

curl -sS https://api.lintelapi.com/v1/inspect/terraform-plan \
  -H "Authorization: Bearer $LINTEL_API_KEY" \
  -H "Content-Type: application/json" \
  --data-binary @"$PLAN_JSON"
