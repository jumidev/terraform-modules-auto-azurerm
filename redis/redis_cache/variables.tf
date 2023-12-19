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
  description = "(REQUIRED) The SKU of Redis to use. Possible values are 'Basic', 'Standard' and 'Premium'."
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
#   identity_ids (list)     : A list of User Assigned Managed Identity IDs to be assigned to this Redis Cluster.


variable "minimum_tls_version" {
  description = "The minimum TLS version. Possible values are '1.0', '1.1' and '1.2'. Defaults to '1.0'."
  type        = string
  default     = "1.0"
}
variable "patch_schedule" {
  description = "A list of 'patch_schedule' blocks."
  type        = map(map(any))
  default     = null
}
#
# patch_schedule block structure:
#   day_of_week (string)          : (REQUIRED) the Weekday name - possible values include 'Monday', 'Tuesday', 'Wednesday' etc.
#   start_hour_utc (string)       : the Start Hour for maintenance in UTC - possible values range from '0 - 23'.
#   maintenance_window (string)   : The ISO 8601 timespan which specifies the amount of time the Redis Cache can be updated. Defaults to 'PT5H'.


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
#   aof_backup_enabled (bool)                     : Enable or disable AOF persistence for this Redis Cache. Defaults to 'false'.
#   aof_storage_connection_string_0 (string)      : First Storage Account connection string for AOF persistence.
#   aof_storage_connection_string_1 (string)      : Second Storage Account connection string for AOF persistence.
#   enable_authentication (bool)                  : If set to 'false', the Redis instance will be accessible without authentication. Defaults to 'true'.
#   active_directory_authentication_enabled (bool): Enable Microsoft Entra (AAD) authentication. Defaults to 'false'.
#   maxmemory_reserved (string)                   : Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below.
#   maxmemory_delta (string)                      : The max-memory delta for this Redis instance. Defaults are shown below.
#   maxmemory_policy (string)                     : How Redis will select what to remove when 'maxmemory' is reached. Defaults to 'volatile-lru'.
#   maxfragmentationmemory_reserved (string)      : Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below.
#   rdb_backup_enabled (bool)                     : Is Backup Enabled? Only supported on Premium SKUs. Defaults to 'false'.
#   rdb_backup_frequency (string)                 : The Backup Frequency in Minutes. Only supported on Premium SKUs. Possible values are: '15', '30', '60', '360', '720' and '1440'.
#   rdb_backup_max_snapshot_count (number)        : The maximum number of snapshots to create as a backup. Only supported for Premium SKUs.
#   rdb_storage_connection_string (string)        : The Connection String to the Storage Account. Only supported for Premium SKUs. In the format: 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.example.primary_blob_endpoint};AccountName=${azurerm_storage_account.example.name};AccountKey=${azurerm_storage_account.example.primary_access_key}'.
#   storage_account_subscription_id (string)      : The ID of the Subscription containing the Storage Account.
#   notify_keyspace_events (string)               : Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration)


variable "replicas_per_master" {
  description = "Amount of replicas to create per master for this Redis Cache."
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
  description = "Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created."
  type        = string
  default     = null
}

# OPTIONAL VARIABLES

variable "spring_cloud_app_redis_association" {
  type    = map(any)
  default = null
}
