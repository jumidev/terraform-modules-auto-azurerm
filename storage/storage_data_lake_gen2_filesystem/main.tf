

resource "azurerm_storage_data_lake_gen2_filesystem" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  storage_account_id = var.storage_account_id

  ########################################
  # optional vars
  ########################################
  properties = var.properties

  dynamic "ace" { # var.ace
    for_each = var.ace != null ? var.ace : []
    content {
      scope       = lookup(ace.value, "scope", null)
      type        = lookup(ace.value, "type")        # (Required) 
      permissions = lookup(ace.value, "permissions") # (Required) 
    }
  }

  owner = var.owner
  group = var.group
}
