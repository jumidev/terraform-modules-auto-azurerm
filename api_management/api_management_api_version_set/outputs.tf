output "name" {
  value = azurerm_api_management_api_version_set.this.name
}

output "api_management_name" {
  value = azurerm_api_management_api_version_set.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_api_version_set.this.resource_group_name
}

output "display_name" {
  value = azurerm_api_management_api_version_set.this.display_name
}

output "versioning_scheme" {
  value = azurerm_api_management_api_version_set.this.versioning_scheme
}

output "description" {
  value = azurerm_api_management_api_version_set.this.description
}

output "version_header_name" {
  value = azurerm_api_management_api_version_set.this.version_header_name
}

output "version_query_name" {
  value = azurerm_api_management_api_version_set.this.version_query_name
}

output "id" {
  description = "The ID of the API Version Set."
  value       = azurerm_api_management_api_version_set.this.id
}

