# Dockerfile Security Linter

Lintel analyzes Dockerfiles for insecure defaults and unsafe patterns.

## Input format
This endpoint expects JSON:

```json
{
  "dockerfile": "FROM alpine:3.20\nRUN apk add --no-cache curl\n"
}
```

## jq helper
Convert an existing Dockerfile to JSON:

```bash
jq -Rs '{dockerfile: .}' Dockerfile > dockerfile.json
```

## API
POST https://api.lintelapi.com/v1/inspect/dockerfile

## Minimal curl
```bash
curl -sS https://api.lintelapi.com/v1/inspect/dockerfile \
  -H "Authorization: Bearer $LINTEL_API_KEY" \
  -H "Content-Type: application/json" \
  --data-binary @dockerfile.json | jq .
```

## CI example
- GitHub Actions: dockerfile/github-actions/lintel-dockerfile.yml
