data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_vpn_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  virtual_hub_id      = var.virtual_hub_id

  ########################################
  # optional vars
  ########################################
  bgp_route_translation_for_nat_enabled = var.bgp_route_translation_for_nat_enabled # Default: False

  dynamic "bgp_settings" { # var.bgp_settings
    for_each = var.bgp_settings != null ? var.bgp_settings : []
    content {
      asn         = lookup(bgp_settings.value, "asn")         # (Required) 
      peer_weight = lookup(bgp_settings.value, "peer_weight") # (Required) 

      dynamic "instance_0_bgp_peering_address" { # bgp_settings.value.instance_0_bgp_peering_address
        for_each = bgp_settings.value.instance_0_bgp_peering_address != null ? bgp_settings.value.instance_0_bgp_peering_address : []
        content {
          custom_ips = lookup(instance_0_bgp_peering_address.value, "custom_ips") # (Required) 
        }
      }


      dynamic "instance_1_bgp_peering_address" { # bgp_settings.value.instance_1_bgp_peering_address
        for_each = bgp_settings.value.instance_1_bgp_peering_address != null ? bgp_settings.value.instance_1_bgp_peering_address : []
        content {
          custom_ips = lookup(instance_1_bgp_peering_address.value, "custom_ips") # (Required) 
        }
      }

    }
  }

  routing_preference = var.routing_preference
  scale_unit         = var.scale_unit # Default: 1
  tags               = var.tags
}
