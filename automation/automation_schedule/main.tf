data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_schedule" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name
  frequency               = var.frequency

  ########################################
  # optional vars
  ########################################
  description = var.description
  interval    = var.interval # Default: 1
  start_time  = var.start_time
  expiry_time = var.expiry_time
  timezone    = var.timezone # Default: Etc/UTC
  week_days   = var.week_days
  month_days  = var.month_days
}
