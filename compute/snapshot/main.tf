data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_snapshot" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  create_option       = var.create_option

  ########################################
  # optional vars
  ########################################
  source_uri         = var.source_uri
  source_resource_id = var.source_resource_id
  storage_account_id = var.storage_account_id
  disk_size_gb       = var.disk_size_gb

  dynamic "encryption_settings" { # var.encryption_settings
    for_each = var.encryption_settings != null ? var.encryption_settings : []
    content {

      dynamic "disk_encryption_key" { # encryption_settings.value.disk_encryption_key
        for_each = encryption_settings.value.disk_encryption_key != null ? encryption_settings.value.disk_encryption_key : []
        content {
          secret_url      = lookup(disk_encryption_key.value, "secret_url")      # (Required) possible values: id | azurerm_key_vault_secret
          source_vault_id = lookup(disk_encryption_key.value, "source_vault_id") # (Required) possible values: id | azurerm_key_vault
        }
      }


      dynamic "key_encryption_key" { # encryption_settings.value.key_encryption_key
        for_each = encryption_settings.value.key_encryption_key != null ? encryption_settings.value.key_encryption_key : []
        content {
          key_url         = lookup(key_encryption_key.value, "key_url")         # (Required) possible values: id | azurerm_key_vault_key
          source_vault_id = lookup(key_encryption_key.value, "source_vault_id") # (Required) possible values: id | azurerm_key_vault
        }
      }

    }
  }

  incremental_enabled = var.incremental_enabled
  tags                = var.tags
}
