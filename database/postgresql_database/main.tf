data "azurerm_postgresql_server" "this" {
  name                = var.postgresql_server_name
  resource_group_name = var.postgresql_server_resource_group_name == null ? null : var.postgresql_server_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_postgresql_database" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  server_name         = data.azurerm_postgresql_server.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  charset             = var.charset
  collation           = var.collation
}
