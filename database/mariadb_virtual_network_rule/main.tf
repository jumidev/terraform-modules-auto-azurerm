data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_mariadb_server" "this" {
  name                = var.mariadb_server_name
  resource_group_name = var.mariadb_server_resource_group_name != null ? var.mariadb_server_resource_group_name : var.resource_group_name

}


resource "azurerm_mariadb_virtual_network_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  server_name         = data.azurerm_mariadb_server.this.name
  subnet_id           = var.subnet_id
}
