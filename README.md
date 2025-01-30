# KubeFest Infrastructure

This repository manages the infrastructure and DNS configuration for KubeFest events through different years. It handles the domain `kubefest.com` and its subdomains for each edition of the conference.

## Repository Structure

The infrastructure is managed using Terraform and includes:

- DNS configuration for kubefest.com
- Cloudflare zone and record management
- GitHub Actions for infrastructure deployment and validation

## Event Websites

Each KubeFest event has its own dedicated repository:

- [KubeFest 2024](https://github.com/cloudnativerioja/kubefest-2024)
- [KubeFest 2025](https://github.com/cloudnativerioja/kubefest-2025)
- Future editions will be added as they are created

## Infrastructure Management

The infrastructure is managed through Terraform and automatically deployed using GitHub Actions. The workflow includes:

- Automated PR checks for infrastructure changes
- Security scanning using tfsec
- Automatic deployment to production when changes are merged to master

## Contributing instructions

1. Create a new branch
2. Make your changes
3. Open a Pull Request
4. Wait for the automated checks to pass
5. Get approval from maintainers
