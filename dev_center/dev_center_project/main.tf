data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dev_center_project" "this" {

  ########################################
  # required vars
  ########################################
  dev_center_id       = var.dev_center_id
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  description                = var.description
  maximum_dev_boxes_per_user = var.maximum_dev_boxes_per_user
  tags                       = var.tags
}
