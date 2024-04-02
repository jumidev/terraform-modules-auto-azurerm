

resource "azurerm_lb" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  edge_zone                 = var.edge_zone
  frontend_ip_configuration = var.frontend_ip_configuration
  sku                       = var.sku      # Default: Basic
  sku_tier                  = var.sku_tier # Default: Regional
  tags                      = var.tags
}
