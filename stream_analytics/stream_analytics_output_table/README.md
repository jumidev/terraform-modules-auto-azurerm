# azurerm_stream_analytics_output_table

Manages a Stream Analytics Output Table.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.storage_account_name** | string | True | -  |  -  | The name of the Storage Account. | 
| **var.storage_account_key** | string | True | -  |  -  | The Access Key which should be used to connect to this Storage Account. | 
| **var.table** | string | True | -  |  -  | The name of the table where the stream should be output to. | 
| **var.partition_key** | string | True | -  |  -  | The name of the output column that contains the partition key. | 
| **var.row_key** | string | True | -  |  -  | The name of the output column that contains the row key. | 
| **var.batch_size** | int | True | -  |  -  | The number of records for a batch operation. Must be between `1` and `100`. | 
| **var.columns_to_remove** | list | False | -  |  -  | A list of the column names to be removed from output event entities. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_job_name** | string  | - | 
| **storage_account_name** | string  | - | 
| **storage_account_key** | string  | - | 
| **table** | string  | - | 
| **partition_key** | string  | - | 
| **row_key** | string  | - | 
| **batch_size** | int  | - | 
| **columns_to_remove** | list  | - | 
| **id** | string  | The ID of the Stream Analytics Output Table. | 