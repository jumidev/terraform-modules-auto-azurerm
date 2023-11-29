data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
data "azurerm_automation_account" "this" {
  name                = var.automation_account_name
  resource_group_name = var.automation_account_resource_group_name == null ? null : var.automation_account_resource_group_name
}


resource "azurerm_automation_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                    = var.name
  resource_group_name     = data.azurerm_resource_group.this.name
  automation_account_name = data.azurerm_automation_account.this.name
  type                    = var.type
  values                  = var.values

  ########################################
  # optional vars
  ########################################
  Azure                   = var.Azure
  AzureClassicCertificate = var.AzureClassicCertificate
  AzureServicePrincipal   = var.AzureServicePrincipal
  description             = var.description
}
