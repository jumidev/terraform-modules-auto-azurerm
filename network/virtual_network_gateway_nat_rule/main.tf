data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_network_gateway_nat_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  resource_group_name        = data.azurerm_resource_group.this.name
  virtual_network_gateway_id = var.virtual_network_gateway_id
  external_mapping           = var.external_mapping
  internal_mapping           = var.internal_mapping

  ########################################
  # optional vars
  ########################################
  ip_configuration_id = var.ip_configuration_id
  mode                = var.mode # Default: EgressSnat
  type                = var.type # Default: Static
}
