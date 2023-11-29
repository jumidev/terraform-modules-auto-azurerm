data "azurerm_mariadb_server" "this" {
  name                = var.mariadb_server_name
  resource_group_name = var.mariadb_server_resource_group_name == null ? null : var.mariadb_server_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_mariadb_database" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  server_name         = data.azurerm_mariadb_server.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  charset             = var.charset
  collation           = var.collation
}
