# azurerm_redis_cache

Manages a Redis Cache.-> **Note:** Redis version 4 is being retired and no longer supports creating new instances. Version 4 will be removed in a future release. [Redis Version 4 Retirement](https://learn.microsoft.com/azure/azure-cache-for-redis/cache-retired-features#important-upgrade-timelines)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Redis instance. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The location of the resource group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created. | 
| **capacity** | string | True | -  |  `family`, `0, 1, 2, 3, 4, 5, 6`, `1, 2, 3, 4, 5`  | The size of the Redis cache to deploy. Valid values for a SKU `family` of C (Basic/Standard) are `0, 1, 2, 3, 4, 5, 6`, and for P (Premium) `family` are `1, 2, 3, 4, 5`. | 
| **family** | string | True | -  |  `C`, `P`, `Premium`  | The SKU family/pricing group to use. Valid values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`) | 
| **sku_name** | string | True | -  |  `Basic`, `Standard`, `Premium`  | The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`. | 
| **enable_non_ssl_port** | bool | False | -  |  -  | Enable the non-SSL port (6379) - disabled by default. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **minimum_tls_version** | string | False | `1.0`  |  `1.0`, `1.1`, `1.2`  | The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.0`. | 
| **patch_schedule** | block | False | -  |  -  | A list of `patch_schedule` blocks. | 
| **private_static_ip_address** | string | False | -  |  -  | The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of `subnet_id`. Changing this forces a new resource to be created. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether or not public network access is allowed for this Redis Cache. `true` means this resource could be accessed by both public and private endpoint. `false` means only private endpoint access is allowed. Defaults to `true`. | 
| **redis_configuration** | block | False | -  |  -  | A `redis_configuration` block - with some limitations by SKU - defaults/details are shown below. | 
| **replicas_per_master** | int | False | -  |  -  | Amount of replicas to create per master for this Redis Cache. | 
| **replicas_per_primary** | int | False | -  |  -  | Amount of replicas to create per primary for this Redis Cache. If both `replicas_per_primary` and `replicas_per_master` are set, they need to be equal. | 
| **redis_version** | string | False | -  |  `4`, `6`  | Redis version. Only major version needed. Valid values: `4`, `6`. | 
| **tenant_settings** | string | False | -  |  -  | A mapping of tenant settings to assign to the resource. | 
| **shard_count** | int | False | -  |  -  | *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster. | 
| **subnet_id** | string | False | -  |  -  | *Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created. | 

