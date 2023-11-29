data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}


resource "azurerm_storage_share" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  storage_account_name = data.azurerm_storage_account.this.name
  quota                = var.quota

  ########################################
  # optional vars
  ########################################
  access_tier = var.access_tier

  dynamic "acl" { # var.acl
    for_each = var.acl != null ? var.acl : []
    content {

      dynamic "access_policy" { # acl.value.access_policy
        for_each = acl.value.access_policy != null ? acl.value.access_policy : []
        content {
          permissions = lookup(access_policy.value, "permissions") # (Required) 
          start       = lookup(access_policy.value, "start", null)
          expiry      = lookup(access_policy.value, "expiry", null)
        }
      }

    }
  }

  enabled_protocol = var.enabled_protocol # Default: SMB
  metadata         = var.metadata
}
