output "location" {
  value = azurerm_search_service.this.location
}

output "name" {
  value = azurerm_search_service.this.name
}

output "resource_group_name" {
  value = azurerm_search_service.this.resource_group_name
}

output "sku" {
  value = azurerm_search_service.this.sku
}

output "allowed_ips" {
  value = azurerm_search_service.this.allowed_ips
}

output "authentication_failure_mode" {
  value = azurerm_search_service.this.authentication_failure_mode
}

output "customer_managed_key_enforcement_enabled" {
  value = azurerm_search_service.this.customer_managed_key_enforcement_enabled
}

output "hosting_mode" {
  value = azurerm_search_service.this.hosting_mode
}

output "identity" {
  value = azurerm_search_service.this.identity
}

output "local_authentication_enabled" {
  value = azurerm_search_service.this.local_authentication_enabled
}

output "partition_count" {
  value = azurerm_search_service.this.partition_count
}

output "public_network_access_enabled" {
  value = azurerm_search_service.this.public_network_access_enabled
}

output "replica_count" {
  value = azurerm_search_service.this.replica_count
}

output "semantic_search_sku" {
  value = azurerm_search_service.this.semantic_search_sku
}

output "tags" {
  value = azurerm_search_service.this.tags
}

output "id" {
  description = "The ID of the Search Service."
  value       = azurerm_search_service.this.id
}

output "primary_key" {
  description = "The Primary Key used for Search Service Administration."
  value       = azurerm_search_service.this.primary_key
}

output "query_keys" {
  description = "A 'query_keys' block."
  value       = azurerm_search_service.this.query_keys
}

output "secondary_key" {
  description = "The Secondary Key used for Search Service Administration."
  value       = azurerm_search_service.this.secondary_key
}

output "key" {
  description = "The value of this Query Key."
  value       = azurerm_search_service.this.key
}

output "name" {
  description = "The name of this Query Key."
  value       = azurerm_search_service.this.name
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_search_service.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_search_service.this.tenant_id
}

