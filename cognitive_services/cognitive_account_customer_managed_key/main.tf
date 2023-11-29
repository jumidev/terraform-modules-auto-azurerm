

resource "azurerm_cognitive_account_customer_managed_key" "this" {

  ########################################
  # required vars
  ########################################
  cognitive_account_id = var.cognitive_account_id
  key_vault_key_id     = var.key_vault_key_id

  ########################################
  # optional vars
  ########################################
  identity_client_id = var.identity_client_id
}
