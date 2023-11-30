# azurerm_redis_enterprise_database

Manages a Redis Enterprise Database.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "redis_enterprise/redis_enterprise_database" 
}

inputs = {
   cluster_id = "cluster_id of redis_enterprise_database" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | False | `default`  |  -  |  The name which should be used for this Redis Enterprise Database. Currently the acceptable value for this argument is `default`. Defaults to `default`. Changing this forces a new Redis Enterprise Database to be created. | 
| **var.resource_group_name** | string | False | -  |  -  |  The name of the Resource Group where the Redis Enterprise Database should exist. Changing this forces a new Redis Enterprise Database to be created. | 
| **var.cluster_id** | string | True | -  |  -  |  The resource id of the Redis Enterprise Cluster to deploy this Redis Enterprise Database. Changing this forces a new Redis Enterprise Database to be created. | 
| **var.client_protocol** | string | False | `Encrypted`  |  `Encrypted`, `Plaintext`  |  Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`. Changing this forces a new Redis Enterprise Database to be created. | 
| **var.clustering_policy** | string | False | `OSSCluster`  |  `EnterpriseCluster`, `OSSCluster`  |  Clustering policy Specified at create time. Possible values are `EnterpriseCluster` and `OSSCluster`. Defaults to `OSSCluster`. Changing this forces a new Redis Enterprise Database to be created. | 
| **var.eviction_policy** | string | False | `VolatileLRU`  |  `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom`, `NoEviction`  |  Redis eviction policy possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Changing this forces a new Redis Enterprise Database to be created. Defaults to `VolatileLRU`. | 
| **var.module** | block | False | -  |  -  |  A `module` block. Changing this forces a new resource to be created. | | `module` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this module. Possible values are 'RedisBloom', 'RedisTimeSeries', 'RediSearch' and 'RedisJSON'. Changing this forces a new Redis Enterprise Database to be created. ||
|   args (string): Configuration options for the module (e.g. 'ERROR_RATE 0.00 INITIAL_SIZE 400'). Changing this forces a new resource to be created. Defaults to ''''. ||

| **var.linked_database_id** | list | False | -  |  -  |  A list of database resources to link with this database with a maximum of 5. | 
| **var.linked_database_group_nickname** | string | False | -  |  -  |  Nickname of the group of linked databases. Changing this force a new Redis Enterprise Geo Database to be created. | 
| **var.port** | string | False | -  |  -  |  TCP port of the database endpoint. Specified at create time. Defaults to an available port. Changing this forces a new Redis Enterprise Database to be created. Defaults to `10000`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Redis Enterprise Database. | 
| **primary_access_key** | string | No  | The Primary Access Key for the Redis Enterprise Database Instance. | 
| **secondary_access_key** | string | No  | The Secondary Access Key for the Redis Enterprise Database Instance. | 

Additionally, all variables are provided as outputs.
