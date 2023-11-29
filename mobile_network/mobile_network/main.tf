data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_mobile_network" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  mobile_country_code = var.mobile_country_code
  mobile_network_code = var.mobile_network_code

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
