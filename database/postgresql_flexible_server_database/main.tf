

resource "azurerm_postgresql_flexible_server_database" "this" {

  ########################################
  # required vars
  ########################################
  name      = var.name
  server_id = var.server_id

  ########################################
  # optional vars
  ########################################
  charset   = var.charset   # Default: UTF8
  collation = var.collation # Default: en_US.utf8
}
