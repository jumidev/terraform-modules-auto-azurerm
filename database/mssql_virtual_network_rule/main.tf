

resource "azurerm_mssql_virtual_network_rule" "this" {

  ########################################
  # required vars
  ########################################
  name      = var.name
  server_id = var.server_id
  subnet_id = var.subnet_id

  ########################################
  # optional vars
  ########################################
  ignore_missing_vnet_service_endpoint = var.ignore_missing_vnet_service_endpoint # Default: False
}
