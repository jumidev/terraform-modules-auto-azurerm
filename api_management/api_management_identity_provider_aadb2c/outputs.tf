output "api_management_name" {
  value = azurerm_api_management_identity_provider_aadb2c.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_identity_provider_aadb2c.this.resource_group_name
}

output "client_id" {
  value = azurerm_api_management_identity_provider_aadb2c.this.client_id
}

output "client_secret" {
  value = azurerm_api_management_identity_provider_aadb2c.this.client_secret
}

output "allowed_tenant" {
  value = azurerm_api_management_identity_provider_aadb2c.this.allowed_tenant
}

output "signin_tenant" {
  value = azurerm_api_management_identity_provider_aadb2c.this.signin_tenant
}

output "authority" {
  value = azurerm_api_management_identity_provider_aadb2c.this.authority
}

output "signin_policy" {
  value = azurerm_api_management_identity_provider_aadb2c.this.signin_policy
}

output "signup_policy" {
  value = azurerm_api_management_identity_provider_aadb2c.this.signup_policy
}

output "password_reset_policy" {
  value     = azurerm_api_management_identity_provider_aadb2c.this.password_reset_policy
  sensitive = true
}

output "profile_editing_policy" {
  value = azurerm_api_management_identity_provider_aadb2c.this.profile_editing_policy
}

output "id" {
  description = "The ID of the API Management Azure AD B2C Identity Provider Resource."
  value       = azurerm_api_management_identity_provider_aadb2c.this.id
}

