

resource "azurerm_data_protection_backup_policy_blob_storage" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  vault_id           = var.vault_id
  retention_duration = var.retention_duration
}
