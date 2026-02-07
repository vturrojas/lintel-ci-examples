# Lintel CI Examples

Minimal, copy-paste examples for using **Lintel** in CI/CD pipelines.

Lintel is an advisory-only security inspection API for:
- Terraform plan JSONs
- Dockerfiles
- (Coming soon) dependency manifests

No agents. No enforcement. Deterministic output you can trust.

👉 Docs: https://lintelapi.com/docs  
👉 Pricing: https://lintelapi.com/pricing  

---

## Quick start (5 minutes)

1. **Request an API key**  
   Email **support@lintelapi.com**

2. **Export your key in CI:**
```bash
export LINTEL_API_KEY=your_key_here
```

3. **Pick an example:**

### Terraform Plan Risk Inspector

Lintel inspects a Terraform plan JSON before `terraform apply`.

| CI | Example |
|----|--------|
| GitHub Actions | [terraform/github-actions/lintel-terraform.yml](terraform/github-actions/lintel-terraform.yml) |
| GitLab CI | [terraform/gitlab-ci/lintel-terraform.gitlab-ci.yml](terraform/gitlab-ci/lintel-terraform.gitlab-ci.yml) |

See: [terraform/](terraform/)

### Dockerfile Security Linter

Lintel analyzes Dockerfiles for insecure defaults and unsafe patterns.

| CI | Example |
|----|--------|
| GitHub Actions | [dockerfile/github-actions/lintel-dockerfile.yml](dockerfile/github-actions/lintel-dockerfile.yml) |

See: [dockerfile/](dockerfile/)

---

## Design philosophy

- **Read-only** — Lintel does not modify your configs
- **Advisory-only** — Surface risks, not block developers
- **Stateless** — CI/CD friendly
- **No data retention** beyond request processing

Lintel is designed to surface risks — not block developers.

---

## Feedback

This repo is intentionally minimal.

If something is unclear or missing, open an issue or email: **support@lintelapi.com**
