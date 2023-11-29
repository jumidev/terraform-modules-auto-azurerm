# azurerm_stream_analytics_output_blob

Manages a Stream Analytics Output to Blob Storage.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | -  |  -  |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.date_format** | string | True | -  |  -  |  The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead. | 
| **var.path_pattern** | string | True | -  |  -  |  The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. | 
| **var.storage_account_name** | string | True | -  |  -  |  The name of the Storage Account. | 
| **var.storage_container_name** | string | True | -  |  -  |  The name of the Container within the Storage Account. | 
| **var.time_format** | string | True | -  |  -  |  The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead. | 
| **var.serialization** | block | True | -  |  -  |  A `serialization` block. | 
| **var.authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **var.batch_max_wait_time** | string | False | -  |  -  |  The maximum wait time per batch in `hh:mm:ss` e.g. `00:02:00` for two minutes. | 
| **var.batch_min_rows** | int | False | -  |  -  |  The minimum number of rows per batch (must be between `0` and `1000000`). | 
| **var.storage_account_key** | string | False | -  |  -  |  The Access Key which should be used to connect to this Storage Account. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_job_name** | string  | - | 
| **date_format** | string  | - | 
| **path_pattern** | string  | - | 
| **storage_account_name** | string  | - | 
| **storage_container_name** | string  | - | 
| **time_format** | string  | - | 
| **serialization** | block  | - | 
| **authentication_mode** | string  | - | 
| **batch_max_wait_time** | string  | - | 
| **batch_min_rows** | int  | - | 
| **storage_account_key** | string  | - | 
| **id** | string  | The ID of the Stream Analytics Output Blob Storage. | 