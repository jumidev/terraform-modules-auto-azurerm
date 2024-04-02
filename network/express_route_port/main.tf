

resource "azurerm_express_route_port" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  bandwidth_in_gbps   = var.bandwidth_in_gbps
  encapsulation       = var.encapsulation
  peering_location    = var.peering_location

  ########################################
  # optional vars
  ########################################
  link1        = var.link1
  link2        = var.link2
  billing_type = var.billing_type

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) possible values: UserAssigned
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  tags = var.tags
}
