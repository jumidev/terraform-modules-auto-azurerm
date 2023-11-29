

resource "azurerm_mobile_network_data_network" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  mobile_network_id = var.mobile_network_id
  location          = var.location

  ########################################
  # optional vars
  ########################################
  description = var.description
  tags        = var.tags
}
