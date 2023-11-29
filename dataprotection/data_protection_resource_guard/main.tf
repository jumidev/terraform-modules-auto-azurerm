data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_data_protection_resource_guard" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  vault_critical_operation_exclusion_list = var.vault_critical_operation_exclusion_list
  tags                                    = var.tags
}
