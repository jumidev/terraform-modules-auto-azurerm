data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_local_network_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  address_space = var.address_space

  dynamic "bgp_settings" { # var.bgp_settings
    for_each = var.bgp_settings != null ? var.bgp_settings : []
    content {
      asn                 = lookup(bgp_settings.value, "asn")                 # (Required) 
      bgp_peering_address = lookup(bgp_settings.value, "bgp_peering_address") # (Required) 
      peer_weight         = lookup(bgp_settings.value, "peer_weight", null)
    }
  }

  gateway_address = var.gateway_address
  gateway_fqdn    = var.gateway_fqdn
  tags            = var.tags
}
