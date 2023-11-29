data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}
data "azurerm_subscription" "this" {
  subscription_id = var.subscription_subscription_id
}


resource "azurerm_automation_connection_classic_certificate" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name
  certificate_asset_name  = var.certificate_asset_name
  subscription_name       = data.azurerm_subscription.this.name
  subscription_id         = var.subscription_id

  ########################################
  # optional vars
  ########################################
  description = var.description
}
