data "azurerm_app_service" "this" {
  name                = var.app_service_name
  resource_group_name = var.app_service_resource_group_name == null ? null : var.app_service_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_hybrid_connection" "this" {

  ########################################
  # required vars
  ########################################
  app_service_name    = data.azurerm_app_service.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  relay_id            = var.relay_id
  hostname            = var.hostname
  port                = var.port

  ########################################
  # optional vars
  ########################################
  send_key_name = var.send_key_name # Default: RootManageSharedAccessKey
}
