# azurerm_stream_analytics_output_blob

Manages a Stream Analytics Output to Blob Storage.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_blob" 
}

inputs = {
   name = "name of stream_analytics_output_blob" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_output_blob" 
   date_format = "date_format of stream_analytics_output_blob" 
   path_pattern = "path_pattern of stream_analytics_output_blob" 
   storage_account_name = "storage_account_name of stream_analytics_output_blob" 
   storage_container_name = "storage_container_name of stream_analytics_output_blob" 
   time_format = "time_format of stream_analytics_output_blob" 
   serialization = "serialization of stream_analytics_output_blob" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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

### `serialization` block structure

>`type` (string): (REQUIRED) The serialization format used for outgoing data streams. Possible values are 'Avro', 'Csv', 'Json' and 'Parquet'.
>`encoding` (string): The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'.
>`field_delimiter` (string): The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'.
>`format` (string): Specifies the format of the JSON the output will be written in. Possible values are 'Array' and 'LineSeparated'.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output Blob Storage. | 

Additionally, all variables are provided as outputs.
