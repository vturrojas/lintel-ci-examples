#!/usr/bin/env bash
set -euo pipefail

DOCKERFILE="${1:-Dockerfile}"

jq -Rs '{dockerfile: .}' "$DOCKERFILE" | curl -sS https://api.lintelapi.com/v1/inspect/dockerfile \
  -H "Authorization: Bearer $LINTEL_API_KEY" \
  -H "Content-Type: application/json" \
  --data-binary @-
