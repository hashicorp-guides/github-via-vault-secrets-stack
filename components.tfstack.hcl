component "secrets" {
  source = "./vault_secrets"

  inputs = {
    vault_secrets_app_name    = var.vault_secrets_app_name
    vault_secrets_secret_name = var.vault_secrets_secret_name
  }

  providers = {
    hcp = provider.hcp.this
  }
}

component "github" {
  source = "./github"

  inputs = {
  }

  providers = {
    github = provider.github.this
  }
}
