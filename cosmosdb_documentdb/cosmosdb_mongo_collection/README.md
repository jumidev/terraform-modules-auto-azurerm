# azurerm_cosmosdb_mongo_collection



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_mongo_collection"   
}

inputs = {
   name = "Specifies the name of the Cosmos DB Mongo Collection..."   
   resource_group_name = "${resource_group}"   
   # account_name → set in component_inputs
   # database_name → set in component_inputs
}

component_inputs = {
   account_name = "path/to/cosmosdb_account_component:name"   
   database_name = "path/to/cosmosdb_sql_database_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Cosmos DB Mongo Collection. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the Cosmos DB Account in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 
| **database_name** | string |  The name of the Cosmos DB Mongo Database in which the Cosmos DB Mongo Collection is created. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **shard_key** | string |  The name of the key to partition on for sharding. There must not be any other unique index keys. Changing this forces a new resource to be created. | 
| **analytical_storage_ttl** | string |  The default time to live of Analytical Storage for this Mongo Collection. If present and the value is set to `-1`, it is equal to infinity, and items don't expire by default. If present and the value is set to some number `n` - items will expire `n` seconds after their last modified time. | 
| **default_ttl_seconds** | number |  The default Time To Live in seconds. If the value is `-1`, items are not automatically expired. | 
| **index** | [block](#index-block-structure) |  One or more `index` blocks. | 
| **throughput** | string |  The throughput of the MongoDB collection (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **autoscale_settings** | [block](#autoscale_settings-block-structure) |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. ~> **Note:** Switching between autoscale and manual throughput is not supported via Terraform and must be completed via the Azure Portal and refreshed. | 

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the MongoDB collection (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |

### `index` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `keys` | string | Yes | - | Specifies the list of user settable keys for each Cosmos DB Mongo Collection. |
| `unique` | bool | No | False | Is the index unique or not? Defaults to 'false'. ~> **Note:** An index with an '_id' key must be specified. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **unique** | bool | No  | Identifies whether the table contains no duplicate values. | 
| **id** | string | No  | The ID of the Cosmos DB Mongo Collection. | 
| **system_indexes** | block | No  | One or more `system_indexes` blocks. | 
| **keys** | string | No  | The list of system keys which are not settable for each Cosmos DB Mongo Collection. | 

Additionally, all variables are provided as outputs.
