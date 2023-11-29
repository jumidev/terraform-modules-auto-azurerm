data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_purview_account" "this" {

  ########################################
  # required vars
  ########################################
  location = var.location

  identity {
    type         = lookup(identity.value, "type") # (Required) 
    identity_ids = lookup(identity.value, "identity_ids", null)
  }

  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  public_network_enabled      = var.public_network_enabled # Default: True
  managed_resource_group_name = var.managed_resource_group_name
  tags                        = var.tags
}
