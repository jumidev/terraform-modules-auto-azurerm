data "azurerm_app_service" "this" {
  name                = var.app_service_name
  resource_group_name = var.app_service_resource_group_name == null ? null : var.app_service_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_custom_hostname_binding" "this" {

  ########################################
  # required vars
  ########################################
  hostname            = var.hostname
  app_service_name    = data.azurerm_app_service.this.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  ssl_state  = var.ssl_state
  thumbprint = var.thumbprint
}
