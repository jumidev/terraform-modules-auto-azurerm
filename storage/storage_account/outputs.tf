output "name" {
  value = azurerm_storage_account.this.name
}

output "resource_group_name" {
  value = azurerm_storage_account.this.resource_group_name
}

output "location" {
  value = azurerm_storage_account.this.location
}

output "account_kind" {
  value = azurerm_storage_account.this.account_kind
}

output "account_tier" {
  value = azurerm_storage_account.this.account_tier
}

output "account_replication_type" {
  value = azurerm_storage_account.this.account_replication_type
}

output "cross_tenant_replication_enabled" {
  value = azurerm_storage_account.this.cross_tenant_replication_enabled
}

output "access_tier" {
  value = azurerm_storage_account.this.access_tier
}

output "edge_zone" {
  value = azurerm_storage_account.this.edge_zone
}

output "enable_https_traffic_only" {
  value = azurerm_storage_account.this.enable_https_traffic_only
}

output "min_tls_version" {
  value = azurerm_storage_account.this.min_tls_version
}

output "allow_nested_items_to_be_public" {
  value = azurerm_storage_account.this.allow_nested_items_to_be_public
}

output "shared_access_key_enabled" {
  value = azurerm_storage_account.this.shared_access_key_enabled
}

output "public_network_access_enabled" {
  value = azurerm_storage_account.this.public_network_access_enabled
}

output "default_to_oauth_authentication" {
  value = azurerm_storage_account.this.default_to_oauth_authentication
}

output "is_hns_enabled" {
  value = azurerm_storage_account.this.is_hns_enabled
}

output "nfsv3_enabled" {
  value = azurerm_storage_account.this.nfsv3_enabled
}

output "custom_domain" {
  value = azurerm_storage_account.this.custom_domain
}

output "customer_managed_key" {
  value = azurerm_storage_account.this.customer_managed_key
}

output "identity" {
  value = azurerm_storage_account.this.identity
}

output "blob_properties" {
  value = azurerm_storage_account.this.blob_properties
}

output "queue_properties" {
  value = azurerm_storage_account.this.queue_properties
}

output "static_website" {
  value = azurerm_storage_account.this.static_website
}

output "share_properties" {
  value = azurerm_storage_account.this.share_properties
}

output "network_rules" {
  value = azurerm_storage_account.this.network_rules
}

output "large_file_share_enabled" {
  value = azurerm_storage_account.this.large_file_share_enabled
}

output "azure_files_authentication" {
  value = azurerm_storage_account.this.azure_files_authentication
}

output "routing" {
  value = azurerm_storage_account.this.routing
}

output "queue_encryption_key_type" {
  value = azurerm_storage_account.this.queue_encryption_key_type
}

output "table_encryption_key_type" {
  value = azurerm_storage_account.this.table_encryption_key_type
}

output "infrastructure_encryption_enabled" {
  value = azurerm_storage_account.this.infrastructure_encryption_enabled
}

output "immutability_policy" {
  value = azurerm_storage_account.this.immutability_policy
}

output "sas_policy" {
  value = azurerm_storage_account.this.sas_policy
}

output "allowed_copy_scope" {
  value = azurerm_storage_account.this.allowed_copy_scope
}

output "sftp_enabled" {
  value = azurerm_storage_account.this.sftp_enabled
}

output "tags" {
  value = azurerm_storage_account.this.tags
}

output "id" {
  description = "The ID of the Storage Account."
  value       = azurerm_storage_account.this.id
}

output "primary_location" {
  description = "The primary location of the storage account."
  value       = azurerm_storage_account.this.primary_location
}

output "secondary_location" {
  description = "The secondary location of the storage account."
  value       = azurerm_storage_account.this.secondary_location
}

output "primary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the primary location."
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "primary_blob_host" {
  description = "The hostname with port if applicable for blob storage in the primary location."
  value       = azurerm_storage_account.this.primary_blob_host
}

output "primary_blob_internet_endpoint" {
  description = "The internet routing endpoint URL for blob storage in the primary location."
  value       = azurerm_storage_account.this.primary_blob_internet_endpoint
}

output "primary_blob_internet_host" {
  description = "The internet routing hostname with port if applicable for blob storage in the primary location."
  value       = azurerm_storage_account.this.primary_blob_internet_host
}

output "primary_blob_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for blob storage in the primary location."
  value       = azurerm_storage_account.this.primary_blob_microsoft_endpoint
}

output "primary_blob_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for blob storage in the primary location."
  value       = azurerm_storage_account.this.primary_blob_microsoft_host
}

output "secondary_blob_endpoint" {
  description = "The endpoint URL for blob storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_blob_endpoint
}

output "secondary_blob_host" {
  description = "The hostname with port if applicable for blob storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_blob_host
}

output "secondary_blob_internet_endpoint" {
  description = "The internet routing endpoint URL for blob storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_blob_internet_endpoint
}

output "secondary_blob_internet_host" {
  description = "The internet routing hostname with port if applicable for blob storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_blob_internet_host
}

output "secondary_blob_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for blob storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_blob_microsoft_endpoint
}

output "secondary_blob_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for blob storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_blob_microsoft_host
}

output "primary_queue_endpoint" {
  description = "The endpoint URL for queue storage in the primary location."
  value       = azurerm_storage_account.this.primary_queue_endpoint
}

output "primary_queue_host" {
  description = "The hostname with port if applicable for queue storage in the primary location."
  value       = azurerm_storage_account.this.primary_queue_host
}

output "primary_queue_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for queue storage in the primary location."
  value       = azurerm_storage_account.this.primary_queue_microsoft_endpoint
}

output "primary_queue_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for queue storage in the primary location."
  value       = azurerm_storage_account.this.primary_queue_microsoft_host
}

output "secondary_queue_endpoint" {
  description = "The endpoint URL for queue storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_queue_endpoint
}

output "secondary_queue_host" {
  description = "The hostname with port if applicable for queue storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_queue_host
}

output "secondary_queue_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for queue storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_queue_microsoft_endpoint
}

output "secondary_queue_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for queue storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_queue_microsoft_host
}

output "primary_table_endpoint" {
  description = "The endpoint URL for table storage in the primary location."
  value       = azurerm_storage_account.this.primary_table_endpoint
}

output "primary_table_host" {
  description = "The hostname with port if applicable for table storage in the primary location."
  value       = azurerm_storage_account.this.primary_table_host
}

output "primary_table_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for table storage in the primary location."
  value       = azurerm_storage_account.this.primary_table_microsoft_endpoint
}

output "primary_table_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for table storage in the primary location."
  value       = azurerm_storage_account.this.primary_table_microsoft_host
}

output "secondary_table_endpoint" {
  description = "The endpoint URL for table storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_table_endpoint
}

output "secondary_table_host" {
  description = "The hostname with port if applicable for table storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_table_host
}

output "secondary_table_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for table storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_table_microsoft_endpoint
}

output "secondary_table_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for table storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_table_microsoft_host
}

output "primary_file_endpoint" {
  description = "The endpoint URL for file storage in the primary location."
  value       = azurerm_storage_account.this.primary_file_endpoint
}

output "primary_file_host" {
  description = "The hostname with port if applicable for file storage in the primary location."
  value       = azurerm_storage_account.this.primary_file_host
}

output "primary_file_internet_endpoint" {
  description = "The internet routing endpoint URL for file storage in the primary location."
  value       = azurerm_storage_account.this.primary_file_internet_endpoint
}

output "primary_file_internet_host" {
  description = "The internet routing hostname with port if applicable for file storage in the primary location."
  value       = azurerm_storage_account.this.primary_file_internet_host
}

output "primary_file_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for file storage in the primary location."
  value       = azurerm_storage_account.this.primary_file_microsoft_endpoint
}

output "primary_file_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for file storage in the primary location."
  value       = azurerm_storage_account.this.primary_file_microsoft_host
}

output "secondary_file_endpoint" {
  description = "The endpoint URL for file storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_file_endpoint
}

output "secondary_file_host" {
  description = "The hostname with port if applicable for file storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_file_host
}

output "secondary_file_internet_endpoint" {
  description = "The internet routing endpoint URL for file storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_file_internet_endpoint
}

output "secondary_file_internet_host" {
  description = "The internet routing hostname with port if applicable for file storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_file_internet_host
}

output "secondary_file_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for file storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_file_microsoft_endpoint
}

output "secondary_file_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for file storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_file_microsoft_host
}

output "primary_dfs_endpoint" {
  description = "The endpoint URL for DFS storage in the primary location."
  value       = azurerm_storage_account.this.primary_dfs_endpoint
}

output "primary_dfs_host" {
  description = "The hostname with port if applicable for DFS storage in the primary location."
  value       = azurerm_storage_account.this.primary_dfs_host
}

output "primary_dfs_internet_endpoint" {
  description = "The internet routing endpoint URL for DFS storage in the primary location."
  value       = azurerm_storage_account.this.primary_dfs_internet_endpoint
}

output "primary_dfs_internet_host" {
  description = "The internet routing hostname with port if applicable for DFS storage in the primary location."
  value       = azurerm_storage_account.this.primary_dfs_internet_host
}

output "primary_dfs_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for DFS storage in the primary location."
  value       = azurerm_storage_account.this.primary_dfs_microsoft_endpoint
}

output "primary_dfs_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for DFS storage in the primary location."
  value       = azurerm_storage_account.this.primary_dfs_microsoft_host
}

output "secondary_dfs_endpoint" {
  description = "The endpoint URL for DFS storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_dfs_endpoint
}

output "secondary_dfs_host" {
  description = "The hostname with port if applicable for DFS storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_dfs_host
}

output "secondary_dfs_internet_endpoint" {
  description = "The internet routing endpoint URL for DFS storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_dfs_internet_endpoint
}

output "secondary_dfs_internet_host" {
  description = "The internet routing hostname with port if applicable for DFS storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_dfs_internet_host
}

output "secondary_dfs_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for DFS storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_dfs_microsoft_endpoint
}

output "secondary_dfs_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for DFS storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_dfs_microsoft_host
}

output "primary_web_endpoint" {
  description = "The endpoint URL for web storage in the primary location."
  value       = azurerm_storage_account.this.primary_web_endpoint
}

output "primary_web_host" {
  description = "The hostname with port if applicable for web storage in the primary location."
  value       = azurerm_storage_account.this.primary_web_host
}

output "primary_web_internet_endpoint" {
  description = "The internet routing endpoint URL for web storage in the primary location."
  value       = azurerm_storage_account.this.primary_web_internet_endpoint
}

output "primary_web_internet_host" {
  description = "The internet routing hostname with port if applicable for web storage in the primary location."
  value       = azurerm_storage_account.this.primary_web_internet_host
}

output "primary_web_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for web storage in the primary location."
  value       = azurerm_storage_account.this.primary_web_microsoft_endpoint
}

output "primary_web_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for web storage in the primary location."
  value       = azurerm_storage_account.this.primary_web_microsoft_host
}

output "secondary_web_endpoint" {
  description = "The endpoint URL for web storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_web_endpoint
}

output "secondary_web_host" {
  description = "The hostname with port if applicable for web storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_web_host
}

output "secondary_web_internet_endpoint" {
  description = "The internet routing endpoint URL for web storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_web_internet_endpoint
}

output "secondary_web_internet_host" {
  description = "The internet routing hostname with port if applicable for web storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_web_internet_host
}

output "secondary_web_microsoft_endpoint" {
  description = "The microsoft routing endpoint URL for web storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_web_microsoft_endpoint
}

output "secondary_web_microsoft_host" {
  description = "The microsoft routing hostname with port if applicable for web storage in the secondary location."
  value       = azurerm_storage_account.this.secondary_web_microsoft_host
}

output "primary_access_key" {
  description = "The primary access key for the storage account."
  value       = azurerm_storage_account.this.primary_access_key
  sensitive   = true
}

output "secondary_access_key" {
  description = "The secondary access key for the storage account."
  value       = azurerm_storage_account.this.secondary_access_key
  sensitive   = true
}

output "primary_connection_string" {
  description = "The connection string associated with the primary location."
  value       = azurerm_storage_account.this.primary_connection_string
  sensitive   = true
}

output "secondary_connection_string" {
  description = "The connection string associated with the secondary location."
  value       = azurerm_storage_account.this.secondary_connection_string
  sensitive   = true
}

output "primary_blob_connection_string" {
  description = "The connection string associated with the primary blob location."
  value       = azurerm_storage_account.this.primary_blob_connection_string
  sensitive   = true
}

output "secondary_blob_connection_string" {
  description = "The connection string associated with the secondary blob location. ~> **NOTE:** If there's a write-lock on the Storage Account, or the account doesn't have permission then these fields will have an empty value [due to a bug in the Azure API](https://github.com/Azure/azure-rest-api-specs/issues/6363)"
  value       = azurerm_storage_account.this.secondary_blob_connection_string
  sensitive   = true
}

output "identity" {
  description = "An 'identity' block."
  value       = azurerm_storage_account.this.identity
}

output "principal_id" {
  description = "The Principal ID for the Service Principal associated with the Identity of this Storage Account."
  value       = azurerm_storage_account.this.principal_id
}

output "tenant_id" {
  description = "The Tenant ID for the Service Principal associated with the Identity of this Storage Account. -> You can access the Principal ID via '${azurerm_storage_account.example.identity.0.principal_id}' and the Tenant ID via '${azurerm_storage_account.example.identity.0.tenant_id}'"
  value       = azurerm_storage_account.this.tenant_id
}

