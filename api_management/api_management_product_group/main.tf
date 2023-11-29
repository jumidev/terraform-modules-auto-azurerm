data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name != null ? var.api_management_resource_group_name : var.resource_group_name

}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_product_group" "this" {

  ########################################
  # required vars
  ########################################
  product_id          = var.product_id
  group_name          = var.group_name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
}
