

resource "azurerm_dedicated_host_group" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  resource_group_name         = var.resource_group_name
  location                    = var.location
  platform_fault_domain_count = var.platform_fault_domain_count

  ########################################
  # optional vars
  ########################################
  automatic_placement_enabled = var.automatic_placement_enabled # Default: False
  zone                        = var.zone
  tags                        = var.tags
}
