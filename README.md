# # FYP Secure Pipeline

## Overview

This project demonstrates a security-focused CI/CD pipeline built using AWS, Terraform, Docker, and GitHub Actions.

The aim of the project was to evaluate how automated security scanning can be integrated into a CI/CD workflow to detect vulnerabilities before deployment.

The project was developed as part of a final year Cyber Security project

---

# Technologies Used

* Terraform
* Docker
* GitHub Actions
* AWS ECS Fargate
* Amazon ECR
* Amazon S3
* Amazon CloudFront
* tfsec
* Checkov
* Trivy

---

# AWS Architecture

The application is deployed using:

* Amazon VPC
* Public subnets across two Availability Zones
* Application Load Balancer (ALB)
* Amazon ECS Fargate
* Amazon ECR
* Amazon S3 frontend hosting
* Amazon CloudFront
  

---

# CI/CD Pipelines

## Secure CI Pipeline

The secure pipeline performs:

* Terraform formatting and validation
* tfsec scanning
* Checkov scanning
* Docker image build
* Trivy vulnerability scanning

The pipeline fails when vulnerabilities are detected.

---

## Baseline Pipeline

A separate baseline pipeline was created without security scanning.

This was used to compare the behaviour of a normal CI pipeline against a security-enforced pipeline.

---

# Demonstrated Vulnerabilities

The project includes controlled vulnerability demonstrations.

## Examples

* Public S3 bucket configuration
* Open security group ingress
* Vulnerable Docker image

Vulnerable demo files are stored separately and copied into the `infra/` directory during demonstrations to trigger scanner detection.

---

# Terraform State Management

The project uses:

* Amazon S3 backend storage
* DynamoDB state locking

This enables remote Terraform state management and prevents concurrent state modification.

---

# Project Structure

```text
FYP-SECURE-PIPELINE/
│
├── .github/workflows/
├── infra/
├── src/
├── demo-files/
└── README.md
```

---

# Key Features

* Infrastructure as Code using Terraform
* Containerised application deployment
* Automated security scanning
* AWS cloud deployment
* CI/CD automation
* Vulnerability detection demonstrations

---

# Future Improvements

Potential future improvements include:

* Multi-environment deployments
* HTTPS enforcement
* WAF integration
* Immutable Docker image tagging
* Automated rollback functionality
* Production-ready deployment workflows

---

# Author

Tayyab Khalid

Final Year Cyber Security Project

