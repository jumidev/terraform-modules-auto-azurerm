data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}


resource "azurerm_api_management_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  api_management_name = data.azurerm_api_management.this.name
  display_name        = var.display_name

  ########################################
  # optional vars
  ########################################
  description = var.description
  external_id = var.external_id
  type        = var.type # Default: custom
}
