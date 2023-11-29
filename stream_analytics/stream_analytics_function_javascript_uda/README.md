# azurerm_stream_analytics_function_javascript_uda

Manages a JavaScript UDA Function within a Stream Analytics Streaming Job.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the JavaScript UDA Function. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_id** | string | True | -  |  -  | The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **var.input** | block | True | -  |  -  | One or more `input` blocks. | 
| **var.output** | block | True | -  |  -  | An `output` block. | 
| **var.script** | string | True | -  |  -  | The JavaScript of this UDA Function. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **stream_analytics_job_id** | string  | - | 
| **input** | block  | - | 
| **output** | block  | - | 
| **script** | string  | - | 
| **id** | string  | The ID of the Stream Analytics JavaScript UDA Function. | 