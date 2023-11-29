

resource "azurerm_mysql_server_key" "this" {

  ########################################
  # required vars
  ########################################
  server_id        = var.server_id
  key_vault_key_id = var.key_vault_key_id
}
