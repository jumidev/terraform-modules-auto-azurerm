

resource "azurerm_network_manager_management_group_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  management_group_id = var.management_group_id
  network_manager_id  = var.network_manager_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
