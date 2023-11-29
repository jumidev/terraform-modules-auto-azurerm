data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name != null ? var.automation_account_resource_group_name : var.resource_group_name

}


resource "azurerm_automation_job_schedule" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name
  runbook_name            = var.runbook_name
  schedule_name           = var.schedule_name

  ########################################
  # optional vars
  ########################################
  parameters = var.parameters
  run_on     = var.run_on
}
