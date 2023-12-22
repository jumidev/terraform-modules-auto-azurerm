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
          ip_configuration_name = lookup(peering_addresses.value, "ip_configuration_name", "primary")
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

  generation                            = var.generation
  private_ip_address_enabled            = var.private_ip_address_enabled
  bgp_route_translation_for_nat_enabled = var.bgp_route_translation_for_nat_enabled # Default: False
  dns_forwarding_enabled                = var.dns_forwarding_enabled
  ip_sec_replay_protection_enabled      = var.ip_sec_replay_protection_enabled # Default: True

  dynamic "policy_group" { # var.policy_group
    for_each = var.policy_group != null ? var.policy_group : []
    content {
      name = policy_group.key

      dynamic "policy_member" { # policy_group.value.policy_member
        for_each = policy_group.value.policy_member != null ? policy_group.value.policy_member : []
        content {
          name  = policy_member.key
          type  = lookup(policy_member.value, "type")  # (Required) possible values: AADGroupId | CertificateGroupId | RadiusAzureGroupId
          value = lookup(policy_member.value, "value") # (Required) 
        }
      }

      is_default = lookup(policy_group.value, "is_default", false)
      priority   = lookup(policy_group.value, "priority", "0")
    }
  }

  remote_vnet_traffic_enabled = var.remote_vnet_traffic_enabled # Default: False
  virtual_wan_traffic_enabled = var.virtual_wan_traffic_enabled # Default: False
  tags                        = var.tags

  dynamic "vpn_client_configuration" { # var.vpn_client_configuration
    for_each = var.vpn_client_configuration != null ? var.vpn_client_configuration : []
    content {
      address_space = lookup(vpn_client_configuration.value, "address_space") # (Required) 
      aad_tenant    = lookup(vpn_client_configuration.value, "aad_tenant", null)
      aad_audience  = lookup(vpn_client_configuration.value, "aad_audience", null)
      aad_issuer    = lookup(vpn_client_configuration.value, "aad_issuer", null)

      dynamic "ipsec_policy" { # vpn_client_configuration.value.ipsec_policy
        for_each = vpn_client_configuration.value.ipsec_policy != null ? vpn_client_configuration.value.ipsec_policy : []
        content {
          dh_group                  = lookup(ipsec_policy.value, "dh_group")                  # (Required) possible values: DHGroup1 | DHGroup2 | DHGroup14 | DHGroup24 | DHGroup2048 | ECP256 | ECP384 | None
          ike_encryption            = lookup(ipsec_policy.value, "ike_encryption")            # (Required) possible values: AES128 | AES192 | AES256 | DES | DES3 | GCMAES128 | GCMAES256
          ike_integrity             = lookup(ipsec_policy.value, "ike_integrity")             # (Required) possible values: GCMAES128 | GCMAES256 | MD5 | SHA1 | SHA256 | SHA384
          ipsec_encryption          = lookup(ipsec_policy.value, "ipsec_encryption")          # (Required) possible values: AES128 | AES192 | AES256 | DES | DES3 | GCMAES128 | GCMAES192 | GCMAES256 | None
          ipsec_integrity           = lookup(ipsec_policy.value, "ipsec_integrity")           # (Required) possible values: GCMAES128 | GCMAES192 | GCMAES256 | MD5 | SHA1 | SHA256
          pfs_group                 = lookup(ipsec_policy.value, "pfs_group")                 # (Required) possible values: ECP256 | ECP384 | PFS1 | PFS2 | PFS14 | PFS24 | PFS2048 | PFSMM | None
          sa_lifetime_in_seconds    = lookup(ipsec_policy.value, "sa_lifetime_in_seconds")    # (Required) possible values: 300 | 172799
          sa_data_size_in_kilobytes = lookup(ipsec_policy.value, "sa_data_size_in_kilobytes") # (Required) possible values: 1024 | 2147483647
        }
      }

      root_certificate    = lookup(vpn_client_configuration.value, "root_certificate", null)
      revoked_certificate = lookup(vpn_client_configuration.value, "revoked_certificate", null)

      dynamic "radius_server" { # vpn_client_configuration.value.radius_server
        for_each = vpn_client_configuration.value.radius_server != null ? vpn_client_configuration.value.radius_server : []
        content {
          address = lookup(radius_server.value, "address") # (Required) 
          secret  = lookup(radius_server.value, "secret")  # (Required) 
          score   = lookup(radius_server.value, "score")   # (Required) possible values: 1 | 30
        }
      }

      radius_server_address = lookup(vpn_client_configuration.value, "radius_server_address", null)
      radius_server_secret  = lookup(vpn_client_configuration.value, "radius_server_secret", null)
      vpn_client_protocols  = lookup(vpn_client_configuration.value, "vpn_client_protocols", null)
      vpn_auth_types        = lookup(vpn_client_configuration.value, "vpn_auth_types", null)

      dynamic "virtual_network_gateway_client_connection" { # vpn_client_configuration.value.virtual_network_gateway_client_connection
        for_each = vpn_client_configuration.value.virtual_network_gateway_client_connection != null ? vpn_client_configuration.value.virtual_network_gateway_client_connection : []
        content {
          name               = virtual_network_gateway_client_connection.key
          policy_group_names = lookup(virtual_network_gateway_client_connection.value, "policy_group_names") # (Required) 
          address_prefixes   = lookup(virtual_network_gateway_client_connection.value, "address_prefixes")   # (Required) 
        }
      }

    }
  }

  vpn_type = var.vpn_type # Default: RouteBased
}
