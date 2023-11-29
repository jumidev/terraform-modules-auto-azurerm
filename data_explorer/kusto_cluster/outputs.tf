output "name" {
  value = azurerm_kusto_cluster.this.name
}

output "location" {
  value = azurerm_kusto_cluster.this.location
}

output "resource_group_name" {
  value = azurerm_kusto_cluster.this.resource_group_name
}

output "sku" {
  value = azurerm_kusto_cluster.this.sku
}

output "allowed_fqdns" {
  value = azurerm_kusto_cluster.this.allowed_fqdns
}

output "allowed_ip_ranges" {
  value = azurerm_kusto_cluster.this.allowed_ip_ranges
}

output "double_encryption_enabled" {
  value = azurerm_kusto_cluster.this.double_encryption_enabled
}

output "identity" {
  value = azurerm_kusto_cluster.this.identity
}

output "auto_stop_enabled" {
  value = azurerm_kusto_cluster.this.auto_stop_enabled
}

output "disk_encryption_enabled" {
  value = azurerm_kusto_cluster.this.disk_encryption_enabled
}

output "streaming_ingestion_enabled" {
  value = azurerm_kusto_cluster.this.streaming_ingestion_enabled
}

output "public_ip_type" {
  value = azurerm_kusto_cluster.this.public_ip_type
}

output "public_network_access_enabled" {
  value = azurerm_kusto_cluster.this.public_network_access_enabled
}

output "outbound_network_access_restricted" {
  value = azurerm_kusto_cluster.this.outbound_network_access_restricted
}

output "purge_enabled" {
  value = azurerm_kusto_cluster.this.purge_enabled
}

output "virtual_network_configuration" {
  value = azurerm_kusto_cluster.this.virtual_network_configuration
}

output "language_extensions" {
  value = azurerm_kusto_cluster.this.language_extensions
}

output "optimized_auto_scale" {
  value = azurerm_kusto_cluster.this.optimized_auto_scale
}

output "tags" {
  value = azurerm_kusto_cluster.this.tags
}

output "trusted_external_tenants" {
  value = azurerm_kusto_cluster.this.trusted_external_tenants
}

output "zones" {
  value = azurerm_kusto_cluster.this.zones
}

output "id" {
  description = "The Kusto Cluster ID."
  value       = azurerm_kusto_cluster.this.id
}

output "uri" {
  description = "The FQDN of the Azure Kusto Cluster."
  value       = azurerm_kusto_cluster.this.uri
}

output "data_ingestion_uri" {
  description = "The Kusto Cluster URI to be used for data ingestion."
  value       = azurerm_kusto_cluster.this.data_ingestion_uri
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_kusto_cluster.this.identity
}

output "principal_id" {
  description = "The Principal ID associated with this System Assigned Managed Service Identity."
  value       = azurerm_kusto_cluster.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this System Assigned Managed Service Identity."
  value       = azurerm_kusto_cluster.this.tenant_id
}

