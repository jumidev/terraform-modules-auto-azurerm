

resource "azurerm_postgresql_database" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  server_name         = var.server_name
  resource_group_name = var.resource_group_name
  charset             = var.charset
  collation           = var.collation
}
