

resource "azurerm_container_registry_token" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = var.resource_group_name
  container_registry_name = var.container_registry_name
  scope_map_id            = var.scope_map_id

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True
}
