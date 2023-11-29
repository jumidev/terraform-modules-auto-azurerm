data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_product_api" "this" {

  ########################################
  # required vars
  ########################################
  api_name            = var.api_name
  api_management_name = data.azurerm_api_management.this.name
  product_id          = var.product_id
  resource_group_name = data.azurerm_resource_group.this.name
}
