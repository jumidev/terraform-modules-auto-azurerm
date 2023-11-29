data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_container_registry" "this" {
  name                = var.container_registry_name
  resource_group_name = var.container_registry_resource_group_name == null ? null : var.container_registry_resource_group_name
}


resource "azurerm_container_registry_scope_map" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  container_registry_name = data.azurerm_container_registry.this.name
  actions                 = var.actions

  ########################################
  # optional vars
  ########################################
  description = var.description
}
