

resource "azurerm_vpn_gateway_nat_rule" "this" {

  ########################################
  # required vars
  ########################################
  name           = var.name
  vpn_gateway_id = var.vpn_gateway_id

  ########################################
  # optional vars
  ########################################

  dynamic "external_mapping" { # var.external_mappings
    for_each = var.external_mappings != null ? var.external_mappings : []
    content {
      address_space = lookup(external_mapping.value, "address_space") # (Required) 
      port_range    = lookup(external_mapping.value, "port_range", null)
    }
  }


  dynamic "internal_mapping" { # var.internal_mappings
    for_each = var.internal_mappings != null ? var.internal_mappings : []
    content {
      address_space = lookup(internal_mapping.value, "address_space") # (Required) 
      port_range    = lookup(internal_mapping.value, "port_range", null)
    }
  }

  ip_configuration_id = var.ip_configuration_id
  mode                = var.mode # Default: EgressSnat
  type                = var.type # Default: Static
}
