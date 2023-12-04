# azurerm_redis_cache

Manages a Redis Cache.-> **Note:** Redis version 4 is being retired and no longer supports creating new instances. Version 4 will be removed in a future release. [Redis Version 4 Retirement](https://learn.microsoft.com/azure/azure-cache-for-redis/cache-retired-features#important-upgrade-timelines)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "redis/redis_cache" 
}

inputs = {
   name = "name of redis_cache" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   capacity = "capacity of redis_cache" 
   family = "family of redis_cache" 
   sku_name = "sku_name of redis_cache" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the Redis instance. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  The location of the resource group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created. | 
| **capacity** | string |  `family`, `0, 1, 2, 3, 4, 5, 6`, `1, 2, 3, 4, 5`  |  The size of the Redis cache to deploy. Valid values for a SKU `family` of C (Basic/Standard) are `0, 1, 2, 3, 4, 5, 6`, and for P (Premium) `family` are `1, 2, 3, 4, 5`. | 
| **family** | string |  `C`, `P`, `Premium`  |  The SKU family/pricing group to use. Valid values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`) | 
| **sku_name** | string |  `Basic`, `Standard`, `Premium`  |  The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **enable_non_ssl_port** | bool |  -  |  -  |  Enable the non-SSL port (6379) - disabled by default. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **minimum_tls_version** | string |  `1.0`  |  `1.0`, `1.1`, `1.2`  |  The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.0`. | 
| **patch_schedule** | [block](#patch_schedule-block-structure) |  -  |  -  |  A list of `patch_schedule` blocks. | 
| **private_static_ip_address** | string |  -  |  -  |  The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of `subnet_id`. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether or not public network access is allowed for this Redis Cache. `true` means this resource could be accessed by both public and private endpoint. `false` means only private endpoint access is allowed. Defaults to `true`. | 
| **redis_configuration** | [block](#redis_configuration-block-structure) |  -  |  -  |  A `redis_configuration` block - with some limitations by SKU - defaults/details are shown below. | 
| **replicas_per_master** | int |  -  |  -  |  Amount of replicas to create per master for this Redis Cache. | 
| **replicas_per_primary** | int |  -  |  -  |  Amount of replicas to create per primary for this Redis Cache. If both `replicas_per_primary` and `replicas_per_master` are set, they need to be equal. | 
| **redis_version** | string |  -  |  `4`, `6`  |  Redis version. Only major version needed. Valid values: `4`, `6`. | 
| **tenant_settings** | string |  -  |  -  |  A mapping of tenant settings to assign to the resource. | 
| **shard_count** | int |  -  |  -  |  *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster. | 
| **subnet_id** | string |  -  |  -  |  *Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **zones** | string |  -  |  -  |  Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created. | 

### `patch_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `day_of_week` | string | Yes | - | the Weekday name - possible values include 'Monday', 'Tuesday', 'Wednesday' etc. |
| `start_hour_utc` | string | No | - | the Start Hour for maintenance in UTC - possible values range from '0 - 23'. |
| `maintenance_window` | string | No | PT5H | The ISO 8601 timespan which specifies the amount of time the Redis Cache can be updated. Defaults to 'PT5H'. |

### `redis_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aof_backup_enabled` | bool | No | False | Enable or disable AOF persistence for this Redis Cache. Defaults to 'false'. |
| `aof_storage_connection_string_0` | string | No | - | First Storage Account connection string for AOF persistence. |
| `aof_storage_connection_string_1` | string | No | - | Second Storage Account connection string for AOF persistence. |
| `enable_authentication` | bool | No | True | If set to 'false', the Redis instance will be accessible without authentication. Defaults to 'true'. |
| `active_directory_authentication_enabled` | bool | No | False | Enable Microsoft Entra (AAD) authentication. Defaults to 'false'. |
| `maxmemory_reserved` | string | No | - | Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below. |
| `maxmemory_delta` | string | No | - | The max-memory delta for this Redis instance. Defaults are shown below. |
| `maxmemory_policy` | string | No | volatile-lru | How Redis will select what to remove when 'maxmemory' is reached. Defaults to 'volatile-lru'. |
| `maxfragmentationmemory_reserved` | string | No | - | Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below. |
| `rdb_backup_enabled` | bool | No | False | Is Backup Enabled? Only supported on Premium SKUs. Defaults to 'false'. |
| `rdb_backup_frequency` | string | No | - | The Backup Frequency in Minutes. Only supported on Premium SKUs. Possible values are: '15', '30', '60', '360', '720' and '1440'. |
| `rdb_backup_max_snapshot_count` | int | No | - | The maximum number of snapshots to create as a backup. Only supported for Premium SKUs. |
| `rdb_storage_connection_string` | string | No | - | The Connection String to the Storage Account. Only supported for Premium SKUs. In the format: 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.example.primary_blob_endpoint};AccountName=${azurerm_storage_account.example.name};AccountKey=${azurerm_storage_account.example.primary_access_key}'. |
| `notify_keyspace_events` | string | No | - | Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration) |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Redis Cluster. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Redis Cluster. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Route ID. | 
| **hostname** | string | No  | The Hostname of the Redis Instance | 
| **ssl_port** | string | No  | The SSL Port of the Redis Instance | 
| **port** | string | No  | The non-SSL Port of the Redis Instance | 
| **primary_access_key** | string | Yes  | The Primary Access Key for the Redis Instance | 
| **secondary_access_key** | string | Yes  | The Secondary Access Key for the Redis Instance | 
| **primary_connection_string** | string | No  | The primary connection string of the Redis Instance. | 
| **secondary_connection_string** | string | No  | The secondary connection string of the Redis Instance. | 
| **redis_configuration** | block | No  | A `redis_configuration` block: | 
| **maxclients** | int | No  | Returns the max number of connected clients at the same time. | 

Additionally, all variables are provided as outputs.
