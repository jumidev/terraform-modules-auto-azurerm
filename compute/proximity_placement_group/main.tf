data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_proximity_placement_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  allowed_vm_sizes = var.allowed_vm_sizes
  zone             = var.zone
  tags             = var.tags
}
