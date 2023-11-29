data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_private_link_scope" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
