data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_iothub" "this" {
  name                = var.iothub_name
  resource_group_name = var.iothub_resource_group_name == null ? null : var.iothub_resource_group_name
  tags                = var.iothub_tags
}


resource "azurerm_iothub_shared_access_policy" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  iothub_name         = data.azurerm_iothub.this.name

  ########################################
  # optional vars
  ########################################
  registry_read   = var.registry_read
  registry_write  = var.registry_write
  service_connect = var.service_connect
  device_connect  = var.device_connect
}
