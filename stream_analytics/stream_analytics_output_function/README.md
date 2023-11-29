# azurerm_stream_analytics_output_function

Manages a Stream Analytics Output Function.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | -  |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.api_key** | string | True | -  |  The API key for the Function. | 
| **var.function_app** | string | True | -  |  The name of the Function App. | 
| **var.function_name** | string | True | -  |  The name of the function in the Function App. | 
| **var.batch_max_count** | int | False | `100`  |  The maximum number of events in each batch that's sent to the function. Defaults to `100`. | 
| **var.batch_max_in_bytes** | string | False | `262144`  |  The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_job_name** | string  | - | 
| **api_key** | string  | - | 
| **function_app** | string  | - | 
| **function_name** | string  | - | 
| **batch_max_count** | int  | - | 
| **batch_max_in_bytes** | string  | - | 
| **id** | string  | The ID of the Stream Analytics Output Function. | 