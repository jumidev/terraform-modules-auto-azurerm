data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_data_protection_backup_vault" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  datastore_type      = var.datastore_type
  redundancy          = var.redundancy

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
    }
  }

  tags = var.tags
}
