

resource "azurerm_availability_set" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  platform_update_domain_count = var.platform_update_domain_count # Default: 5
  platform_fault_domain_count  = var.platform_fault_domain_count  # Default: 3
  proximity_placement_group_id = var.proximity_placement_group_id
  managed                      = var.managed # Default: True
  tags                         = var.tags
}
