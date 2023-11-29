data "azurerm_api_management" "this" {
  name                = var.api_management_name
  resource_group_name = var.api_management_resource_group_name == null ? null : var.api_management_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}
resource "random_string" "resource_owner_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_api_management_authorization_server" "this" {

  ########################################
  # required vars
  ########################################
  api_management_name          = data.azurerm_api_management.this.name
  authorization_methods        = var.authorization_methods
  authorization_endpoint       = var.authorization_endpoint
  client_id                    = var.client_id
  client_registration_endpoint = var.client_registration_endpoint
  display_name                 = var.display_name
  grant_types                  = var.grant_types
  name                         = var.name
  resource_group_name          = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  bearer_token_sending_methods = var.bearer_token_sending_methods
  client_authentication_method = var.client_authentication_method
  client_secret                = var.client_secret
  default_scope                = var.default_scope
  description                  = var.description
  resource_owner_password      = random_string.resource_owner_password.result
  resource_owner_username      = var.resource_owner_username
  support_state                = var.support_state

  dynamic "token_body_parameter" { # var.token_body_parameter
    for_each = var.token_body_parameter != null ? var.token_body_parameter : []
    content {
      name  = token_body_parameter.key
      value = lookup(token_body_parameter.value, "value") # (Required) 
    }
  }

  token_endpoint = var.token_endpoint
}
