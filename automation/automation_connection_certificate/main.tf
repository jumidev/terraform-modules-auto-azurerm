data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_connection_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name
  automation_account_name     = data.azurerm_automation_account.this.name
  automation_certificate_name = var.automation_certificate_name
  subscription_id             = var.subscription_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
