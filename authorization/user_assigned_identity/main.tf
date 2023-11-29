data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_user_assigned_identity" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
