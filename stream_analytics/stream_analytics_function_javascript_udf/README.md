# azurerm_stream_analytics_function_javascript_udf

Manages a JavaScript UDF Function within Stream Analytics Streaming Job.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the JavaScript UDF Function. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job where this Function should be created. Changing this forces a new resource to be created. | 
| **input** | block | True | -  |  -  | One or more `input` blocks. | 
| **output** | block | True | -  |  -  | An `output` blocks. | 
| **script** | string | True | -  |  -  | The JavaScript of this UDF Function. | 

