

resource "azurerm_network_manager_subscription_connection" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  subscription_id    = var.subscription_id
  network_manager_id = var.network_manager_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
