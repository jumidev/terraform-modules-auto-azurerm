data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_insights_workbook" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  display_name        = var.display_name
  data_json           = var.data_json

  ########################################
  # optional vars
  ########################################
  source_id   = var.source_id # Default: azure monitor
  category    = var.category  # Default: workbook
  description = var.description

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: UserAssigned | SystemAssigned | SystemAssigned, UserAssigned
      principal_id = lookup(identity.value, "principal_id", null)
      tenant_id    = lookup(identity.value, "tenant_id", null)
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  storage_container_id = var.storage_container_id
  tags                 = var.tags
}
