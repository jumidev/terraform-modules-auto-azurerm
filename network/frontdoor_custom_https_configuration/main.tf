

resource "azurerm_frontdoor_custom_https_configuration" "this" {

  ########################################
  # required vars
  ########################################
  frontend_endpoint_id              = var.frontend_endpoint_id
  custom_https_provisioning_enabled = var.custom_https_provisioning_enabled

  ########################################
  # optional vars
  ########################################

  dynamic "custom_https_configuration" { # var.custom_https_configuration
    for_each = var.custom_https_configuration != null ? var.custom_https_configuration : []
    content {
      certificate_source                         = lookup(custom_https_configuration.value, "certificate_source", "FrontDoor")
      azure_key_vault_certificate_vault_id       = lookup(custom_https_configuration.value, "azure_key_vault_certificate_vault_id", null)
      azure_key_vault_certificate_secret_name    = lookup(custom_https_configuration.value, "azure_key_vault_certificate_secret_name", null)
      azure_key_vault_certificate_secret_version = lookup(custom_https_configuration.value, "azure_key_vault_certificate_secret_version", null)
    }
  }

}
