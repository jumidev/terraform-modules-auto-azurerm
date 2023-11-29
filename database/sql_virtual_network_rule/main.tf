data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_sql_virtual_network_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  server_name         = var.server_name
  subnet_id           = var.subnet_id

  ########################################
  # optional vars
  ########################################
  ignore_missing_vnet_service_endpoint = var.ignore_missing_vnet_service_endpoint
}
