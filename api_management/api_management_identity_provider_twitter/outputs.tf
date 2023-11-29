output "api_management_name" {
  value = azurerm_api_management_identity_provider_twitter.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_identity_provider_twitter.this.resource_group_name
}

output "api_key" {
  value = azurerm_api_management_identity_provider_twitter.this.api_key
}

output "api_secret_key" {
  value = azurerm_api_management_identity_provider_twitter.this.api_secret_key
}

output "id" {
  description = "The ID of the API Management Twitter Identity Provider."
  value       = azurerm_api_management_identity_provider_twitter.this.id
}

