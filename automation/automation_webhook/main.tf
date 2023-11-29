data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_webhook" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name
  expiry_time             = var.expiry_time
  runbook_name            = var.runbook_name

  ########################################
  # optional vars
  ########################################
  enabled             = var.enabled # Default: True
  run_on_worker_group = var.run_on_worker_group
  parameters          = var.parameters
  uri                 = var.uri
}
