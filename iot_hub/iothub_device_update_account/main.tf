data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub_device_update_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  sku                           = var.sku                           # Default: Standard
  tags                          = var.tags
}
