# azurerm_stream_analytics_output_function

Manages a Stream Analytics Output Function.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **api_key** | string | True | -  |  -  | The API key for the Function. | 
| **function_app** | string | True | -  |  -  | The name of the Function App. | 
| **function_name** | string | True | -  |  -  | The name of the function in the Function App. | 
| **batch_max_count** | int | False | `100`  |  -  | The maximum number of events in each batch that's sent to the function. Defaults to `100`. | 
| **batch_max_in_bytes** | string | False | `262144`  |  -  | The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB). | 

