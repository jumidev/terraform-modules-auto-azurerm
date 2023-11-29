# azurerm_stream_analytics_stream_input_blob

Manages a Stream Analytics Stream Input Blob.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Stream Input Blob. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **date_format** | string | True | -  |  -  | The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead. | 
| **path_pattern** | string | True | -  |  -  | The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. | 
| **storage_account_name** | string | True | -  |  -  | The name of the Storage Account. | 
| **storage_account_key** | string | True | -  |  -  | The Access Key which should be used to connect to this Storage Account. | 
| **storage_container_name** | string | True | -  |  -  | The name of the Container within the Storage Account. | 
| **time_format** | string | True | -  |  -  | The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead. | 
| **serialization** | block | True | -  |  -  | A `serialization` block. | 

