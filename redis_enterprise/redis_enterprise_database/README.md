# azurerm_redis_enterprise_database

Manages a Redis Enterprise Database.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | False | `default`  |  -  | The name which should be used for this Redis Enterprise Database. Currently the acceptable value for this argument is `default`. Defaults to `default`. Changing this forces a new Redis Enterprise Database to be created. | 
| **resource_group_name** | string | False | -  |  -  | The name of the Resource Group where the Redis Enterprise Database should exist. Changing this forces a new Redis Enterprise Database to be created. | 
| **cluster_id** | string | True | -  |  -  | The resource id of the Redis Enterprise Cluster to deploy this Redis Enterprise Database. Changing this forces a new Redis Enterprise Database to be created. | 
| **client_protocol** | string | False | `Encrypted`  |  `Encrypted`, `Plaintext`  | Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Possible values are `Encrypted` and `Plaintext`. Defaults to `Encrypted`. Changing this forces a new Redis Enterprise Database to be created. | 
| **clustering_policy** | string | False | `OSSCluster`  |  `EnterpriseCluster`, `OSSCluster`  | Clustering policy Specified at create time. Possible values are `EnterpriseCluster` and `OSSCluster`. Defaults to `OSSCluster`. Changing this forces a new Redis Enterprise Database to be created. | 
| **eviction_policy** | string | False | `VolatileLRU`  |  `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom`, `NoEviction`  | Redis eviction policy possible values are `AllKeysLFU`, `AllKeysLRU`, `AllKeysRandom`, `VolatileLRU`, `VolatileLFU`, `VolatileTTL`, `VolatileRandom` and `NoEviction`. Changing this forces a new Redis Enterprise Database to be created. Defaults to `VolatileLRU`. | 
| **module** | block | False | -  |  -  | A `module` block. Changing this forces a new resource to be created. | 
| **linked_database_id** | list | False | -  |  -  | A list of database resources to link with this database with a maximum of 5. | 
| **linked_database_group_nickname** | string | False | -  |  -  | Nickname of the group of linked databases. Changing this force a new Redis Enterprise Geo Database to be created. | 
| **port** | string | False | -  |  -  | TCP port of the database endpoint. Specified at create time. Defaults to an available port. Changing this forces a new Redis Enterprise Database to be created. Defaults to `10000`. | 

