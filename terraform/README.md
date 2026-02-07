# Terraform Plan Risk Inspector

Lintel inspects Terraform plan JSON and returns deterministic security and operational findings **before apply**.

## Input
Generate plan JSON:

```bash
terraform plan -out=plan.out
terraform show -json plan.out > plan.json
```

## API
POST https://api.lintelapi.com/v1/inspect/terraform-plan

## Minimal curl
```bash
curl -sS https://api.lintelapi.com/v1/inspect/terraform-plan \
  -H "Authorization: Bearer $LINTEL_API_KEY" \
  -H "Content-Type: application/json" \
  --data-binary @plan.json | jq .
```

## CI examples
- GitHub Actions: terraform/github-actions/lintel-terraform.yml
- GitLab CI: terraform/gitlab-ci/lintel-terraform.gitlab-ci.yml
