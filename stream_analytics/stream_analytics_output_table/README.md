# azurerm_stream_analytics_output_table

Manages a Stream Analytics Output Table.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Stream Output. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **storage_account_name** | string | True | -  |  -  | The name of the Storage Account. | 
| **storage_account_key** | string | True | -  |  -  | The Access Key which should be used to connect to this Storage Account. | 
| **table** | string | True | -  |  -  | The name of the table where the stream should be output to. | 
| **partition_key** | string | True | -  |  -  | The name of the output column that contains the partition key. | 
| **row_key** | string | True | -  |  -  | The name of the output column that contains the row key. | 
| **batch_size** | int | True | -  |  -  | The number of records for a batch operation. Must be between `1` and `100`. | 
| **columns_to_remove** | list | False | -  |  -  | A list of the column names to be removed from output event entities. | 

