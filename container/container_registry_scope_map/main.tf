

resource "azurerm_container_registry_scope_map" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = var.resource_group_name
  container_registry_name = var.container_registry_name
  actions                 = var.actions

  ########################################
  # optional vars
  ########################################
  description = var.description
}
