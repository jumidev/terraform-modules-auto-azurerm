output "name" {
  value = azurerm_api_management_backend.this.name
}

output "api_management_name" {
  value = azurerm_api_management_backend.this.api_management_name
}

output "resource_group_name" {
  value = azurerm_api_management_backend.this.resource_group_name
}

output "protocol" {
  value = azurerm_api_management_backend.this.protocol
}

output "url" {
  value = azurerm_api_management_backend.this.url
}

output "credentials" {
  value = azurerm_api_management_backend.this.credentials
}

output "description" {
  value = azurerm_api_management_backend.this.description
}

output "proxy" {
  value = azurerm_api_management_backend.this.proxy
}

output "resource_id" {
  value = azurerm_api_management_backend.this.resource_id
}

output "service_fabric_cluster" {
  value = azurerm_api_management_backend.this.service_fabric_cluster
}

output "title" {
  value = azurerm_api_management_backend.this.title
}

output "tls" {
  value = azurerm_api_management_backend.this.tls
}

output "id" {
  description = "The ID of the API Management API."
  value       = azurerm_api_management_backend.this.id
}

