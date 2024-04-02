

resource "azurerm_cdn_profile" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
