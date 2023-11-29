output "location" {
  value = azurerm_purview_account.this.location
}

output "identity" {
  value = azurerm_purview_account.this.identity
}

output "name" {
  value = azurerm_purview_account.this.name
}

output "resource_group_name" {
  value = azurerm_purview_account.this.resource_group_name
}

output "public_network_enabled" {
  value = azurerm_purview_account.this.public_network_enabled
}

output "managed_resource_group_name" {
  value = azurerm_purview_account.this.managed_resource_group_name
}

output "tags" {
  value = azurerm_purview_account.this.tags
}

output "id" {
  description = "The ID of the Purview Account."
  value       = azurerm_purview_account.this.id
}

output "atlas_kafka_endpoint_primary_connection_string" {
  description = "Atlas Kafka endpoint primary connection string."
  value       = azurerm_purview_account.this.atlas_kafka_endpoint_primary_connection_string
}

output "atlas_kafka_endpoint_secondary_connection_string" {
  description = "Atlas Kafka endpoint secondary connection string."
  value       = azurerm_purview_account.this.atlas_kafka_endpoint_secondary_connection_string
}

output "catalog_endpoint" {
  description = "Catalog endpoint."
  value       = azurerm_purview_account.this.catalog_endpoint
}

output "guardian_endpoint" {
  description = "Guardian endpoint."
  value       = azurerm_purview_account.this.guardian_endpoint
}

output "scan_endpoint" {
  description = "Scan endpoint."
  value       = azurerm_purview_account.this.scan_endpoint
}

output "identity" {
  description = "A 'identity' block."
  value       = azurerm_purview_account.this.identity
}

output "managed_resources" {
  description = "A 'managed_resources' block."
  value       = azurerm_purview_account.this.managed_resources
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_purview_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_purview_account.this.tenant_id
}

output "event_hub_namespace_id" {
  description = "The ID of the managed event hub namespace."
  value       = azurerm_purview_account.this.event_hub_namespace_id
}

output "resource_group_id" {
  description = "The ID of the managed resource group."
  value       = azurerm_purview_account.this.resource_group_id
}

output "storage_account_id" {
  description = "The ID of the managed storage account."
  value       = azurerm_purview_account.this.storage_account_id
}

