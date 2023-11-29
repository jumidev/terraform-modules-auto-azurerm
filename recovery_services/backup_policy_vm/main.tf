data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_backup_policy_vm" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  recovery_vault_name = var.recovery_vault_name
}
