# azurerm_cosmosdb_sql_container

Manages a SQL Container within a Cosmos DB Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Cosmos DB SQL Container. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB SQL Container is created. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The name of the Cosmos DB Account to create the container within. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | The name of the Cosmos DB SQL Database to create the container within. Changing this forces a new resource to be created. | 
| **partition_key_path** | string | True | -  |  -  | Define a partition key. Changing this forces a new resource to be created. | 
| **partition_key_version** | string | False | -  |  `1`, `2`  | Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys. | 
| **unique_key** | block | False | -  |  -  | One or more `unique_key` blocks. Changing this forces a new resource to be created. | 
| **throughput** | string | False | -  |  -  | The throughput of SQL container (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon container creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **autoscale_settings** | block | False | -  |  -  | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set. | 
| **indexing_policy** | block | False | -  |  -  | An `indexing_policy` block. | 
| **default_ttl** | string | False | -  |  -  | The default time to live of SQL container. If missing, items are not expired automatically. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **analytical_storage_ttl** | string | False | -  |  -  | The default time to live of Analytical Storage for this SQL container. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **conflict_resolution_policy** | block | False | -  |  -  | A `conflict_resolution_policy` blocks. Changing this forces a new resource to be created. | 

