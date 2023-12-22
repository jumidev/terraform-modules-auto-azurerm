# azurerm_cosmosdb_mongo_database

Manages a Mongo Database within a Cosmos DB Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "cosmosdb_documentdb/cosmosdb_mongo_database"   
}

inputs = {
   name = "Specifies the name of the Cosmos DB Mongo Database"   
   resource_group_name = "${resource_group}"   
   # account_name → set in component_inputs
}

component_inputs = {
   account_name = "path/to/cosmosdb_account_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```
## Optional associated resource


### `spring_cloud_app_cosmosdb_association` 

If set, makes a **azurerm_spring_cloud_app_cosmosdb_association** - With the following options:

| attribute | type | required? | default |
| --------- | ---- | --------- | ------- |
| `name` | string | True | null |
| `spring_cloud_app_id` | string | True | null |
| `cosmosdb_account_id` | string | True | null |
| `api_type` | string | True | null |
| `cosmosdb_access_key` | string | True | null |
| `cosmosdb_cassandra_keyspace_name` | string | False | null |
| `cosmosdb_gremlin_database_name` | string | False | null |
| `cosmosdb_gremlin_graph_name` | string | False | null |
| `cosmosdb_sql_database_name` | string | False | null |


Example component snippet:

```hcl
inputs = {
   spring_cloud_app_cosmosdb_association = {
      name = "..."      
      api_type = "..."      
      cosmosdb_access_key = "..."      
   }
   
}

component_inputs = {
   spring_cloud_app_cosmosdb_association.spring_cloud_app_id = "path/to/spring_cloud_app_component:id"   
   spring_cloud_app_cosmosdb_association.cosmosdb_account_id = "path/to/cosmosdb_account_component:id"   
}

```


## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  Specifies the name of the Cosmos DB Mongo Database. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which the Cosmos DB Mongo Database is created. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the Cosmos DB Mongo Database to create the table within. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **throughput** | string |  The throughput of the MongoDB database (RU/s). Must be set in increments of `100`. The minimum value is `400`. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 
| **autoscale_settings** | [block](#autoscale_settings-block-structure) |  An `autoscale_settings` block. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply. | 

### `autoscale_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `max_throughput` | string | No | - | The maximum throughput of the MongoDB database (RU/s). Must be between '1,000' and '1,000,000'. Must be set in increments of '1,000'. Conflicts with 'throughput'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Cosmos DB Mongo Database. | 

Additionally, all variables are provided as outputs.
