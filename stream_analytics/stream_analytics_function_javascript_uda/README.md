# azurerm_stream_analytics_function_javascript_uda

Manages a JavaScript UDA Function within a Stream Analytics Streaming Job.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_function_javascript_uda" 
}

inputs = {
   name = "name of stream_analytics_function_javascript_uda" 
   stream_analytics_job_id = "stream_analytics_job_id of stream_analytics_function_javascript_uda" 
   input = {
      example_input = {
         ...
      }
  
   }
 
   output = {
      example_output = {
         ...
      }
  
   }
 
   script = "script of stream_analytics_function_javascript_uda" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the JavaScript UDA Function. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_id** | string | True | The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **var.input** | block | True | One or more `input` blocks. | 
| **var.output** | block | True | An `output` block. | 
| **var.script** | string | True | The JavaScript of this UDA Function. | 

### `input` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The input data type of this JavaScript Function. Possible values include 'any', 'array', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'. |
| `configuration_parameter` | bool | No | False | Is this input parameter a configuration parameter? Defaults to 'false'. |

### `output` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The output data type from this JavaScript Function. Possible values include 'any', 'array', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics JavaScript UDA Function. | 

Additionally, all variables are provided as outputs.
