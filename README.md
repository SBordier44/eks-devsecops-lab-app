# eks-devsecops-lab-app

This repository contains a simple **Go application** used to demonstrate a secure container supply chain.

The application itself is intentionally minimal. The main objective is to implement and demonstrate **DevSecOps practices** around container images.

## Goals

- Build container images with Docker
- Scan images using Trivy
- Generate SBOM using Syft
- Sign images using Cosign
- Push images to Amazon ECR
- Deploy to Kubernetes using GitOps

## CI/CD

The CI pipeline will run on GitHub Actions and will perform:

- build
- security scanning
- SBOM generation
- image signing
- push to container registry

## Related repositories

Infrastructure: [eks-devsecops-lab-infra](https://github.com/SBordier44/eks-devsecops-lab-infra)

GitOps deployment: [eks-devsecops-lab-gitops](https://github.com/SBordier44/eks-devsecops-lab-gitops)

Documentation: [eks-devsecops-lab-docs](https://github.com/SBordier44/eks-devsecops-lab-docs)
