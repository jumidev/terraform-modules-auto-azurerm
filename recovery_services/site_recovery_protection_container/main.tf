data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_site_recovery_protection_container" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  resource_group_name  = data.azurerm_resource_group.this.name
  recovery_vault_name  = var.recovery_vault_name
  recovery_fabric_name = var.recovery_fabric_name
}
