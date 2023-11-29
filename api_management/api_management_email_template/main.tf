data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_email_template" "this" {

  ########################################
  # required vars
  ########################################
  template_name       = var.template_name
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  subject             = var.subject
  body                = var.body
}
