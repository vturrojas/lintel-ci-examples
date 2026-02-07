# Dockerfile Security Linter

Lintel inspects Dockerfiles for insecure defaults and unsafe patterns.

## Input format

Dockerfiles are sent as JSON:

```json
{
  "dockerfile": "FROM alpine:3.20\nRUN apk add --no-cache curl\n"
}
```

### jq helper

Convert an existing Dockerfile to JSON:

```bash
jq -Rs '{dockerfile: .}' Dockerfile > dockerfile.json
```

## Example

See [GitHub Actions](github-actions/lintel-dockerfile.yml).
