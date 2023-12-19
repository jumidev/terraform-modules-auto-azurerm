data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_batch_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "network_profile" { # var.network_profile
    for_each = var.network_profile != null ? var.network_profile : []
    content {

      dynamic "account_access" { # network_profile.value.account_access
        for_each = network_profile.value.account_access != null ? network_profile.value.account_access : []
        content {
          default_action = lookup(account_access.value, "default_action", "Deny")

          dynamic "ip_rule" { # account_access.value.ip_rule
            for_each = account_access.value.ip_rule != null ? account_access.value.ip_rule : []
            content {
              ip_range = lookup(ip_rule.value, "ip_range") # (Required) 
              action   = lookup(ip_rule.value, "action", "Allow")
            }
          }

        }
      }


      dynamic "node_management_access" { # network_profile.value.node_management_access
        for_each = network_profile.value.node_management_access != null ? network_profile.value.node_management_access : []
        content {
          default_action = lookup(node_management_access.value, "default_action", "Deny")

          dynamic "ip_rule" { # node_management_access.value.ip_rule
            for_each = node_management_access.value.ip_rule != null ? node_management_access.value.ip_rule : []
            content {
              ip_range = lookup(ip_rule.value, "ip_range") # (Required) 
              action   = lookup(ip_rule.value, "action", "Allow")
            }
          }

        }
      }

    }
  }

  pool_allocation_mode          = var.pool_allocation_mode          # Default: BatchService
  public_network_access_enabled = var.public_network_access_enabled # Default: True

  dynamic "key_vault_reference" { # var.key_vault_reference
    for_each = var.key_vault_reference != null ? var.key_vault_reference : []
    content {
      url = lookup(key_vault_reference.value, "url") # (Required) 
    }
  }

  storage_account_id                  = var.storage_account_id
  storage_account_authentication_mode = var.storage_account_authentication_mode
  storage_account_node_identity       = var.storage_account_node_identity
  allowed_authentication_modes        = var.allowed_authentication_modes

  dynamic "encryption" { # var.encryption
    for_each = var.encryption != null ? var.encryption : []
    content {
      key_vault_key_id = lookup(encryption.value, "key_vault_key_id") # (Required) 
    }
  }

  tags = var.tags
}
