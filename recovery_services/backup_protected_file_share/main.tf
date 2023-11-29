data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_backup_protected_file_share" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name       = data.azurerm_resource_group.this.name
  recovery_vault_name       = var.recovery_vault_name
  source_storage_account_id = var.source_storage_account_id
  source_file_share_name    = var.source_file_share_name
  backup_policy_id          = var.backup_policy_id
}
