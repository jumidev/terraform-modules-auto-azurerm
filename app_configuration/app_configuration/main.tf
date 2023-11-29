data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_configuration" "this" {

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
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }


  dynamic "encryption" { # var.encryption
    for_each = var.encryption != null ? var.encryption : []
    content {
      key_vault_key_identifier = lookup(encryption.value, "key_vault_key_identifier", null)
      identity_client_id       = lookup(encryption.value, "identity_client_id", null)
    }
  }

  local_auth_enabled       = var.local_auth_enabled # Default: True
  public_network_access    = var.public_network_access
  purge_protection_enabled = var.purge_protection_enabled # Default: False

  dynamic "replica" { # var.replica
    for_each = var.replica != null ? var.replica : []
    content {
      location = lookup(replica.value, "location") # (Required) 
      name     = replica.key
    }
  }

  sku                        = var.sku                        # Default: free
  soft_delete_retention_days = var.soft_delete_retention_days # Default: 7
  tags                       = var.tags
}
