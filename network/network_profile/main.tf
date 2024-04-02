

resource "azurerm_network_profile" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name

  container_network_interface {
    name             = lookup(container_network_interface.value, "name")             # (Required) 
    ip_configuration = lookup(container_network_interface.value, "ip_configuration") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
