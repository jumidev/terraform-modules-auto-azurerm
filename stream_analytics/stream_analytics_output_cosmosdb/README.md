# azurerm_stream_analytics_output_cosmosdb

Manages a Stream Analytics Output to CosmosDB.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_cosmosdb" 
}

inputs = {
   name = "name of stream_analytics_output_cosmosdb" 
   stream_analytics_job_id = "stream_analytics_job_id of stream_analytics_output_cosmosdb" 
   cosmosdb_account_key = "cosmosdb_account_key of stream_analytics_output_cosmosdb" 
   cosmosdb_sql_database_id = "cosmosdb_sql_database_id of stream_analytics_output_cosmosdb" 
   container_name = "container_name of stream_analytics_output_cosmosdb" 
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
| **var.name** | string | True | The name of the Stream Analytics Output. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_id** | string | True | The ID of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.cosmosdb_account_key** | string | True | The account key for the CosmosDB database. | 
| **var.cosmosdb_sql_database_id** | string | True | The ID of the CosmosDB database. | 
| **var.container_name** | string | True | The name of the CosmosDB container. | 
| **var.document_id** | string | False | The name of the field in output events used to specify the primary key which insert or update operations are based on. | 
| **var.partition_key** | string | False | The name of the field in output events used to specify the key for partitioning output across collections. If `container_name` contains `{partition}` token, this property is required to be specified. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output for CosmosDB. | 

Additionally, all variables are provided as outputs.
