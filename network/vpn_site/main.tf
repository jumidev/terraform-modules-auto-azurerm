data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_vpn_site" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  virtual_wan_id      = var.virtual_wan_id

  ########################################
  # optional vars
  ########################################

  dynamic "link" { # var.link
    for_each = var.link != null ? var.link : []
    content {
      name = link.key

      dynamic "bgp" { # link.value.bgp
        for_each = link.value.bgp != null ? link.value.bgp : []
        content {
          asn             = lookup(bgp.value, "asn")             # (Required) 
          peering_address = lookup(bgp.value, "peering_address") # (Required) 
        }
      }

      fqdn          = lookup(link.value, "fqdn", null)
      ip_address    = lookup(link.value, "ip_address", null)
      provider_name = lookup(link.value, "provider_name", null)
      speed_in_mbps = lookup(link.value, "speed_in_mbps", 0)
    }
  }

  address_cidrs = var.address_cidrs
  device_model  = var.device_model
  device_vendor = var.device_vendor

  dynamic "o365_policy" { # var.o365_policy
    for_each = var.o365_policy != null ? var.o365_policy : []
    content {

      dynamic "traffic_category" { # o365_policy.value.traffic_category
        for_each = o365_policy.value.traffic_category != null ? o365_policy.value.traffic_category : []
        content {
          allow_endpoint_enabled    = lookup(traffic_category.value, "allow_endpoint_enabled", false)
          default_endpoint_enabled  = lookup(traffic_category.value, "default_endpoint_enabled", false)
          optimize_endpoint_enabled = lookup(traffic_category.value, "optimize_endpoint_enabled", false)
        }
      }

    }
  }

  tags = var.tags
}
