# azurerm_cosmosdb_mongo_collection

Manages a Mongo Collection within a Cosmos DB Account.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "cosmosdb_documentdb/cosmosdb_mongo_collection" 
}

inputs = {
   name = "name of cosmosdb_mongo_collection" 
   resource_group_name = "${resource_group}" 
   account_name = "account_name of cosmosdb_mongo_collection" 
   database_name = "database_name of cosmosdb_mongo_collection" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **var.database_name** | string | True | The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **var.shard_key** | string | False | The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created. | 
| **var.analytical_storage_ttl** | string | False | The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to `-1`, it is equal to infinity, and items don’t expire by default. If present and the value is set to some number `n` – items will expire `n` seconds after their last modified time. | 
| **var.default_ttl_seconds** | int | False | The default Time To Live in seconds. If the value is `-1`, items are not automatically expired. | 
| **var.index** | block | False | One or more `index` blocks. | 
| **var.throughput** | string | False | The throughput of the MongoDB collection (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **var.autoscale_settings** | block | False | An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `index` block structure

> `keys` (string): (REQUIRED) Specifies the list of user settable keys for each Cosmos DB Mongo Collection.
> `unique` (bool): Is the index unique or not? Defaults to 'false'.

### `autoscale_settings` block structure

> `max_throughput` (string): The maximum throughput of the MongoDB collection (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB Mongo Collection. | 
| **system_indexes** | block | No  | One or more `system_indexes` blocks. | 
| **keys** | string | No  | The list of system keys which are not settable for each Cosmos DB Mongo Collection. | 
| **unique** | bool | No  | Identifies whether the table contains no duplicate values. | 

Additionally, all variables are provided as outputs.
