data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_identity_provider_twitter" "this" {

  ########################################
  # required vars
  ########################################
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  api_key             = var.api_key
  api_secret_key      = var.api_secret_key
}
