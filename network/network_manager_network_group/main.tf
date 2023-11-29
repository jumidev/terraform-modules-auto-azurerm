

resource "azurerm_network_manager_network_group" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  network_manager_id = var.network_manager_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
