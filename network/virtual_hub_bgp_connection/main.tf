

resource "azurerm_virtual_hub_bgp_connection" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  virtual_hub_id = var.virtual_hub_id
  peer_asn       = var.peer_asn
  peer_ip        = var.peer_ip

  ########################################
  # optional vars
  ########################################
  virtual_network_connection_id = var.virtual_network_connection_id
}
