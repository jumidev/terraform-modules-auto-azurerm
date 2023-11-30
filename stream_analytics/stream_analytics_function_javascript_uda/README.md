# azurerm_stream_analytics_function_javascript_uda

Manages a JavaScript UDA Function within a Stream Analytics Streaming Job.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the JavaScript UDA Function. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_id** | string | True | The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **var.input** | block | True | One or more `input` blocks. | 
| **var.output** | block | True | An `output` block. | 
| **var.script** | string | True | The JavaScript of this UDA Function. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **stream_analytics_job_id** | string  | - | 
| **input** | block  | - | 
| **output** | block  | - | 
| **script** | string  | - | 
| **id** | string  | The ID of the Stream Analytics JavaScript UDA Function. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_function_javascript_uda" 
}

inputs = {
   name = "name of stream_analytics_function_javascript_uda" 
   stream_analytics_job_id = "stream_analytics_job_id of stream_analytics_function_javascript_uda" 
   input = "input of stream_analytics_function_javascript_uda" 
   output = "output of stream_analytics_function_javascript_uda" 
   script = "script of stream_analytics_function_javascript_uda" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```