

resource "azurerm_disk_encryption_set" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  key_vault_key_id    = var.key_vault_key_id

  identity {
    type         = lookup(identity.value, "type") # (Required) 
    identity_ids = lookup(identity.value, "identity_ids", null)
  }


  ########################################
  # optional vars
  ########################################
  auto_key_rotation_enabled = var.auto_key_rotation_enabled # Default: False
  encryption_type           = var.encryption_type           # Default: EncryptionAtRestWithCustomerKey
  federated_client_id       = var.federated_client_id
  tags                      = var.tags
}
