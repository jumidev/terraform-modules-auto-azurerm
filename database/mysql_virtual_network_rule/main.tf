data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_mysql_server" "this" {
  name                = var.mysql_server_name
  resource_group_name = var.mysql_server_resource_group_name == null ? null : var.mysql_server_resource_group_name
}


resource "azurerm_mysql_virtual_network_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  server_name         = data.azurerm_mysql_server.this.name
  subnet_id           = var.subnet_id
}
