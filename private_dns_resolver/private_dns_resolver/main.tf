data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_private_dns_resolver" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  virtual_network_id  = var.virtual_network_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
