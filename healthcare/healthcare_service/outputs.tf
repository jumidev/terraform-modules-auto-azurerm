output "name" {
  value = azurerm_healthcare_service.this.name
}

output "resource_group_name" {
  value = azurerm_healthcare_service.this.resource_group_name
}

output "location" {
  value = azurerm_healthcare_service.this.location
}

output "access_policy_object_ids" {
  value = azurerm_healthcare_service.this.access_policy_object_ids
}

output "authentication_configuration" {
  value = azurerm_healthcare_service.this.authentication_configuration
}

output "cosmosdb_throughput" {
  value = azurerm_healthcare_service.this.cosmosdb_throughput
}

output "cosmosdb_key_vault_key_versionless_id" {
  value = azurerm_healthcare_service.this.cosmosdb_key_vault_key_versionless_id
}

output "cors_configuration" {
  value = azurerm_healthcare_service.this.cors_configuration
}

output "public_network_access_enabled" {
  value = azurerm_healthcare_service.this.public_network_access_enabled
}

output "kind" {
  value = azurerm_healthcare_service.this.kind
}

output "tags" {
  value = azurerm_healthcare_service.this.tags
}

output "id" {
  description = "The ID of the Healthcare Service."
  value       = azurerm_healthcare_service.this.id
}

