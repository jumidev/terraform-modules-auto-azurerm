data "azurerm_app_service" "this" {
  name                = var.app_service_name
  resource_group_name = var.app_service_resource_group_name == null ? null : var.app_service_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_public_certificate" "this" {

  ########################################
  # required vars
  ########################################
  app_service_name     = data.azurerm_app_service.this.name
  resource_group_name  = data.azurerm_resource_group.this.name
  certificate_name     = var.certificate_name
  certificate_location = var.certificate_location
  blob                 = var.blob
}
