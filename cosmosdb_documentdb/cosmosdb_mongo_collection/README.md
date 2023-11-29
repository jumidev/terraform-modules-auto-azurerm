# azurerm_cosmosdb_mongo_collection

Manages a Mongo Collection within a Cosmos DB Account.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  | The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  -  | The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **var.shard_key** | string | False | -  |  -  | The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created. | 
| **var.analytical_storage_ttl** | string | False | -  |  -  | The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **var.default_ttl_seconds** | int | False | -  |  -  | The default Time To Live in seconds. If the value is `-1`, items are not automatically expired. | 
| **var.index** | block | False | -  |  -  | One or more `index` blocks. | 
| **var.throughput** | string | False | -  |  -  | The throughput of the MongoDB collection (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | -  |  -  | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **database_name** | string  | - | 
| **shard_key** | string  | - | 
| **analytical_storage_ttl** | string  | - | 
| **default_ttl_seconds** | int  | - | 
| **index** | block  | - | 
| **throughput** | string  | - | 
| **autoscale_settings** | block  | - | 
| **id** | string  | The ID of the Cosmos DB Mongo Collection. | 
| **system_indexes** | block  | One or more `system_indexes` blocks. | 
| **keys** | string  | The list of system keys which are not settable for each Cosmos DB Mongo Collection. | 
| **unique** | bool  | Identifies whether the table contains no duplicate values. | 