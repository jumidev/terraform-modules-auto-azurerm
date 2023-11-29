data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_iothub" "this" {
  name                = var.iothub_name
  resource_group_name = var.iothub_resource_group_name == null ? null : var.iothub_resource_group_name
  tags                = var.iothub_tags
}


resource "azurerm_iothub_route" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  iothub_name         = data.azurerm_iothub.this.name
  source              = var.source
  endpoint_names      = var.endpoint_names
  enabled             = var.enabled

  ########################################
  # optional vars
  ########################################
  condition = var.condition # Default: True
}
