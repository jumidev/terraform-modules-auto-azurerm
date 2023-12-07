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
  bgp_settings                     = var.bgp_settings

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
  vpn_client_configuration    = var.vpn_client_configuration
  vpn_type                    = var.vpn_type # Default: RouteBased
}
