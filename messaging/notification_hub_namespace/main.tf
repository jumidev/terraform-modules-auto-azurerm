data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_notification_hub_namespace" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  namespace_type      = var.namespace_type
  sku_name            = var.sku_name

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True
  tags    = var.tags
}
