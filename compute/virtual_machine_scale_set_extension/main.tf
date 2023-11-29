

resource "azurerm_virtual_machine_scale_set_extension" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  virtual_machine_scale_set_id = var.virtual_machine_scale_set_id
  publisher                    = var.publisher
  type                         = var.type
  type_handler_version         = var.type_handler_version

  ########################################
  # optional vars
  ########################################
  auto_upgrade_minor_version  = var.auto_upgrade_minor_version # Default: True
  automatic_upgrade_enabled   = var.automatic_upgrade_enabled
  failure_suppression_enabled = var.failure_suppression_enabled # Default: False
  force_update_tag            = var.force_update_tag
  protected_settings          = var.protected_settings

  dynamic "protected_settings_from_key_vault" { # var.protected_settings_from_key_vault
    for_each = var.protected_settings_from_key_vault != null ? var.protected_settings_from_key_vault : []
    content {
      secret_url      = lookup(protected_settings_from_key_vault.value, "secret_url")      # (Required) 
      source_vault_id = lookup(protected_settings_from_key_vault.value, "source_vault_id") # (Required) 
    }
  }

  provision_after_extensions = var.provision_after_extensions
  settings                   = var.settings
}
