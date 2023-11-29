data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_cdn_frontdoor_profile" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  response_timeout_seconds = var.response_timeout_seconds # Default: 120
  tags                     = var.tags
}
