data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_product" "this" {

  ########################################
  # required vars
  ########################################
  api_management_name = data.azurerm_api_management.this.name
  display_name        = var.display_name
  product_id          = var.product_id
  published           = var.published
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  approval_required     = var.approval_required
  subscription_required = var.subscription_required # Default: True
  description           = var.description
  subscriptions_limit   = var.subscriptions_limit
  terms                 = var.terms
}
