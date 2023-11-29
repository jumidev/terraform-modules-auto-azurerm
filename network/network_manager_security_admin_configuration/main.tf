

resource "azurerm_network_manager_security_admin_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  network_manager_id = var.network_manager_id

  ########################################
  # optional vars
  ########################################
  apply_on_network_intent_policy_based_services = var.apply_on_network_intent_policy_based_services
  description                                   = var.description
}
