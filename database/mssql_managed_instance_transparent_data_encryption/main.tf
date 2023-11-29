

resource "azurerm_mssql_managed_instance_transparent_data_encryption" "this" {

  ########################################
  # required vars
  ########################################
  managed_instance_id = var.managed_instance_id

  ########################################
  # optional vars
  ########################################
  key_vault_key_id      = var.key_vault_key_id
  auto_rotation_enabled = var.auto_rotation_enabled
}
