output "name" {
  value = azurerm_eventhub_namespace.this.name
}

output "resource_group_name" {
  value = azurerm_eventhub_namespace.this.resource_group_name
}

output "location" {
  value = azurerm_eventhub_namespace.this.location
}

output "sku" {
  value = azurerm_eventhub_namespace.this.sku
}

output "capacity" {
  value = azurerm_eventhub_namespace.this.capacity
}

output "auto_inflate_enabled" {
  value = azurerm_eventhub_namespace.this.auto_inflate_enabled
}

output "dedicated_cluster_id" {
  value = azurerm_eventhub_namespace.this.dedicated_cluster_id
}

output "identity" {
  value = azurerm_eventhub_namespace.this.identity
}

output "maximum_throughput_units" {
  value = azurerm_eventhub_namespace.this.maximum_throughput_units
}

output "zone_redundant" {
  value = azurerm_eventhub_namespace.this.zone_redundant
}

output "tags" {
  value = azurerm_eventhub_namespace.this.tags
}

output "network_rulesets" {
  value = azurerm_eventhub_namespace.this.network_rulesets
}

output "local_authentication_enabled" {
  value = azurerm_eventhub_namespace.this.local_authentication_enabled
}

output "public_network_access_enabled" {
  value = azurerm_eventhub_namespace.this.public_network_access_enabled
}

output "minimum_tls_version" {
  value = azurerm_eventhub_namespace.this.minimum_tls_version
}

output "id" {
  description = "The EventHub Namespace ID."
  value       = azurerm_eventhub_namespace.this.id
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_eventhub_namespace.this.identity
}

output "default_primary_connection_string" {
  description = "The primary connection string for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_eventhub_namespace.this.default_primary_connection_string
}

output "default_primary_connection_string_alias" {
  description = "The alias of the primary connection string for the authorization rule 'RootManageSharedAccessKey', which is generated when disaster recovery is enabled."
  value       = azurerm_eventhub_namespace.this.default_primary_connection_string_alias
}

output "default_primary_key" {
  description = "The primary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_eventhub_namespace.this.default_primary_key
}

output "default_secondary_connection_string" {
  description = "The secondary connection string for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_eventhub_namespace.this.default_secondary_connection_string
}

output "default_secondary_connection_string_alias" {
  description = "The alias of the secondary connection string for the authorization rule 'RootManageSharedAccessKey', which is generated when disaster recovery is enabled."
  value       = azurerm_eventhub_namespace.this.default_secondary_connection_string_alias
}

output "default_secondary_key" {
  description = "The secondary access key for the authorization rule 'RootManageSharedAccessKey'."
  value       = azurerm_eventhub_namespace.this.default_secondary_key
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_eventhub_namespace.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_eventhub_namespace.this.tenant_id
}

