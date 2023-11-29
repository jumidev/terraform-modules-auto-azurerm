

resource "azurerm_key_vault_managed_storage_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  key_vault_id        = var.key_vault_id
  storage_account_id  = var.storage_account_id
  storage_account_key = var.storage_account_key

  ########################################
  # optional vars
  ########################################
  regenerate_key_automatically = var.regenerate_key_automatically
  regeneration_period          = var.regeneration_period
  tags                         = var.tags
}
