

resource "azurerm_databricks_virtual_network_peering" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  resource_group_name           = var.resource_group_name
  workspace_id                  = var.workspace_id
  address_space_prefixes        = var.address_space_prefixes
  remote_address_space_prefixes = var.remote_address_space_prefixes
  remote_virtual_network_id     = var.remote_virtual_network_id

  ########################################
  # optional vars
  ########################################
  allow_virtual_network_access = var.allow_virtual_network_access # Default: True
  allow_forwarded_traffic      = var.allow_forwarded_traffic      # Default: False
  allow_gateway_transit        = var.allow_gateway_transit        # Default: False
  use_remote_gateways          = var.use_remote_gateways          # Default: False
  virtual_network_id           = var.virtual_network_id
}
