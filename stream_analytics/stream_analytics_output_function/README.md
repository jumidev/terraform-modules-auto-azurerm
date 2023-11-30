# azurerm_stream_analytics_output_function

Manages a Stream Analytics Output Function.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.api_key** | string |  The API key for the Function. | 
| **var.function_app** | string |  The name of the Function App. | 
| **var.function_name** | string |  The name of the function in the Function App. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.batch_max_count** | int |  `100`  |  The maximum number of events in each batch that's sent to the function. Defaults to `100`. | 
| **var.batch_max_in_bytes** | string |  `262144`  |  The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output Function. | 

Additionally, all variables are provided as outputs.
