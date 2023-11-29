data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_app_service" "this" {
  name                = var.app_service_name
  resource_group_name = var.app_service_resource_group_name == null ? null : var.app_service_resource_group_name
}


resource "azurerm_app_service_active_slot" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name   = data.azurerm_resource_group.this.name
  app_service_name      = data.azurerm_app_service.this.name
  app_service_slot_name = var.app_service_slot_name
}
