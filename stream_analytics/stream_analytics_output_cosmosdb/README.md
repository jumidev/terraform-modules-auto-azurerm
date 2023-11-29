# azurerm_stream_analytics_output_cosmosdb

Manages a Stream Analytics Output to CosmosDB.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Stream Analytics Output. Changing this forces a new resource to be created. | 
| **stream_analytics_job_id** | string | True | -  |  -  | The ID of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **cosmosdb_account_key** | string | True | -  |  -  | The account key for the CosmosDB database. | 
| **cosmosdb_sql_database_id** | string | True | -  |  -  | The ID of the CosmosDB database. | 
| **container_name** | string | True | -  |  -  | The name of the CosmosDB container. | 
| **document_id** | string | False | -  |  -  | The name of the field in output events used to specify the primary key which insert or update operations are based on. | 
| **partition_key** | string | False | -  |  -  | The name of the field in output events used to specify the key for partitioning output across collections. If `container_name` contains `{partition}` token, this property is required to be specified. | 

