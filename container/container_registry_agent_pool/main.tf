data "azurerm_container_registry" "this" {
  name                = var.container_registry_name
  resource_group_name = var.container_registry_resource_group_name != null ? var.container_registry_resource_group_name : var.resource_group_name

}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_container_registry_agent_pool" "this" {

  ########################################
  # required vars
  ########################################
  container_registry_name = data.azurerm_container_registry.this.name
  location                = var.location
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  instance_count            = var.instance_count # Default: 1
  tier                      = var.tier           # Default: S1
  virtual_network_subnet_id = var.virtual_network_subnet_id
  tags                      = var.tags
}
