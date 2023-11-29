data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_backup_protected_vm" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  recovery_vault_name = var.recovery_vault_name

  ########################################
  # optional vars
  ########################################
  source_vm_id      = var.source_vm_id
  backup_policy_id  = var.backup_policy_id
  exclude_disk_luns = var.exclude_disk_luns
  include_disk_luns = var.include_disk_luns
  protection_state  = var.protection_state
}
