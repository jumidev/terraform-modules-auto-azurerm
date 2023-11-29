data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_services_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  dynamic "storage_account" { # var.storage_account
    for_each = var.storage_account != null ? var.storage_account : []
    content {
      is_primary = lookup(storage_account.value, "is_primary", false)

      dynamic "managed_identity" { # storage_account.value.managed_identity
        for_each = storage_account.value.managed_identity != null ? storage_account.value.managed_identity : []
        content {
          user_assigned_identity_id    = lookup(managed_identity.value, "user_assigned_identity_id", null)
          use_system_assigned_identity = lookup(managed_identity.value, "use_system_assigned_identity", null)
        }
      }

    }
  }


  ########################################
  # optional vars
  ########################################

  dynamic "encryption" { # var.encryption
    for_each = var.encryption != null ? var.encryption : []
    content {
      type                     = lookup(encryption.value, "type", "SystemKey")
      key_vault_key_identifier = lookup(encryption.value, "key_vault_key_identifier", null)

      dynamic "managed_identity" { # encryption.value.managed_identity
        for_each = encryption.value.managed_identity != null ? encryption.value.managed_identity : []
        content {
          user_assigned_identity_id    = lookup(managed_identity.value, "user_assigned_identity_id", null)
          use_system_assigned_identity = lookup(managed_identity.value, "use_system_assigned_identity", null)
        }
      }

    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  storage_authentication_type   = var.storage_authentication_type

  dynamic "key_delivery_access_control" { # var.key_delivery_access_control
    for_each = var.key_delivery_access_control != null ? var.key_delivery_access_control : []
    content {
      default_action = lookup(key_delivery_access_control.value, "default_action", null)
      ip_allow_list  = lookup(key_delivery_access_control.value, "ip_allow_list", null)
    }
  }

  tags = var.tags
}
