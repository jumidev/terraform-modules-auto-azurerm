

resource "azurerm_storage_container" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  storage_account_name = var.storage_account_name

  ########################################
  # optional vars
  ########################################
  container_access_type             = var.container_access_type # Default: private
  default_encryption_scope          = var.default_encryption_scope
  encryption_scope_override_enabled = var.encryption_scope_override_enabled # Default: True
  metadata                          = var.metadata
}
