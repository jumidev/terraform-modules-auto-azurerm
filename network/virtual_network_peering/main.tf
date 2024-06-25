

resource "azurerm_virtual_network_peering" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  virtual_network_name      = var.virtual_network_name
  remote_virtual_network_id = var.remote_virtual_network_id
  resource_group_name       = var.resource_group_name

  ########################################
  # optional vars
  ########################################
  allow_virtual_network_access           = var.allow_virtual_network_access # Default: True
  allow_forwarded_traffic                = var.allow_forwarded_traffic      # Default: False
  allow_gateway_transit                  = var.allow_gateway_transit        # Default: False
  local_subnet_names                     = var.local_subnet_names
  only_ipv6_peering_enabled              = var.only_ipv6_peering_enabled
  peer_complete_virtual_networks_enabled = var.peer_complete_virtual_networks_enabled # Default: True
  remote_subnet_names                    = var.remote_subnet_names
  use_remote_gateways                    = var.use_remote_gateways # Default: False
  triggers                               = var.triggers
}
