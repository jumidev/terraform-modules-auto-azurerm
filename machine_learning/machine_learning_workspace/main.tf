data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_machine_learning_workspace" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  location                = var.location
  application_insights_id = var.application_insights_id
  key_vault_id            = var.key_vault_id
  storage_account_id      = var.storage_account_id

  identity {
    type         = lookup(identity.value, "type") # (Required) 
    identity_ids = lookup(identity.value, "identity_ids", null)
  }


  ########################################
  # optional vars
  ########################################
  container_registry_id                        = var.container_registry_id
  public_access_behind_virtual_network_enabled = var.public_access_behind_virtual_network_enabled
  public_network_access_enabled                = var.public_network_access_enabled
  image_build_compute_name                     = var.image_build_compute_name
  description                                  = var.description

  dynamic "encryption" { # var.encryption
    for_each = var.encryption != null ? var.encryption : []
    content {
      key_vault_id              = lookup(encryption.value, "key_vault_id") # (Required) 
      key_id                    = lookup(encryption.value, "key_id")       # (Required) 
      user_assigned_identity_id = lookup(encryption.value, "user_assigned_identity_id", null)
    }
  }

  friendly_name                  = var.friendly_name
  high_business_impact           = var.high_business_impact
  primary_user_assigned_identity = var.primary_user_assigned_identity
  v1_legacy_mode_enabled         = var.v1_legacy_mode_enabled # Default: False
  sku_name                       = var.sku_name               # Default: Basic
  tags                           = var.tags
}
