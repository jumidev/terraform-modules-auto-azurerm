output "api_management_name" {
  value = azurerm_api_management_identity_provider_aad.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_identity_provider_aad.this.resource_group_name
}

output "client_id" {
  value = azurerm_api_management_identity_provider_aad.this.client_id
}

output "client_secret" {
  value = azurerm_api_management_identity_provider_aad.this.client_secret
}

output "allowed_tenants" {
  value = azurerm_api_management_identity_provider_aad.this.allowed_tenants
}

output "signin_tenant" {
  value = azurerm_api_management_identity_provider_aad.this.signin_tenant
}

output "id" {
  description = "The ID of the API Management AAD Identity Provider."
  value       = azurerm_api_management_identity_provider_aad.this.id
}

