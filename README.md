# Azure Infrastructure as Code (IaC) with Terraform

## Project Overview

This project showcases my hands-on learning and implementation of **Infrastructure as Code (IaC)** using **Terraform** on **Microsoft Azure**.

The objective is to provision, manage, and maintain Azure infrastructure entirely through code instead of using the Azure Portal. Throughout this project, I apply Terraform best practices such as reusable configurations, modular design, state management, and version control with Git and GitHub while building a secure and maintainable cloud environment.

This repository serves as a practical cloud infrastructure project and documents my learning journey in Azure, Terraform, and Infrastructure as Code.

---

## Technologies Used

* Microsoft Azure
* Terraform
* Azure CLI
* Git
* GitHub

---

## Learning Objectives

* Provision Azure infrastructure using Terraform.
* Understand Infrastructure as Code (IaC) principles.
* Build reusable and maintainable Terraform configurations.
* Implement Terraform modules and state management.
* Practice version control using Git and GitHub.
* Develop practical cloud infrastructure skills through a real-world project.

---

## Completed Phases

### ✅ Phase 1 – Azure Infrastructure Foundation

**Objective**

Build the foundational Azure networking infrastructure using Terraform.

**Resources Created**

* Azure Resource Group
* Azure Virtual Network (VNet)
* Public Subnet
* Private Subnet
* Network Security Group (NSG)
* NSG Association with the Public Subnet

**Terraform Concepts Learned**

* Provider configuration
* Resource blocks
* Terraform initialization
* Planning and applying infrastructure
* Resource dependencies
* Variables
* Outputs

**Outcome**

Successfully provisioned the complete Azure networking foundation using Infrastructure as Code.

---

### ✅ Phase 2 – Refactoring with Terraform Modules

**Objective**

Refactor the networking resources into a reusable Terraform module without recreating the existing Azure infrastructure.

**Changes Implemented**

* Created a reusable `network` module.
* Moved networking resources from the root module into the child module.
* Passed deployment values from the root module to the child module.
* Migrated Terraform state using `terraform state mv` to preserve the existing Azure resources.

**Terraform Concepts Learned**

* Terraform Modules
* Root Module vs Child Module
* Module inputs
* Terraform State
* State migration
* Infrastructure refactoring

**Outcome**

Successfully reorganized the Terraform project into a modular structure while preserving the deployed Azure infrastructure. The final Terraform plan confirmed that the infrastructure matched the updated configuration with no pending changes.

---

## Project Structure

```text
terraform/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
└── modules/
    └── network/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf
```

# Phase 3 – CI/CD Automation with GitHub Actions

## Overview

In this phase, Continuous Integration (CI) was introduced using GitHub Actions to automate the validation of Terraform code. The workflow ensures that infrastructure changes are checked for formatting, validated, and planned automatically before deployment.

## Objectives

- Implement CI using GitHub Actions
- Automate Terraform validation
- Enforce consistent code formatting
- Detect configuration issues before deployment
- Improve the Infrastructure as Code development workflow

## Workflow

The GitHub Actions workflow runs automatically on every push and pull request and performs the following steps:

1. Checkout the repository
2. Set up Terraform
3. Initialize Terraform
4. Run `terraform fmt -check`
5. Run `terraform validate`
6. Run `terraform plan`

## Skills Demonstrated

- GitHub Actions
- CI/CD fundamentals
- Terraform automation
- YAML workflow configuration
- Infrastructure as Code (IaC)
- Version control best practices

## Outcome

The project now includes an automated CI pipeline that validates Terraform configurations before deployment, improving code quality, consistency, and reliability.

## Screenshots

> Screenshots will be added after the project is completed.

---

## Phase 4 – Security

### Objective

Improve the security of the Azure infrastructure by implementing network security, secure authentication, and secure Terraform state management following cloud security best practices.

### Implementations

* Configured Network Security Group (NSG) rules following the Principle of Least Privilege.
* Allowed HTTPS (443) traffic while restricting SSH (22) and RDP (3389).
* Created a secure Azure Storage Account for Terraform remote state.
* Enforced HTTPS-only communication for the Storage Account.
* Disabled public blob access.
* Created a private Blob Container (`tfstate`) to securely store the Terraform state file.
* Configured Terraform to use Azure Blob Storage as the remote backend.
* Migrated the local `terraform.tfstate` file to Azure Storage.
* Implemented secure authentication using an Azure Service Principal.
* Stored Azure credentials securely using GitHub Secrets.
* Configured GitHub Actions to authenticate to Azure without exposing credentials in source code.

### Security Decisions

* Applied the Principle of Least Privilege to network access and Azure permissions.
* Protected Terraform state by storing it in a private Azure Blob Container.
* Used HTTPS to encrypt data in transit.
* Avoided storing sensitive credentials in the GitHub repository.
* Used a dedicated Service Principal instead of a personal Azure account for automation.

### Outcome

At the end of Phase 4, the project follows key Infrastructure-as-Code security practices, including secure network access, secure authentication for CI/CD, and protected remote Terraform state storage, making the deployment more secure, maintainable, and closer to production-ready cloud environments.

