# azurerm_cosmosdb_mongo_collection

Manages a Mongo Collection within a Cosmos DB Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **database_name** | string | True | -  |  -  | The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **shard_key** | string | False | -  |  -  | The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created. | 
| **analytical_storage_ttl** | string | False | -  |  -  | The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **default_ttl_seconds** | int | False | -  |  -  | The default Time To Live in seconds. If the value is `-1`, items are not automatically expired. | 
| **index** | block | False | -  |  -  | One or more `index` blocks. | 
| **throughput** | string | False | -  |  -  | The throughput of the MongoDB collection (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **autoscale_settings** | block | False | -  |  -  | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

