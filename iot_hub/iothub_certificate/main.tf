data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_iothub" "this" {
  name                = var.iothub_name
  resource_group_name = var.iothub_resource_group_name == null ? null : var.iothub_resource_group_name
  tags                = var.iothub_tags
}


resource "azurerm_iothub_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  iothub_name         = data.azurerm_iothub.this.name
  certificate_content = var.certificate_content

  ########################################
  # optional vars
  ########################################
  is_verified = var.is_verified # Default: False
}
