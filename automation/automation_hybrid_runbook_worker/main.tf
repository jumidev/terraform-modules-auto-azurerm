data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_hybrid_runbook_worker" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name
  worker_group_name       = var.worker_group_name
  worker_id               = var.worker_id
  vm_resource_id          = var.vm_resource_id
}
