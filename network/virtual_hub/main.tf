

resource "azurerm_virtual_hub" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  address_prefix         = var.address_prefix
  hub_routing_preference = var.hub_routing_preference # Default: ExpressRoute

  dynamic "route" { # var.routes
    for_each = var.routes != null ? var.routes : []
    content {
      address_prefixes    = lookup(route.value, "address_prefixes")    # (Required) 
      next_hop_ip_address = lookup(route.value, "next_hop_ip_address") # (Required) 
    }
  }

  sku            = var.sku
  virtual_wan_id = var.virtual_wan_id
  tags           = var.tags
}
