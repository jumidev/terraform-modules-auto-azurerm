# azurerm_cosmosdb_sql_container

Manages a SQL Container within a Cosmos DB Account.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  | The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  -  | The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created. | 
| **var.partition_key_path** | string | True | -  |  -  | Define a partition key. Changing this forces a new resource to be created. | 
| **var.partition_key_version** | string | False | -  |  `1`, `2`  | Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys. | 
| **var.unique_key** | block | False | -  |  -  | One or more `unique_key` blocks. Changing this forces a new resource to be created. | 
| **var.throughput** | string | False | -  |  -  | The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | -  |  -  | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set. | 
| **var.indexing_policy** | block | False | -  |  -  | An `indexing_policy` block. | 
| **var.default_ttl** | string | False | -  |  -  | The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **var.analytical_storage_ttl** | string | False | -  |  -  | The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **var.conflict_resolution_policy** | block | False | -  |  -  | A `conflict_resolution_policy` blocks. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **database_name** | string  | - | 
| **partition_key_path** | string  | - | 
| **partition_key_version** | string  | - | 
| **unique_key** | block  | - | 
| **throughput** | string  | - | 
| **autoscale_settings** | block  | - | 
| **indexing_policy** | block  | - | 
| **default_ttl** | string  | - | 
| **analytical_storage_ttl** | string  | - | 
| **conflict_resolution_policy** | block  | - | 
| **id** | string  | The ID of the CosmosDB SQL Container. | 
| **types** | string  | A set of spatial types of the path. | 