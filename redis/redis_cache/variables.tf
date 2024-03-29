# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Redis instance. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) The location of the resource group. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created."
  type        = string

}
variable "capacity" {
  description = "(REQUIRED) The size of the Redis cache to deploy. Valid values for a SKU 'family' of C (Basic/Standard) are '0, 1, 2, 3, 4, 5, 6', and for P (Premium) 'family' are '1, 2, 3, 4, 5'."
  type        = string

}
variable "family" {
  description = "(REQUIRED) The SKU family/pricing group to use. Valid values are 'C' (for Basic/Standard SKU family) and 'P' (for 'Premium')"
  type        = string

}
variable "sku_name" {
  description = "(REQUIRED) The SKU of Redis to use. Possible values are 'Basic', 'Standard' and 'Premium'. ~> **Note** Downgrading the SKU will force a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enable_non_ssl_port" {
  description = "Enable the non-SSL port (6379) - disabled by default."
  type        = bool
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Redis Cluster. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both).
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Redis Cluster. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'.


variable "minimum_tls_version" {
  description = "The minimum TLS version. Possible values are '1.0', '1.1' and '1.2'. Defaults to '1.0'."
  type        = string
  default     = "1.0"
}
variable "patch_schedule" {
  description = "A list of 'patch_schedule' blocks."
  type        = list(any)
  default     = []
}
variable "private_static_ip_address" {
  description = "The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of 'subnet_id'. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "public_network_access_enabled" {
  description = "Whether or not public network access is allowed for this Redis Cache. 'true' means this resource could be accessed by both public and private endpoint. 'false' means only private endpoint access is allowed. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "redis_configuration" {
  description = "A 'redis_configuration' block - with some limitations by SKU - defaults/details are shown below."
  type        = map(any)
  default     = null
}
#
# redis_configuration block structure           :
#   aof_backup_enabled (bool)                     : Enable or disable AOF persistence for this Redis Cache. Defaults to 'false'. ~> **NOTE:** 'aof_backup_enabled' can only be set when SKU is 'Premium'.
#   aof_storage_connection_string_0 (string)      : First Storage Account connection string for AOF persistence.
#   aof_storage_connection_string_1 (string)      : Second Storage Account connection string for AOF persistence. Example usage: '''hcl redis_configuration { aof_backup_enabled              = true aof_storage_connection_string_0 = 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.nc-cruks-storage-account.primary_blob_endpoint};AccountName=${azurerm_storage_account.mystorageaccount.name};AccountKey=${azurerm_storage_account.mystorageaccount.primary_access_key}' aof_storage_connection_string_1 = 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.mystorageaccount.primary_blob_endpoint};AccountName=${azurerm_storage_account.mystorageaccount.name};AccountKey=${azurerm_storage_account.mystorageaccount.secondary_access_key}' } '''
#   enable_authentication (bool)                  : If set to 'false', the Redis instance will be accessible without authentication. Defaults to 'true'. -> **NOTE:** 'enable_authentication' can only be set to 'false' if a 'subnet_id' is specified; and only works if there aren't existing instances within the subnet with 'enable_authentication' set to 'true'.
#   active_directory_authentication_enabled (bool): Enable Microsoft Entra (AAD) authentication. Defaults to 'false'.
#   maxmemory_reserved (string)                   : Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below.
#   maxmemory_delta (string)                      : The max-memory delta for this Redis instance. Defaults are shown below.
#   maxmemory_policy (string)                     : How Redis will select what to remove when 'maxmemory' is reached. Defaults to 'volatile-lru'.
#   maxfragmentationmemory_reserved (string)      : Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below.
#   rdb_backup_enabled (bool)                     : Is Backup Enabled? Only supported on Premium SKUs. Defaults to 'false'. -> **NOTE:** If 'rdb_backup_enabled' set to 'true', 'rdb_storage_connection_string' must also be set.
#   rdb_backup_frequency (string)                 : The Backup Frequency in Minutes. Only supported on Premium SKUs. Possible values are: '15', '30', '60', '360', '720' and '1440'.
#   rdb_backup_max_snapshot_count (number)        : The maximum number of snapshots to create as a backup. Only supported for Premium SKUs.
#   rdb_storage_connection_string (string)        : The Connection String to the Storage Account. Only supported for Premium SKUs. In the format: 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.example.primary_blob_endpoint};AccountName=${azurerm_storage_account.example.name};AccountKey=${azurerm_storage_account.example.primary_access_key}'. ~> **NOTE:** There's a bug in the Redis API where the original storage connection string isn't being returned, which [is being tracked in this issue](https://github.com/Azure/azure-rest-api-specs/issues/3037). In the interim you can use [the 'ignore_changes' attribute to ignore changes to this field](https://www.terraform.io/language/meta-arguments/lifecycle#ignore_changess) e.g.:
#   storage_account_subscription_id (string)      : The ID of the Subscription containing the Storage Account. '''hcl resource 'azurerm_redis_cache' 'example' { # ... ignore_changes = [redis_configuration.0.rdb_storage_connection_string] } '''
#   notify_keyspace_events (string)               : Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration) '''hcl redis_configuration { maxmemory_reserved = 10 maxmemory_delta    = 2 maxmemory_policy   = 'allkeys-lru' } ''' ### Default Redis Configuration Values | Redis Value                     | Basic        | Standard     | Premium      | | ------------------------------- | ------------ | ------------ | ------------ | | enable_authentication           | true         | true         | true         | | maxmemory_reserved              | 2            | 50           | 200          | | maxfragmentationmemory_reserved | 2            | 50           | 200          | | maxmemory_delta                 | 2            | 50           | 200          | | maxmemory_policy                | volatile-lru | volatile-lru | volatile-lru | ~> **NOTE:** The 'maxmemory_reserved', 'maxmemory_delta' and 'maxfragmentationmemory_reserved' settings are only available for Standard and Premium caches. More details are available in the Relevant Links section below.


variable "replicas_per_master" {
  description = "Amount of replicas to create per master for this Redis Cache. ~> **Note:** Configuring the number of replicas per master is only available when using the Premium SKU and cannot be used in conjunction with shards."
  type        = number
  default     = null
}
variable "replicas_per_primary" {
  description = "Amount of replicas to create per primary for this Redis Cache. If both 'replicas_per_primary' and 'replicas_per_master' are set, they need to be equal."
  type        = number
  default     = null
}
variable "redis_version" {
  description = "Redis version. Only major version needed. Valid values: '4', '6'."
  type        = string
  default     = null
}
variable "tenant_settings" {
  description = "A mapping of tenant settings to assign to the resource."
  type        = string
  default     = null
}
variable "shard_count" {
  description = "*Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster."
  type        = number
  default     = null
}
variable "subnet_id" {
  description = "*Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created."
  type        = string
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
variable "zones" {
  description = "Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created. -> **Please Note**: Availability Zones are [in Preview and only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview) - as such you must be opted into the Preview to use this functionality. You can [opt into the Availability Zones Preview in the Azure Portal](https://aka.ms/azenroll)."
  type        = list(any)
  default     = []
}

# OPTIONAL VARIABLES

variable "spring_cloud_app_redis_association" {
  type    = map(any)
  default = null
}
