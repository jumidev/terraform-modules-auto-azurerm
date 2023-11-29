output "api_management_name" {
  value = azurerm_api_management_identity_provider_google.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_identity_provider_google.this.resource_group_name
}

output "client_id" {
  value = azurerm_api_management_identity_provider_google.this.client_id
}

output "client_secret" {
  value = azurerm_api_management_identity_provider_google.this.client_secret
}

output "id" {
  description = "The ID of the API Management Google Identity Provider."
  value       = azurerm_api_management_identity_provider_google.this.id
}

