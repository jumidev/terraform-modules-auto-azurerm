

resource "azurerm_eventhub_namespace_customer_managed_key" "this" {

  ########################################
  # required vars
  ########################################
  eventhub_namespace_id = var.eventhub_namespace_id
  key_vault_key_ids     = var.key_vault_key_ids

  ########################################
  # optional vars
  ########################################
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  user_assigned_identity_id         = var.user_assigned_identity_id
}
