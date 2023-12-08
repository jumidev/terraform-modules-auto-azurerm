

resource "azurerm_vpn_gateway_connection" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  remote_vpn_site_id = var.remote_vpn_site_id
  vpn_gateway_id     = var.vpn_gateway_id

  dynamic "vpn_link" { # var.vpn_link
    for_each = var.vpn_link != null ? var.vpn_link : []
    content {
      name                                  = vpn_link.key
      egress_nat_rule_ids                   = lookup(vpn_link.value, "egress_nat_rule_ids", null)
      ingress_nat_rule_ids                  = lookup(vpn_link.value, "ingress_nat_rule_ids", null)
      vpn_site_link_id                      = lookup(vpn_link.value, "vpn_site_link_id") # (Required) 
      bandwidth_mbps                        = lookup(vpn_link.value, "bandwidth_mbps", 10)
      bgp_enabled                           = lookup(vpn_link.value, "bgp_enabled", false)
      connection_mode                       = lookup(vpn_link.value, "connection_mode", "Default")
      ipsec_policy                          = lookup(vpn_link.value, "ipsec_policy", null)
      protocol                              = lookup(vpn_link.value, "protocol", "IKEv2")
      ratelimit_enabled                     = lookup(vpn_link.value, "ratelimit_enabled", false)
      route_weight                          = lookup(vpn_link.value, "route_weight", "0")
      shared_key                            = lookup(vpn_link.value, "shared_key", null)
      local_azure_ip_address_enabled        = lookup(vpn_link.value, "local_azure_ip_address_enabled", false)
      policy_based_traffic_selector_enabled = lookup(vpn_link.value, "policy_based_traffic_selector_enabled", false)

      dynamic "custom_bgp_address" { # vpn_link.value.custom_bgp_address
        for_each = vpn_link.value.custom_bgp_address != null ? vpn_link.value.custom_bgp_address : []
        content {
          ip_address          = lookup(custom_bgp_address.value, "ip_address")          # (Required) 
          ip_configuration_id = lookup(custom_bgp_address.value, "ip_configuration_id") # (Required) 
        }
      }

    }
  }


  ########################################
  # optional vars
  ########################################
  internet_security_enabled = var.internet_security_enabled # Default: False

  dynamic "routing" { # var.routing
    for_each = var.routing != null ? var.routing : []
    content {
      associated_route_table = lookup(routing.value, "associated_route_table") # (Required) 

      dynamic "propagated_route_table" { # routing.value.propagated_route_table
        for_each = routing.value.propagated_route_table != null ? routing.value.propagated_route_table : []
        content {
          route_table_ids = lookup(propagated_route_table.value, "route_table_ids") # (Required) 
          labels          = lookup(propagated_route_table.value, "labels", null)
        }
      }

      inbound_route_map_id  = lookup(routing.value, "inbound_route_map_id", null)
      outbound_route_map_id = lookup(routing.value, "outbound_route_map_id", null)
    }
  }


  dynamic "traffic_selector_policy" { # var.traffic_selector_policy
    for_each = var.traffic_selector_policy != null ? var.traffic_selector_policy : []
    content {
      local_address_ranges  = lookup(traffic_selector_policy.value, "local_address_ranges")  # (Required) 
      remote_address_ranges = lookup(traffic_selector_policy.value, "remote_address_ranges") # (Required) 
    }
  }

}
