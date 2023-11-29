

resource "azurerm_network_manager_scope_connection" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  network_manager_id = var.network_manager_id
  target_scope_id    = var.target_scope_id
  tenant_id          = var.tenant_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
