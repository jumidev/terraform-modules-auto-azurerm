data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_arc_resource_bridge_appliance" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  distro              = var.distro

  identity {
    type = lookup(identity.value, "type") # (Required) 
  }

  infrastructure_provider = var.infrastructure_provider

  ########################################
  # optional vars
  ########################################
  public_key_base64 = var.public_key_base64
  tags              = var.tags
}
