# azurerm_cosmosdb_gremlin_graph

Manages a Gremlin Graph within a Cosmos DB Account.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Cosmos DB Gremlin Graph. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | -  |  -  | The name of the CosmosDB Account to create the Gremlin Graph within. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | -  |  -  | The name of the Cosmos DB Graph Database in which the Cosmos DB Gremlin Graph is created. Changing this forces a new resource to be created. | 
| **var.partition_key_path** | string | True | -  |  -  | Define a partition key. Changing this forces a new resource to be created. | 
| **var.partition_key_version** | string | False | -  |  `1`, `2`  | Define a partition key version. Changing this forces a new resource to be created. Possible values are `1`and `2`. This should be set to `2` in order to use large partition keys. | 
| **var.throughput** | string | False | -  |  -  | The throughput of the Gremlin graph (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.analytical_storage_ttl** | string | False | -  |  `-1`, `2147483647`, `0`  | The time to live of Analytical Storage for this Cosmos DB Gremlin Graph. Possible values are between `-1` to `2147483647` not including `0`. If present and the value is set to `-1`, it means never expire. | 
| **var.default_ttl** | string | False | -  |  -  | The default time to live (TTL) of the Gremlin graph. If the value is missing or set to "-1", items don’t expire. | 
| **var.autoscale_settings** | block | False | -  |  -  | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. Requires `partition_key_path` to be set. | 
| **var.index_policy** | block | False | -  |  -  | The configuration of the indexing policy. One or more `index_policy` blocks. | 
| **var.conflict_resolution_policy** | block | False | -  |  -  | A `conflict_resolution_policy` blocks. Changing this forces a new resource to be created. | 
| **var.unique_key** | block | False | -  |  -  | One or more `unique_key` blocks. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **account_name** | string  | - | 
| **database_name** | string  | - | 
| **partition_key_path** | string  | - | 
| **partition_key_version** | string  | - | 
| **throughput** | string  | - | 
| **analytical_storage_ttl** | string  | - | 
| **default_ttl** | string  | - | 
| **autoscale_settings** | block  | - | 
| **index_policy** | block  | - | 
| **conflict_resolution_policy** | block  | - | 
| **unique_key** | block  | - | 
| **id** | string  | The ID of the CosmosDB Gremlin Graph. | 