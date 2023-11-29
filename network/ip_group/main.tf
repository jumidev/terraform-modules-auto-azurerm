data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_ip_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  cidrs = var.cidrs
  tags  = var.tags
}
