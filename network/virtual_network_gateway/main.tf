data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_network_gateway" "this" {

  ########################################
  # required vars
  ########################################
  ip_configuration    = var.ip_configuration
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  sku                 = var.sku
  type                = var.type

  ########################################
  # optional vars
  ########################################
  active_active                    = var.active_active # Default: False
  default_local_network_gateway_id = var.default_local_network_gateway_id
  edge_zone                        = var.edge_zone
  enable_bgp                       = var.enable_bgp # Default: False

  dynamic "bgp_settings" { # var.bgp_settings
    for_each = var.bgp_settings != null ? var.bgp_settings : []
    content {
      asn = lookup(bgp_settings.value, "asn", null)

      dynamic "peering_addresses" { # bgp_settings.value.peering_addresses
        for_each = bgp_settings.value.peering_addresses != null ? bgp_settings.value.peering_addresses : []
        content {
          ip_configuration_name = lookup(peering_addresses.value, "ip_configuration_name", null)
          apipa_addresses       = lookup(peering_addresses.value, "apipa_addresses", null)
        }
      }

      peer_weight = lookup(bgp_settings.value, "peer_weight", null)
    }
  }


  dynamic "custom_route" { # var.custom_route
    for_each = var.custom_route != null ? var.custom_route : []
    content {
      address_prefixes = lookup(custom_route.value, "address_prefixes", null)
    }
  }

  generation                 = var.generation
  private_ip_address_enabled = var.private_ip_address_enabled
  tags                       = var.tags

  dynamic "vpn_client_configuration" { # var.vpn_client_configuration
    for_each = var.vpn_client_configuration != null ? var.vpn_client_configuration : []
    content {
      address_space         = lookup(vpn_client_configuration.value, "address_space") # (Required) 
      aad_tenant            = lookup(vpn_client_configuration.value, "aad_tenant", null)
      aad_audience          = lookup(vpn_client_configuration.value, "aad_audience", null)
      aad_issuer            = lookup(vpn_client_configuration.value, "aad_issuer", null)
      root_certificate      = lookup(vpn_client_configuration.value, "root_certificate", null)
      revoked_certificate   = lookup(vpn_client_configuration.value, "revoked_certificate", null)
      radius_server_address = lookup(vpn_client_configuration.value, "radius_server_address", null)
      radius_server_secret  = lookup(vpn_client_configuration.value, "radius_server_secret", null)
      vpn_client_protocols  = lookup(vpn_client_configuration.value, "vpn_client_protocols", null)
      vpn_auth_types        = lookup(vpn_client_configuration.value, "vpn_auth_types", null)
    }
  }

  vpn_type = var.vpn_type # Default: RouteBased
}
