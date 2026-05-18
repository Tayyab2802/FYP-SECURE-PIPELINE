# Evaluation Results

## Vulnerability Detection Comparison

| Test Case | Baseline Pipeline | Secure Pipeline | Detection Tool | Findings Detected |
|---|---|---|---|---|
| S3 Public Bucket | Passed | Failed | Checkov | Public access misconfiguration |
| Open Security Group | Passed | Failed | tfsec / Checkov | Overly permissive ingress rules |
| Vulnerable Docker Image | Passed | Failed | Trivy | Critical image vulnerabilities |

---

## CI Duration Comparison

| Test Case | Baseline Pipeline | Secure Pipeline | Percentage Increase |
|---|---|---|---|
| S3 Public Bucket | 24s | 48s | 100% |
| Open Security Group | 25s | 50s | 100% |
| Vulnerable Docker Image | 26s | 54s | 108% |

---

## Summary

The baseline pipeline successfully completed deployment workflows despite the presence of insecure Infrastructure-as-Code configurations and vulnerable container images. In contrast, the security-enforced pipeline integrated tfsec, Checkov, and Trivy to identify security weaknesses during CI execution, resulting in failed workflow runs when vulnerabilities were detected.

The evaluation demonstrates the trade-off between increased CI execution time and improved security visibility within the deployment pipeline.
