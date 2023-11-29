

resource "azurerm_virtual_hub_route_table" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  virtual_hub_id = var.virtual_hub_id

  ########################################
  # optional vars
  ########################################
  labels = var.labels

  dynamic "route" { # var.route
    for_each = var.route != null ? var.route : []
    content {
      name              = route.key
      destinations      = lookup(route.value, "destinations")      # (Required) 
      destinations_type = lookup(route.value, "destinations_type") # (Required) possible values: CIDR | ResourceId | Service
      next_hop          = lookup(route.value, "next_hop")          # (Required) 
      next_hop_type     = lookup(route.value, "next_hop_type", "ResourceId")
    }
  }

}
