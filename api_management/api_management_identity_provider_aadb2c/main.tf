data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_api_management_identity_provider_aadb2c" "this" {

  ########################################
  # required vars
  ########################################
  api_management_name = data.azurerm_api_management.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  client_id           = var.client_id
  client_secret       = var.client_secret
  allowed_tenant      = var.allowed_tenant
  signin_tenant       = var.signin_tenant
  authority           = var.authority
  signin_policy       = var.signin_policy
  signup_policy       = var.signup_policy

  ########################################
  # optional vars
  ########################################
  password_reset_policy  = var.password_reset_policy
  profile_editing_policy = var.profile_editing_policy
}
