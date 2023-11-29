

resource "azurerm_data_protection_backup_instance_blob_storage" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  location           = var.location
  vault_id           = var.vault_id
  storage_account_id = var.storage_account_id
  backup_policy_id   = var.backup_policy_id
}
