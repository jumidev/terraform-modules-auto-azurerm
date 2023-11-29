data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dev_center" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      principal_id = lookup(identity.value, "principal_id", null)
      tenant_id    = lookup(identity.value, "tenant_id", null)
    }
  }

  tags = var.tags
}
