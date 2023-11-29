data "azurerm_virtual_network" "this" {
  name                = var.virtual_network_name
  resource_group_name = var.virtual_network_resource_group_name == null ? null : var.virtual_network_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_network_peering" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  virtual_network_name      = data.azurerm_virtual_network.this.name
  remote_virtual_network_id = var.remote_virtual_network_id
  resource_group_name       = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  allow_virtual_network_access = var.allow_virtual_network_access # Default: True
  allow_forwarded_traffic      = var.allow_forwarded_traffic      # Default: False
  allow_gateway_transit        = var.allow_gateway_transit        # Default: False
  use_remote_gateways          = var.use_remote_gateways          # Default: False
  triggers                     = var.triggers
}
