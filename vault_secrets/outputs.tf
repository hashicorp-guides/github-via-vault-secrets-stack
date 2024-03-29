# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "github_token" {
  description = "The static GitHub token stored securely in HCP Vault Secrets, fetched via OIDC authentication"

  # TODO: Stacks fail to serialize a sensitive value, so we temporarily nonsensitive() the value for
  # now. Without, it will fail with ".token: value has marks, so it cannot be serialized"
  value = nonsensitive(data.hcp_vault_secrets_secret.github_token.secret_value)
}
