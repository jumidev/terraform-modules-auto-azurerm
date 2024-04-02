

resource "azurerm_container_registry_agent_pool" "this" {

  ########################################
  # required vars
  ########################################
  container_registry_name = var.container_registry_name
  location                = var.location
  name                    = var.name
  resource_group_name     = var.resource_group_name

  ########################################
  # optional vars
  ########################################
  instance_count            = var.instance_count # Default: 1
  tier                      = var.tier           # Default: S1
  virtual_network_subnet_id = var.virtual_network_subnet_id
  tags                      = var.tags
}
