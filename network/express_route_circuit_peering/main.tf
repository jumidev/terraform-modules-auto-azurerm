

resource "azurerm_express_route_circuit_peering" "this" {

  ########################################
  # required vars
  ########################################
  peering_type               = var.peering_type
  express_route_circuit_name = var.express_route_circuit_name
  resource_group_name        = var.resource_group_name
  vlan_id                    = var.vlan_id

  ########################################
  # optional vars
  ########################################
  primary_peer_address_prefix   = var.primary_peer_address_prefix
  secondary_peer_address_prefix = var.secondary_peer_address_prefix
  ipv4_enabled                  = var.ipv4_enabled # Default: True
  shared_key                    = var.shared_key
  peer_asn                      = var.peer_asn

  dynamic "microsoft_peering_config" { # var.microsoft_peering_config
    for_each = var.microsoft_peering_config != null ? var.microsoft_peering_config : []
    content {
      advertised_public_prefixes = lookup(microsoft_peering_config.value, "advertised_public_prefixes") # (Required) 
      customer_asn               = lookup(microsoft_peering_config.value, "customer_asn", "0")
      routing_registry_name      = lookup(microsoft_peering_config.value, "routing_registry_name", "NONE")
      advertised_communities     = lookup(microsoft_peering_config.value, "advertised_communities", null)
    }
  }


  dynamic "ipv6" { # var.ipv6
    for_each = var.ipv6 != null ? var.ipv6 : []
    content {
      primary_peer_address_prefix   = lookup(ipv6.value, "primary_peer_address_prefix")   # (Required) 
      secondary_peer_address_prefix = lookup(ipv6.value, "secondary_peer_address_prefix") # (Required) 
      enabled                       = lookup(ipv6.value, "enabled", true)

      dynamic "microsoft_peering" { # ipv6.value.microsoft_peering
        for_each = ipv6.value.microsoft_peering != null ? ipv6.value.microsoft_peering : []
        content {
          advertised_public_prefixes = lookup(microsoft_peering.value, "advertised_public_prefixes", null)
          customer_asn               = lookup(microsoft_peering.value, "customer_asn", "0")
          routing_registry_name      = lookup(microsoft_peering.value, "routing_registry_name", "NONE")
          advertised_communities     = lookup(microsoft_peering.value, "advertised_communities", null)
        }
      }

      route_filter_id = lookup(ipv6.value, "route_filter_id", null)
    }
  }

  route_filter_id = var.route_filter_id
}
