

resource "azurerm_virtual_hub_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                      = var.name
  virtual_hub_id            = var.virtual_hub_id
  remote_virtual_network_id = var.remote_virtual_network_id

  ########################################
  # optional vars
  ########################################
  internet_security_enabled = var.internet_security_enabled # Default: False

  dynamic "routing" { # var.routing
    for_each = var.routing != null ? var.routing : []
    content {
      associated_route_table_id = lookup(routing.value, "associated_route_table_id", null)
      inbound_route_map_id      = lookup(routing.value, "inbound_route_map_id", null)
      outbound_route_map_id     = lookup(routing.value, "outbound_route_map_id", null)

      dynamic "propagated_route_table" { # routing.value.propagated_route_table
        for_each = routing.value.propagated_route_table != null ? routing.value.propagated_route_table : []
        content {
          labels          = lookup(propagated_route_table.value, "labels", null)
          route_table_ids = lookup(propagated_route_table.value, "route_table_ids", null)
        }
      }

      static_vnet_local_route_override_criteria = lookup(routing.value, "static_vnet_local_route_override_criteria", "Contains")

      dynamic "static_vnet_route" { # routing.value.static_vnet_route
        for_each = routing.value.static_vnet_route != null ? routing.value.static_vnet_route : []
        content {
          name                = static_vnet_route.key
          address_prefixes    = lookup(static_vnet_route.value, "address_prefixes", null)
          next_hop_ip_address = lookup(static_vnet_route.value, "next_hop_ip_address", null)
        }
      }

    }
  }

}
