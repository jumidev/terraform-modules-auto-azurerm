# azurerm_stream_analytics_output_cosmosdb

Manages a Stream Analytics Output to CosmosDB.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_output_cosmosdb"   
}

inputs = {
   name = "The name of the Stream Analytics Output"   
   # stream_analytics_job_id → set in tfstate_inputs
   cosmosdb_account_key = "The account key for the CosmosDB database"   
   # cosmosdb_sql_database_id → set in tfstate_inputs
   container_name = "The name of the CosmosDB container"   
}

tfstate_inputs = {
   stream_analytics_job_id = "path/to/stream_analytics_job_component:id"   
   cosmosdb_sql_database_id = "path/to/cosmosdb_sql_database_component:id"   
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
| **name** | string |  The name of the Stream Analytics Output. Changing this forces a new resource to be created. | 
| **stream_analytics_job_id** | string |  The ID of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **cosmosdb_account_key** | string |  The account key for the CosmosDB database. | 
| **cosmosdb_sql_database_id** | string |  The ID of the CosmosDB database. | 
| **container_name** | string |  The name of the CosmosDB container. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **document_id** | string |  The name of the field in output events used to specify the primary key which insert or update operations are based on. | 
| **partition_key** | string |  The name of the field in output events used to specify the key for partitioning output across collections. If `container_name` contains `{partition}` token, this property is required to be specified. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output for CosmosDB. | 

Additionally, all variables are provided as outputs.
