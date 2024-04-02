

resource "azurerm_express_route_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_hub_id      = var.virtual_hub_id
  scale_units         = var.scale_units

  ########################################
  # optional vars
  ########################################
  allow_non_virtual_wan_traffic = var.allow_non_virtual_wan_traffic # Default: False
  tags                          = var.tags
}
