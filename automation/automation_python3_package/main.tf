data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_python3_package" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name
  name                    = var.name
  content_uri             = var.content_uri

  ########################################
  # optional vars
  ########################################
  content_version = var.content_version
  hash_algorithm  = var.hash_algorithm
  hash_value      = var.hash_value
  tags            = var.tags
}
