

resource "azurerm_iothub_device_update_instance" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  device_update_account_id = var.device_update_account_id
  iothub_id                = var.iothub_id

  ########################################
  # optional vars
  ########################################

  dynamic "diagnostic_storage_account" { # var.diagnostic_storage_account
    for_each = var.diagnostic_storage_account != null ? var.diagnostic_storage_account : []
    content {
      connection_string = lookup(diagnostic_storage_account.value, "connection_string") # (Required) 
    }
  }

  diagnostic_enabled = var.diagnostic_enabled # Default: False
  tags               = var.tags
}
