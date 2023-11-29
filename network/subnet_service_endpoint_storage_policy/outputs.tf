output "name" {
  value = azurerm_subnet_service_endpoint_storage_policy.this.name
}

output "resource_group_name" {
  value = azurerm_subnet_service_endpoint_storage_policy.this.resource_group_name
}

output "location" {
  value = azurerm_subnet_service_endpoint_storage_policy.this.location
}

output "definition" {
  value = azurerm_subnet_service_endpoint_storage_policy.this.definition
}

output "tags" {
  value = azurerm_subnet_service_endpoint_storage_policy.this.tags
}

output "id" {
  description = "The ID of the Subnet Service Endpoint Storage Policy."
  value       = azurerm_subnet_service_endpoint_storage_policy.this.id
}

