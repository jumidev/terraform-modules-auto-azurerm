output "name" {
  value = azurerm_api_management_openid_connect_provider.this.name
}

output "api_management_name" {
  value = azurerm_api_management_openid_connect_provider.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_openid_connect_provider.this.resource_group_name
}

output "client_id" {
  value = azurerm_api_management_openid_connect_provider.this.client_id
}

output "client_secret" {
  value = azurerm_api_management_openid_connect_provider.this.client_secret
}

output "display_name" {
  value = azurerm_api_management_openid_connect_provider.this.display_name
}

output "metadata_endpoint" {
  value = azurerm_api_management_openid_connect_provider.this.metadata_endpoint
}

output "description" {
  value = azurerm_api_management_openid_connect_provider.this.description
}

output "id" {
  description = "The ID of the API Management OpenID Connect Provider."
  value       = azurerm_api_management_openid_connect_provider.this.id
}

