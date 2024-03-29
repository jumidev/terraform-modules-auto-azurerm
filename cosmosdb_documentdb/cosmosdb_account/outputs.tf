output "name" {
  value = azurerm_cosmosdb_account.this.name
}

output "resource_group_name" {
  value = azurerm_cosmosdb_account.this.resource_group_name
}

output "location" {
  value = azurerm_cosmosdb_account.this.location
}

output "tags" {
  value = azurerm_cosmosdb_account.this.tags
}

output "offer_type" {
  value = azurerm_cosmosdb_account.this.offer_type
}

output "analytical_storage" {
  value = azurerm_cosmosdb_account.this.analytical_storage
}

output "capacity" {
  value = azurerm_cosmosdb_account.this.capacity
}

output "create_mode" {
  value = azurerm_cosmosdb_account.this.create_mode
}

output "default_identity_type" {
  value = azurerm_cosmosdb_account.this.default_identity_type
}

output "kind" {
  value = azurerm_cosmosdb_account.this.kind
}

output "consistency_policy" {
  value = azurerm_cosmosdb_account.this.consistency_policy
}

output "geo_location" {
  value = azurerm_cosmosdb_account.this.geo_location
}

output "ip_range_filter" {
  value = azurerm_cosmosdb_account.this.ip_range_filter
}

output "enable_free_tier" {
  value = azurerm_cosmosdb_account.this.enable_free_tier
}

output "analytical_storage_enabled" {
  value = azurerm_cosmosdb_account.this.analytical_storage_enabled
}

output "enable_automatic_failover" {
  value = azurerm_cosmosdb_account.this.enable_automatic_failover
}

output "public_network_access_enabled" {
  value = azurerm_cosmosdb_account.this.public_network_access_enabled
}

output "capabilities" {
  value = azurerm_cosmosdb_account.this.capabilities
}

output "is_virtual_network_filter_enabled" {
  value = azurerm_cosmosdb_account.this.is_virtual_network_filter_enabled
}

output "key_vault_key_id" {
  value = azurerm_cosmosdb_account.this.key_vault_key_id
}

output "virtual_network_rule" {
  value = azurerm_cosmosdb_account.this.virtual_network_rule
}

output "enable_multiple_write_locations" {
  value = azurerm_cosmosdb_account.this.enable_multiple_write_locations
}

output "access_key_metadata_writes_enabled" {
  value = azurerm_cosmosdb_account.this.access_key_metadata_writes_enabled
}

output "mongo_server_version" {
  value = azurerm_cosmosdb_account.this.mongo_server_version
}

output "network_acl_bypass_for_azure_services" {
  value = azurerm_cosmosdb_account.this.network_acl_bypass_for_azure_services
}

output "network_acl_bypass_ids" {
  value = azurerm_cosmosdb_account.this.network_acl_bypass_ids
}

output "local_authentication_disabled" {
  value = azurerm_cosmosdb_account.this.local_authentication_disabled
}

output "backup" {
  value = azurerm_cosmosdb_account.this.backup
}

output "cors_rule" {
  value = azurerm_cosmosdb_account.this.cors_rule
}

output "identity" {
  value = azurerm_cosmosdb_account.this.identity
}

output "restore" {
  value = azurerm_cosmosdb_account.this.restore
}

output "collection_names" {
  description = "A list of the collection names for the restore request. Changing this forces a new resource to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_cosmosdb_account.this.collection_names
}

output "id" {
  description = "The CosmosDB Account ID."
  value       = azurerm_cosmosdb_account.this.id
}

output "endpoint" {
  description = "The endpoint used to connect to the CosmosDB account."
  value       = azurerm_cosmosdb_account.this.endpoint
}

output "read_endpoints" {
  description = "A list of read endpoints available for this CosmosDB account."
  value       = azurerm_cosmosdb_account.this.read_endpoints
}

output "write_endpoints" {
  description = "A list of write endpoints available for this CosmosDB account."
  value       = azurerm_cosmosdb_account.this.write_endpoints
}

output "primary_key" {
  description = "The Primary key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.primary_key
}

output "secondary_key" {
  description = "The Secondary key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.secondary_key
}

output "primary_readonly_key" {
  description = "The Primary read-only Key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.primary_readonly_key
}

output "secondary_readonly_key" {
  description = "The Secondary read-only key for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.secondary_readonly_key
}

output "connection_strings" {
  description = "A list of connection strings available for this CosmosDB account."
  value       = azurerm_cosmosdb_account.this.connection_strings
}

output "primary_sql_connection_string" {
  description = "Primary SQL connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.primary_sql_connection_string
}

output "secondary_sql_connection_string" {
  description = "Secondary SQL connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.secondary_sql_connection_string
}

output "primary_readonly_sql_connection_string" {
  description = "Primary readonly SQL connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.primary_readonly_sql_connection_string
}

output "secondary_readonly_sql_connection_string" {
  description = "Secondary readonly SQL connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.secondary_readonly_sql_connection_string
}

output "primary_mongodb_connection_string" {
  description = "Primary Mongodb connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.primary_mongodb_connection_string
}

output "secondary_mongodb_connection_string" {
  description = "Secondary Mongodb connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.secondary_mongodb_connection_string
}

output "primary_readonly_mongodb_connection_string" {
  description = "Primary readonly Mongodb connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.primary_readonly_mongodb_connection_string
}

output "secondary_readonly_mongodb_connection_string" {
  description = "Secondary readonly Mongodb connection string for the CosmosDB Account."
  value       = azurerm_cosmosdb_account.this.secondary_readonly_mongodb_connection_string
}

output "principal_id" {
  description = "The Principal ID associated with this Managed Service Identity."
  value       = azurerm_cosmosdb_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID associated with this Managed Service Identity."
  value       = azurerm_cosmosdb_account.this.tenant_id
}

output "spring_cloud_app_cosmosdb_association" {
  value = var.spring_cloud_app_cosmosdb_association
}

