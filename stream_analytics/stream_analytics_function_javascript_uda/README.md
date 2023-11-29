# azurerm_stream_analytics_function_javascript_uda

Manages a JavaScript UDA Function within a Stream Analytics Streaming Job.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the JavaScript UDA Function. Changing this forces a new resource to be created. | 
| **stream_analytics_job_id** | string | True | -  |  -  | The resource ID of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **input** | block | True | -  |  -  | One or more `input` blocks. | 
| **output** | block | True | -  |  -  | An `output` block. | 
| **script** | string | True | -  |  -  | The JavaScript of this UDA Function. | 

