data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_postgresql_server" "this" {
  name                = var.postgresql_server_name
  resource_group_name = var.postgresql_server_resource_group_name != null ? var.postgresql_server_resource_group_name : var.resource_group_name

}


resource "azurerm_postgresql_virtual_network_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  server_name         = data.azurerm_postgresql_server.this.name
  subnet_id           = var.subnet_id

  ########################################
  # optional vars
  ########################################
  ignore_missing_vnet_service_endpoint = var.ignore_missing_vnet_service_endpoint
}
