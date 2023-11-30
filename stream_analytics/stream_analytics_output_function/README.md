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

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_function" 
}

inputs = {
   name = "name of stream_analytics_output_function" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_output_function" 
   api_key = "api_key of stream_analytics_output_function" 
   function_app = "function_app of stream_analytics_output_function" 
   function_name = "function_name of stream_analytics_output_function" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```