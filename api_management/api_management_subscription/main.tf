data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_subscription" "this" {

  ########################################
  # required vars
  ########################################
  api_management_name = data.azurerm_api_management.this.name
  display_name        = var.display_name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  product_id      = var.product_id
  user_id         = var.user_id
  api_id          = var.api_id
  primary_key     = var.primary_key
  secondary_key   = var.secondary_key
  state           = var.state # Default: submitted
  subscription_id = var.subscription_id
  allow_tracing   = var.allow_tracing # Default: True
}
