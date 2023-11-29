data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_hub_security_partner_provider" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  resource_group_name    = data.azurerm_resource_group.this.name
  location               = var.location
  security_provider_name = var.security_provider_name

  ########################################
  # optional vars
  ########################################
  virtual_hub_id = var.virtual_hub_id
  tags           = var.tags
}
