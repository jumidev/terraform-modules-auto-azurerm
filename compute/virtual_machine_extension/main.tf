

resource "azurerm_virtual_machine_extension" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  virtual_machine_id   = var.virtual_machine_id
  publisher            = var.publisher
  type                 = var.type
  type_handler_version = var.type_handler_version

  ########################################
  # optional vars
  ########################################
  auto_upgrade_minor_version  = var.auto_upgrade_minor_version
  automatic_upgrade_enabled   = var.automatic_upgrade_enabled
  settings                    = var.settings
  failure_suppression_enabled = var.failure_suppression_enabled # Default: False
  protected_settings          = var.protected_settings

  dynamic "protected_settings_from_key_vault" { # var.protected_settings_from_key_vault
    for_each = var.protected_settings_from_key_vault != null ? var.protected_settings_from_key_vault : []
    content {
      secret_url      = lookup(protected_settings_from_key_vault.value, "secret_url")      # (Required) 
      source_vault_id = lookup(protected_settings_from_key_vault.value, "source_vault_id") # (Required) 
    }
  }

  provision_after_extensions = var.provision_after_extensions
  tags                       = var.tags
}
