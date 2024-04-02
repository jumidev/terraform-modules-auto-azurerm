

resource "azurerm_express_route_circuit" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku {
    tier   = lookup(sku.value, "tier")   # (Required) 
    family = lookup(sku.value, "family") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  service_provider_name    = var.service_provider_name
  peering_location         = var.peering_location
  bandwidth_in_mbps        = var.bandwidth_in_mbps
  allow_classic_operations = var.allow_classic_operations # Default: False
  express_route_port_id    = var.express_route_port_id
  bandwidth_in_gbps        = var.bandwidth_in_gbps
  authorization_key        = var.authorization_key
  tags                     = var.tags
}
