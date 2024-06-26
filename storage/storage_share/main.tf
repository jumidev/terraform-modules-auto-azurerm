

resource "azurerm_storage_share" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  storage_account_name = var.storage_account_name
  quota                = var.quota

  ########################################
  # optional vars
  ########################################
  access_tier = var.access_tier

  dynamic "acl" { # var.acls
    for_each = var.acls != null ? var.acls : []
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

  enabled_protocol = var.enabled_protocol # Default: False
  metadata         = var.metadata
}
