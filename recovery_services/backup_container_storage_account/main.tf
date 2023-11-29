data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_backup_container_storage_account" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  recovery_vault_name = var.recovery_vault_name
  storage_account_id  = var.storage_account_id
}
