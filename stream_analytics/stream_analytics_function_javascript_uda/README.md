# azurerm_stream_analytics_function_javascript_uda

Manages a JavaScript UDA Function within a Stream Analytics Streaming Job.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_function_javascript_uda"   
}

inputs = {
   name = "name of stream_analytics_function_javascript_uda"   
   # stream_analytics_job_id → set in tfstate_inputs
   input = {
      this_input = {
         type = "..."         
      }
      
   }
   
   output = {
      this_output = {
         type = "..."         
      }
      
   }
   
   script = "script of stream_analytics_function_javascript_uda"   
}

tfstate_inputs = {
   stream_analytics_job_id = "path/to/stream_analytics_job_component:id"   
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
| **name** | string |  The name of the JavaScript UDA Function. Changing this forces a new resource to be created. | 
| **stream_analytics_job_id** | string |  The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **input** | [block](#input-block-structure) |  One or more `input` blocks. | 
| **output** | [block](#output-block-structure) |  An `output` block. | 
| **script** | string |  The JavaScript of this UDA Function. | 

### `output` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The output data type from this JavaScript Function. Possible values include 'any', 'array', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'. |

### `input` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The input data type of this JavaScript Function. Possible values include 'any', 'array', 'bigint', 'datetime', 'float', 'nvarchar(max)' and 'record'. |
| `configuration_parameter` | bool | No | False | Is this input parameter a configuration parameter? Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics JavaScript UDA Function. | 

Additionally, all variables are provided as outputs.
