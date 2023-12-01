# azurerm_stream_analytics_function_javascript_udf

Manages a JavaScript UDF Function within Stream Analytics Streaming Job.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_function_javascript_udf" 
}

inputs = {
   name = "name of stream_analytics_function_javascript_udf" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_function_javascript_udf" 
   input = {
      example_input = {
         type = "..."   
      }
  
   }
 
   output = {
      example_output = {
         type = "..."   
      }
  
   }
 
   script = "script of stream_analytics_function_javascript_udf" 
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
| **var.name** | string |  The name of the JavaScript UDF Function. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string |  The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **var.input** | [block](#input-block-structure) |  One or more `input` blocks. | 
| **var.output** | [block](#output-block-structure) |  An `output` blocks. | 
| **var.script** | string |  The JavaScript of this UDF Function. | 

### `input` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The Data Type for the Input Argument of this JavaScript Function. Possible values include 'array', 'any', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'. |
| `configuration_parameter` | bool | No | False | Is this input parameter a configuration parameter? Defaults to 'false'. |

### `output` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The Data Type output from this JavaScript Function. Possible values include 'array', 'any', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics JavaScript UDF Function. | 

Additionally, all variables are provided as outputs.
