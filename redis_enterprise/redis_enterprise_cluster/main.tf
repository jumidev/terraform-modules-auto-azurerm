data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_redis_enterprise_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  minimum_tls_version = var.minimum_tls_version # Default: 1.2
  zones               = var.zones
  tags                = var.tags
}
