data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_user" "this" {

  ########################################
  # required vars
  ########################################
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  email               = var.email
  first_name          = var.first_name
  last_name           = var.last_name
  user_id             = var.user_id

  ########################################
  # optional vars
  ########################################
  confirmation = var.confirmation
  note         = var.note
  password     = var.password
  state        = var.state
}
