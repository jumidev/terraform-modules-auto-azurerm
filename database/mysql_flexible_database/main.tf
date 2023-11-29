data "azurerm_mysql_flexible_server" "this" {
  name                = var.mysql_flexible_server_name
  resource_group_name = var.mysql_flexible_server_resource_group_name == null ? null : var.mysql_flexible_server_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_mysql_flexible_database" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  server_name         = data.azurerm_mysql_flexible_server.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  charset             = var.charset
  collation           = var.collation
}
