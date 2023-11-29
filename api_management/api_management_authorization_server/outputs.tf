output "api_management_name" {
  value = azurerm_api_management_authorization_server.this.api_management_name
}

output "authorization_methods" {
  value = azurerm_api_management_authorization_server.this.authorization_methods
}

output "authorization_endpoint" {
  value = azurerm_api_management_authorization_server.this.authorization_endpoint
}

output "client_id" {
  value = azurerm_api_management_authorization_server.this.client_id
}

output "client_registration_endpoint" {
  value = azurerm_api_management_authorization_server.this.client_registration_endpoint
}

output "display_name" {
  value = azurerm_api_management_authorization_server.this.display_name
}

output "grant_types" {
  value = azurerm_api_management_authorization_server.this.grant_types
}

output "name" {
  value = azurerm_api_management_authorization_server.this.name
}

output "resource_group_name" {
  value = azurerm_api_management_authorization_server.this.resource_group_name
}

output "bearer_token_sending_methods" {
  value = azurerm_api_management_authorization_server.this.bearer_token_sending_methods
}

output "client_authentication_method" {
  value = azurerm_api_management_authorization_server.this.client_authentication_method
}

output "client_secret" {
  value = azurerm_api_management_authorization_server.this.client_secret
}

output "default_scope" {
  value = azurerm_api_management_authorization_server.this.default_scope
}

output "description" {
  value = azurerm_api_management_authorization_server.this.description
}

output "resource_owner_password" {
  value     = random_string.resource_owner_password.result
  sensitive = true
}

output "resource_owner_username" {
  value = azurerm_api_management_authorization_server.this.resource_owner_username
}

output "support_state" {
  value = azurerm_api_management_authorization_server.this.support_state
}

output "token_body_parameter" {
  value = azurerm_api_management_authorization_server.this.token_body_parameter
}

output "token_endpoint" {
  value = azurerm_api_management_authorization_server.this.token_endpoint
}

output "id" {
  description = "The ID of the API Management Authorization Server."
  value       = azurerm_api_management_authorization_server.this.id
}

