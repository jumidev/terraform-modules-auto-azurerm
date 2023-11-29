

resource "azurerm_storage_data_lake_gen2_path" "this" {

  ########################################
  # required vars
  ########################################
  path               = var.path
  filesystem_name    = var.filesystem_name
  storage_account_id = var.storage_account_id
  resource           = var.resource

  ########################################
  # optional vars
  ########################################
  owner = var.owner
  group = var.group

  dynamic "ace" { # var.ace
    for_each = var.ace != null ? var.ace : []
    content {
      scope       = lookup(ace.value, "scope", null)
      type        = lookup(ace.value, "type")        # (Required) 
      permissions = lookup(ace.value, "permissions") # (Required) 
    }
  }

}
