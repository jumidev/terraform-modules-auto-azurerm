

resource "azurerm_traffic_manager_nested_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  minimum_child_endpoints = var.minimum_child_endpoints
  name                    = var.name
  profile_id              = var.profile_id
  target_resource_id      = var.target_resource_id

  ########################################
  # optional vars
  ########################################
  weight = var.weight

  dynamic "custom_header" { # var.custom_header
    for_each = var.custom_header != null ? var.custom_header : []
    content {
      name  = custom_header.key
      value = lookup(custom_header.value, "value") # (Required) 
    }
  }

  enabled                               = var.enabled # Default: True
  endpoint_location                     = var.endpoint_location
  minimum_required_child_endpoints_ipv4 = var.minimum_required_child_endpoints_ipv4
  minimum_required_child_endpoints_ipv6 = var.minimum_required_child_endpoints_ipv6
  priority                              = var.priority
  geo_mappings                          = var.geo_mappings

  dynamic "subnet" { # var.subnet
    for_each = var.subnet != null ? var.subnet : []
    content {
      first = lookup(subnet.value, "first") # (Required) 
      last  = lookup(subnet.value, "last", null)
      scope = lookup(subnet.value, "scope", null)
    }
  }

}
