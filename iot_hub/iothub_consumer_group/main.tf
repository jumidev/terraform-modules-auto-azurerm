data "azurerm_iothub" "this" {
  name                = var.iothub_name
  resource_group_name = var.iothub_resource_group_name == null ? null : var.iothub_resource_group_name
  tags                = var.iothub_tags
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub_consumer_group" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  iothub_name            = data.azurerm_iothub.this.name
  eventhub_endpoint_name = var.eventhub_endpoint_name
  resource_group_name    = data.azurerm_resource_group.this.name
}
