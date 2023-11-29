

resource "azurerm_storage_account_customer_managed_key" "this" {

  ########################################
  # required vars
  ########################################
  storage_account_id = var.storage_account_id
  key_name           = var.key_name

  ########################################
  # optional vars
  ########################################
  key_vault_id                 = var.key_vault_id
  key_vault_uri                = var.key_vault_uri
  key_version                  = var.key_version
  user_assigned_identity_id    = var.user_assigned_identity_id
  federated_identity_client_id = var.federated_identity_client_id
}
