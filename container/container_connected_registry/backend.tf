terraform {
  #required_version = ">= 0.12.0"
  # required_providers {
  #   azurerm = "~> 2.4.0"
  # }

  backend "local" {}
}

provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "~> v3.109.0"
  # client_id       = var.azure_client_id
  # client_secret   = var.azure_client_secret
  # tenant_id       = var.azure_tenant_id
  # subscription_id = var.azure_subscription_id
  features {}

}

# variable azure_client_id {
#   type = string
# }

# variable azure_client_secret {
#   type = string
# }

# variable azure_tenant_id {
#   type = string
# }

# variable azure_subscription_id {
#   type = string
# }