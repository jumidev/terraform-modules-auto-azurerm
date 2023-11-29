data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_iothub" "this" {
  name                = var.iothub_name
  resource_group_name = var.iothub_resource_group_name != null ? var.iothub_resource_group_name : var.resource_group_name

  tags = var.iothub_tags
}


resource "azurerm_iothub_fallback_route" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  iothub_name         = data.azurerm_iothub.this.name
  enabled             = var.enabled
  endpoint_names      = var.endpoint_names

  ########################################
  # optional vars
  ########################################
  source    = var.source    # Default: DeviceMessages
  condition = var.condition # Default: True
}
