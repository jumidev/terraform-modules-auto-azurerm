data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_openid_connect_provider" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  client_id           = var.client_id
  client_secret       = var.client_secret
  display_name        = var.display_name
  metadata_endpoint   = var.metadata_endpoint

  ########################################
  # optional vars
  ########################################
  description = var.description
}
