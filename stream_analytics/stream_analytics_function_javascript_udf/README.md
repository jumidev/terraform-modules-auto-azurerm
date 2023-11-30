# azurerm_stream_analytics_function_javascript_udf

Manages a JavaScript UDF Function within Stream Analytics Streaming Job.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the JavaScript UDF Function. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **var.input** | block | True | One or more `input` blocks. | 
| **var.output** | block | True | An `output` blocks. | 
| **var.script** | string | True | The JavaScript of this UDF Function. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_job_name** | string  | - | 
| **input** | block  | - | 
| **output** | block  | - | 
| **script** | string  | - | 
| **id** | string  | The ID of the Stream Analytics JavaScript UDF Function. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_function_javascript_udf" 
}

inputs = {
   name = "name of stream_analytics_function_javascript_udf" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_function_javascript_udf" 
   input = "input of stream_analytics_function_javascript_udf" 
   output = "output of stream_analytics_function_javascript_udf" 
   script = "script of stream_analytics_function_javascript_udf" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```