data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_automation_hybrid_runbook_worker_group" "this" {

  ########################################
  # required vars
  ########################################
  automation_account_name = data.azurerm_automation_account.this.name
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  credential_name = var.credential_name
}
