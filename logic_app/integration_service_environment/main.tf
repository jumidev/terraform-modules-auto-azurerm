data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_integration_service_environment" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  resource_group_name        = data.azurerm_resource_group.this.name
  location                   = var.location
  access_endpoint_type       = var.access_endpoint_type
  virtual_network_subnet_ids = var.virtual_network_subnet_ids

  ########################################
  # optional vars
  ########################################
  sku_name = var.sku_name # Default: Developer_0
  tags     = var.tags
}
