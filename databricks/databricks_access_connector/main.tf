data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_databricks_access_connector" "this" {

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
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  tags = var.tags
}
