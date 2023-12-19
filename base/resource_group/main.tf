

resource "azurerm_resource_group" "this" {

  ########################################
  # required vars
  ########################################
  location = var.location
  name     = var.name

  ########################################
  # optional vars
  ########################################
  managed_by = var.managed_by
  tags       = var.tags
}

##############################################################################################
# optional azurerm_private_dns_zone_virtual_network_link 
##############################################################################################
resource "azurerm_private_dns_zone_virtual_network_link" "this" {
  count                 = var.private_dns_zone_virtual_network_link != null ? 1 : 0
  name                  = lookup(var.private_dns_zone_virtual_network_link, "name")
  private_dns_zone_name = lookup(var.private_dns_zone_virtual_network_link, "private_dns_zone_name")
  resource_group_name   = azurerm_resource_group.this.name
  virtual_network_id    = lookup(var.private_dns_zone_virtual_network_link, "virtual_network_id")
  registration_enabled  = lookup(var.private_dns_zone_virtual_network_link, "registration_enabled", false)
  tags                  = lookup(var.private_dns_zone_virtual_network_link, "tags", null)
}
