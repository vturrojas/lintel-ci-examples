# Terraform Plan Risk Inspector

Lintel inspects Terraform plan JSON and returns deterministic security and operational findings **before apply**.

## Requirements

- Terraform ≥ 1.x
- API key from Lintel

## Flow

1. Generate a plan
2. Convert plan to JSON
3. Send JSON to Lintel
4. Review findings
5. Decide what to do (Lintel does not enforce)

## Examples

- [GitHub Actions](github-actions/lintel-terraform.yml)
- [GitLab CI](gitlab-ci/lintel-terraform.gitlab-ci.yml)

Each example:
- Fails fast on API errors
- Prints JSON results to logs
- Does not block by default
