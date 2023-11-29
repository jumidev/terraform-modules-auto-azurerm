

resource "azurerm_mobile_network_site" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  mobile_network_id = var.mobile_network_id
  location          = var.location

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
