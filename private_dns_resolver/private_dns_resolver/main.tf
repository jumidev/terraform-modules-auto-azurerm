

resource "azurerm_private_dns_resolver" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_network_id  = var.virtual_network_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
