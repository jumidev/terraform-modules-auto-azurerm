data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_custom_ip_prefix" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  cidr                = var.cidr

  ########################################
  # optional vars
  ########################################
  commissioning_enabled         = var.commissioning_enabled         # Default: False
  internet_advertising_disabled = var.internet_advertising_disabled # Default: False
  parent_custom_ip_prefix_id    = var.parent_custom_ip_prefix_id
  roa_validity_end_date         = var.roa_validity_end_date
  tags                          = var.tags
  wan_validation_signed_message = var.wan_validation_signed_message
  zones                         = var.zones
}
