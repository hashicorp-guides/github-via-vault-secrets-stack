# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "identity_token" {
  type      = string
  ephemeral = true
}

variable "vault_secrets_app_name" {
  description = "The name of the Vault Secrets application"
  type        = string
}

variable "vault_secrets_secret_name" {
  description = "The name of the secret containing the GitHub token"
  type        = string
}

variable "workload_idp_name" {
  description = "The name of the workload IDP configured in the HCP Platform for Terraform Cloud to use"
  type        = string
}
