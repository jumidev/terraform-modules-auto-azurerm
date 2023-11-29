

resource "azurerm_storage_account_local_user" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  storage_account_id = var.storage_account_id

  ########################################
  # optional vars
  ########################################
  home_directory = var.home_directory

  dynamic "permission_scope" { # var.permission_scope
    for_each = var.permission_scope != null ? var.permission_scope : []
    content {

      dynamic "permissions" { # permission_scope.value.permissions
        for_each = permission_scope.value.permissions != null ? permission_scope.value.permissions : []
        content {
          create = lookup(permissions.value, "create", false)
          delete = lookup(permissions.value, "delete", false)
          list   = lookup(permissions.value, "list", false)
          read   = lookup(permissions.value, "read", false)
          write  = lookup(permissions.value, "write", false)
        }
      }

      resource_name = lookup(permission_scope.value, "resource_name") # (Required) 
      service       = lookup(permission_scope.value, "service")       # (Required) possible values: blob | file
    }
  }


  dynamic "ssh_authorized_key" { # var.ssh_authorized_key
    for_each = var.ssh_authorized_key != null ? var.ssh_authorized_key : []
    content {
      key         = lookup(ssh_authorized_key.value, "key") # (Required) 
      description = lookup(ssh_authorized_key.value, "description", null)
    }
  }

  ssh_key_enabled      = var.ssh_key_enabled      # Default: False
  ssh_password_enabled = var.ssh_password_enabled # Default: False
}
