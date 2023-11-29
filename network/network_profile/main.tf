data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_network_profile" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name

  container_network_interface {
    name             = lookup(container_network_interface.value, "name")             # (Required) 
    ip_configuration = lookup(container_network_interface.value, "ip_configuration") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
