data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_static_site" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  sku_tier = var.sku_tier # Default: Free
  sku_size = var.sku_size # Default: Free

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  app_settings = var.app_settings
  tags         = var.tags
}
