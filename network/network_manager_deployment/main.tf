

resource "azurerm_network_manager_deployment" "this" {

  ########################################
  # required vars
  ########################################
  network_manager_id = var.network_manager_id
  location           = var.location
  scope_access       = var.scope_access
  configuration_ids  = var.configuration_ids

  ########################################
  # optional vars
  ########################################
  triggers = var.triggers
}
