data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_private_dns_zone_virtual_network_link" "this" {

  ########################################
  # required vars
  ########################################
  name                  = var.name
  private_dns_zone_name = var.private_dns_zone_name
  resource_group_name   = data.azurerm_resource_group.this.name
  virtual_network_id    = var.virtual_network_id

  ########################################
  # optional vars
  ########################################
  registration_enabled = var.registration_enabled # Default: False
  tags                 = var.tags
}
