data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_netapp_snapshot" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  account_name        = var.account_name
  pool_name           = var.pool_name
  volume_name         = var.volume_name
  location            = var.location
}
