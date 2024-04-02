

resource "azurerm_proximity_placement_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  allowed_vm_sizes = var.allowed_vm_sizes
  zone             = var.zone
  tags             = var.tags
}
