

resource "azurerm_mssql_server_transparent_data_encryption" "this" {

  ########################################
  # required vars
  ########################################
  server_id = var.server_id

  ########################################
  # optional vars
  ########################################
  key_vault_key_id      = var.key_vault_key_id
  auto_rotation_enabled = var.auto_rotation_enabled
}
