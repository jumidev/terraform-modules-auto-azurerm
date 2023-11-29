output "api_management_name" {
  value = azurerm_api_management_identity_provider_microsoft.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_identity_provider_microsoft.this.resource_group_name
}

output "client_id" {
  value = azurerm_api_management_identity_provider_microsoft.this.client_id
}

output "client_secret" {
  value = azurerm_api_management_identity_provider_microsoft.this.client_secret
}

output "id" {
  description = "The ID of the API Management Microsoft Identity Provider."
  value       = azurerm_api_management_identity_provider_microsoft.this.id
}

