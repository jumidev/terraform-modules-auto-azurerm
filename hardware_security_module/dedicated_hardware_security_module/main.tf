data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dedicated_hardware_security_module" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  network_profile {
    network_interface_private_ip_addresses = lookup(network_profile.value, "network_interface_private_ip_addresses") # (Required) 
    subnet_id                              = lookup(network_profile.value, "subnet_id")                              # (Required) 
  }

  sku_name = var.sku_name

  ########################################
  # optional vars
  ########################################

  dynamic "management_network_profile" { # var.management_network_profile
    for_each = var.management_network_profile != null ? var.management_network_profile : []
    content {
      network_interface_private_ip_addresses = lookup(management_network_profile.value, "network_interface_private_ip_addresses") # (Required) 
      subnet_id                              = lookup(management_network_profile.value, "subnet_id")                              # (Required) 
    }
  }

  stamp_id = var.stamp_id
  zones    = var.zones
  tags     = var.tags
}
