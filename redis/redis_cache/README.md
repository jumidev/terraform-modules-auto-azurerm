# azurerm_redis_cache



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "redis/redis_cache"   
}

inputs = {
   name = "The name of the Redis instance"   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   capacity = "The size of the Redis cache to deploy"   
   family = "The SKU family/pricing group to use"   
   sku_name = "The SKU of Redis to use"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Associated component


### `spring_cloud_app_redis_association` 

If set, makes a **azurerm_spring_cloud_app_redis_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `spring_cloud_app_id` | string | True | null |
| `redis_access_key` | string | True | null |
| `ssl_enabled` | bool | False | true |


Example component snippet

**See also** [spring_cloud/spring_cloud_app](https://github.com/jumidev/terraform-modules-auto-azurerm/tree/master/spring_cloud/spring_cloud_app)

```hcl
inputs = {
   spring_cloud_app_redis_association = {
      name = "..."      
      redis_access_key = "..."      
      ssl_enabled = true      
   }
   
}

component_inputs = {
   spring_cloud_app_redis_association.spring_cloud_app_id = "path/to/spring_cloud_app_component:id"   
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
| **sku_name** | string |  `Basic`, `Standard`, `Premium`  |  The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`. ~> **Note** Downgrading the SKU will force a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **enable_non_ssl_port** | bool |  -  |  -  |  Enable the non-SSL port (6379) - disabled by default. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **minimum_tls_version** | string |  `1.0`  |  `1.0`, `1.1`, `1.2`  |  The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.0`. | 
| **patch_schedule** | list |  -  |  -  |  A list of `patch_schedule` blocks. | 
| **private_static_ip_address** | string |  -  |  -  |  The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of `subnet_id`. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether or not public network access is allowed for this Redis Cache. `true` means this resource could be accessed by both public and private endpoint. `false` means only private endpoint access is allowed. Defaults to `true`. | 
| **redis_configuration** | [block](#redis_configuration-block-structure) |  -  |  -  |  A `redis_configuration` block - with some limitations by SKU - defaults/details are shown below. | 
| **replicas_per_master** | number |  -  |  -  |  Amount of replicas to create per master for this Redis Cache. ~> **Note:** Configuring the number of replicas per master is only available when using the Premium SKU and cannot be used in conjunction with shards. | 
| **replicas_per_primary** | number |  -  |  -  |  Amount of replicas to create per primary for this Redis Cache. If both `replicas_per_primary` and `replicas_per_master` are set, they need to be equal. | 
| **redis_version** | string |  -  |  `4`, `6`  |  Redis version. Only major version needed. Valid values: `4`, `6`. | 
| **tenant_settings** | string |  -  |  -  |  A mapping of tenant settings to assign to the resource. | 
| **shard_count** | number |  -  |  -  |  *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster. | 
| **subnet_id** | string |  -  |  -  |  *Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **zones** | list |  -  |  -  |  Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created. -> **Please Note**: Availability Zones are [in Preview and only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview) - as such you must be opted into the Preview to use this functionality. You can [opt into the Availability Zones Preview in the Azure Portal](https://aka.ms/azenroll). | 

### `redis_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aof_backup_enabled` | bool | No | False | Enable or disable AOF persistence for this Redis Cache. Defaults to 'false'. ~> **NOTE:** 'aof_backup_enabled' can only be set when SKU is 'Premium'. |
| `aof_storage_connection_string_0` | string | No | - | First Storage Account connection string for AOF persistence. |
| `aof_storage_connection_string_1` | string | No | - | Second Storage Account connection string for AOF persistence. Example usage: '''hcl redis_configuration { aof_backup_enabled              = true aof_storage_connection_string_0 = 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.nc-cruks-storage-account.primary_blob_endpoint};AccountName=${azurerm_storage_account.mystorageaccount.name};AccountKey=${azurerm_storage_account.mystorageaccount.primary_access_key}' aof_storage_connection_string_1 = 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.mystorageaccount.primary_blob_endpoint};AccountName=${azurerm_storage_account.mystorageaccount.name};AccountKey=${azurerm_storage_account.mystorageaccount.secondary_access_key}' } ''' |
| `enable_authentication` | bool | No | True | If set to 'false', the Redis instance will be accessible without authentication. Defaults to 'true'. -> **NOTE:** 'enable_authentication' can only be set to 'false' if a 'subnet_id' is specified; and only works if there aren't existing instances within the subnet with 'enable_authentication' set to 'true'. |
| `active_directory_authentication_enabled` | bool | No | False | Enable Microsoft Entra (AAD) authentication. Defaults to 'false'. |
| `maxmemory_reserved` | string | No | - | Value in megabytes reserved for non-cache usage e.g. failover. Defaults are shown below. |
| `maxmemory_delta` | string | No | - | The max-memory delta for this Redis instance. Defaults are shown below. |
| `maxmemory_policy` | string | No | volatile-lru | How Redis will select what to remove when 'maxmemory' is reached. Defaults to 'volatile-lru'. |
| `maxfragmentationmemory_reserved` | string | No | - | Value in megabytes reserved to accommodate for memory fragmentation. Defaults are shown below. |
| `rdb_backup_enabled` | bool | No | False | Is Backup Enabled? Only supported on Premium SKUs. Defaults to 'false'. -> **NOTE:** If 'rdb_backup_enabled' set to 'true', 'rdb_storage_connection_string' must also be set. |
| `rdb_backup_frequency` | string | No | - | The Backup Frequency in Minutes. Only supported on Premium SKUs. Possible values are: '15', '30', '60', '360', '720' and '1440'. |
| `rdb_backup_max_snapshot_count` | number | No | - | The maximum number of snapshots to create as a backup. Only supported for Premium SKUs. |
| `rdb_storage_connection_string` | string | No | - | The Connection String to the Storage Account. Only supported for Premium SKUs. In the format: 'DefaultEndpointsProtocol=https;BlobEndpoint=${azurerm_storage_account.example.primary_blob_endpoint};AccountName=${azurerm_storage_account.example.name};AccountKey=${azurerm_storage_account.example.primary_access_key}'. ~> **NOTE:** There's a bug in the Redis API where the original storage connection string isn't being returned, which [is being tracked in this issue](https://github.com/Azure/azure-rest-api-specs/issues/3037). In the interim you can use [the 'ignore_changes' attribute to ignore changes to this field](https://www.terraform.io/language/meta-arguments/lifecycle#ignore_changess) e.g.: |
| `storage_account_subscription_id` | string | No | - | The ID of the Subscription containing the Storage Account. '''hcl resource 'azurerm_redis_cache' 'example' { # ... ignore_changes = [redis_configuration.0.rdb_storage_connection_string] } ''' |
| `notify_keyspace_events` | string | No | - | Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration) '''hcl redis_configuration { maxmemory_reserved = 10 maxmemory_delta    = 2 maxmemory_policy   = 'allkeys-lru' } ''' ### Default Redis Configuration Values | Redis Value                     | Basic        | Standard     | Premium      | | ------------------------------- | ------------ | ------------ | ------------ | | enable_authentication           | true         | true         | true         | | maxmemory_reserved              | 2            | 50           | 200          | | maxfragmentationmemory_reserved | 2            | 50           | 200          | | maxmemory_delta                 | 2            | 50           | 200          | | maxmemory_policy                | volatile-lru | volatile-lru | volatile-lru | ~> **NOTE:** The 'maxmemory_reserved', 'maxmemory_delta' and 'maxfragmentationmemory_reserved' settings are only available for Standard and Premium caches. More details are available in the Relevant Links section below. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Redis Cluster. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | list | No | - | A list of User Assigned Managed Identity IDs to be assigned to this Redis Cluster. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **notify_keyspace_events** | string | No  | Keyspace notifications allows clients to subscribe to Pub/Sub channels in order to receive events affecting the Redis data set in some way. [Reference](https://redis.io/topics/notifications#configuration) ```hcl redis_configuration { maxmemory_reserved = 10 maxmemory_delta    = 2 maxmemory_policy   = "allkeys-lru" } ``` ### Default Redis Configuration Values | Redis Value                     | Basic        | Standard     | Premium      | | ------------------------------- | ------------ | ------------ | ------------ | | enable_authentication           | true         | true         | true         | | maxmemory_reserved              | 2            | 50           | 200          | | maxfragmentationmemory_reserved | 2            | 50           | 200          | | maxmemory_delta                 | 2            | 50           | 200          | | maxmemory_policy                | volatile-lru | volatile-lru | volatile-lru | ~> **NOTE:** The `maxmemory_reserved`, `maxmemory_delta` and `maxfragmentationmemory_reserved` settings are only available for Standard and Premium caches. More details are available in the Relevant Links section below. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The Route ID. | 
| **hostname** | string | No  | The Hostname of the Redis Instance | 
| **ssl_port** | string | No  | The SSL Port of the Redis Instance | 
| **port** | string | No  | The non-SSL Port of the Redis Instance | 
| **primary_access_key** | string | Yes  | The Primary Access Key for the Redis Instance | 
| **secondary_access_key** | string | Yes  | The Secondary Access Key for the Redis Instance | 
| **primary_connection_string** | string | No  | The primary connection string of the Redis Instance. | 
| **secondary_connection_string** | string | No  | The secondary connection string of the Redis Instance. | 
| **redis_configuration** | block | No  | A `redis_configuration` block: | 
| **maxclients** | number | No  | Returns the max number of connected clients at the same time. ## Relevant Links * [Azure Cache for Redis planning](https://docs.microsoft.com/azure/azure-cache-for-redis/cache-planning-faq) * [Redis: Available Configuration Settings](https://redis.io/topics/config) | 

Additionally, all variables are provided as outputs.
