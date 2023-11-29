data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_netapp_pool" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = var.account_name
  location            = var.location
  service_level       = var.service_level
  size_in_tb          = var.size_in_tb

  ########################################
  # optional vars
  ########################################
  qos_type = var.qos_type
  tags     = var.tags
}
