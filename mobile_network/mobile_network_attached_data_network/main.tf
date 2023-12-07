data "azurerm_mobile_network_data_network" "this" {
  name              = var.mobile_network_data_network_name
  mobile_network_id = var.mobile_network_data_network_mobile_network_id
}


resource "azurerm_mobile_network_attached_data_network" "this" {

  ########################################
  # required vars
  ########################################
  mobile_network_data_network_name         = data.azurerm_mobile_network_data_network.this.name
  mobile_network_packet_core_data_plane_id = var.mobile_network_packet_core_data_plane_id
  location                                 = var.location
  dns_addresses                            = var.dns_addresses

  ########################################
  # optional vars
  ########################################
  user_plane_access_name         = var.user_plane_access_name
  user_plane_access_ipv4_address = var.user_plane_access_ipv4_address
  user_plane_access_ipv4_subnet  = var.user_plane_access_ipv4_subnet
  user_plane_access_ipv4_gateway = var.user_plane_access_ipv4_gateway

  dynamic "network_address_port_translation" { # var.network_address_port_translation
    for_each = var.network_address_port_translation != null ? var.network_address_port_translation : []
    content {
      pinhole_maximum_number          = lookup(network_address_port_translation.value, "pinhole_maximum_number", null)
      icmp_pinhole_timeout_in_seconds = lookup(network_address_port_translation.value, "icmp_pinhole_timeout_in_seconds", 180)
      tcp_pinhole_timeout_in_seconds  = lookup(network_address_port_translation.value, "tcp_pinhole_timeout_in_seconds", 180)
      udp_pinhole_timeout_in_seconds  = lookup(network_address_port_translation.value, "udp_pinhole_timeout_in_seconds", 180)

      dynamic "port_range" { # network_address_port_translation.value.port_range
        for_each = network_address_port_translation.value.port_range != null ? network_address_port_translation.value.port_range : []
        content {
          maximum = lookup(port_range.value, "maximum", null)
          minimum = lookup(port_range.value, "minimum", null)
        }
      }

      tcp_port_reuse_minimum_hold_time_in_seconds = lookup(network_address_port_translation.value, "tcp_port_reuse_minimum_hold_time_in_seconds", "120")
      udp_port_reuse_minimum_hold_time_in_seconds = lookup(network_address_port_translation.value, "udp_port_reuse_minimum_hold_time_in_seconds", "60")
    }
  }

  user_equipment_address_pool_prefixes        = var.user_equipment_address_pool_prefixes
  user_equipment_static_address_pool_prefixes = var.user_equipment_static_address_pool_prefixes
  tags                                        = var.tags
}
