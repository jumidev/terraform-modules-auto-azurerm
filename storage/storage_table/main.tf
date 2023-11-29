data "azurerm_storage_account" "this" {
  name                = var.storage_account_name
  resource_group_name = var.storage_account_resource_group_name == null ? null : var.storage_account_resource_group_name
}


resource "azurerm_storage_table" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  storage_account_name = data.azurerm_storage_account.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "acl" { # var.acl
    for_each = var.acl != null ? var.acl : []
    content {

      dynamic "access_policy" { # acl.value.access_policy
        for_each = acl.value.access_policy != null ? acl.value.access_policy : []
        content {
          expiry      = lookup(access_policy.value, "expiry")      # (Required) 
          permissions = lookup(access_policy.value, "permissions") # (Required) 
          start       = lookup(access_policy.value, "start")       # (Required) 
        }
      }

    }
  }

}
