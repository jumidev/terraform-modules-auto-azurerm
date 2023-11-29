

resource "azurerm_express_route_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                             = var.name
  express_route_circuit_peering_id = var.express_route_circuit_peering_id
  express_route_gateway_id         = var.express_route_gateway_id

  ########################################
  # optional vars
  ########################################
  authorization_key                    = var.authorization_key
  enable_internet_security             = var.enable_internet_security
  express_route_gateway_bypass_enabled = var.express_route_gateway_bypass_enabled # Default: False

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

    }
  }

  routing_weight = var.routing_weight # Default: 0
}
