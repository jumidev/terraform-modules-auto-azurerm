

resource "azurerm_virtual_hub_routing_intent" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  virtual_hub_id = var.virtual_hub_id

  dynamic "routing_policy" { # var.routing_policys
    for_each = var.routing_policys != null ? var.routing_policys : []
    content {
      name         = routing_policy.key
      destinations = lookup(routing_policy.value, "destinations") # (Required) possible values: Internet | PrivateTraffic
      next_hop     = lookup(routing_policy.value, "next_hop")     # (Required) 
    }
  }

}
