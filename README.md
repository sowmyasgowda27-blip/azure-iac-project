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
