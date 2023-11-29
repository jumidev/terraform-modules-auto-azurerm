output "api_management_name" {
  value = azurerm_api_management_identity_provider_facebook.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_identity_provider_facebook.this.resource_group_name
}

output "app_id" {
  value = azurerm_api_management_identity_provider_facebook.this.app_id
}

output "app_secret" {
  value = azurerm_api_management_identity_provider_facebook.this.app_secret
}

output "id" {
  description = "The ID of the API Management Facebook Identity Provider."
  value       = azurerm_api_management_identity_provider_facebook.this.id
}

