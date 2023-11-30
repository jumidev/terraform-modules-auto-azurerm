# azurerm_stream_analytics_stream_input_blob

Manages a Stream Analytics Stream Input Blob.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_stream_input_blob" 
}

inputs = {
   name = "name of stream_analytics_stream_input_blob" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_stream_input_blob" 
   date_format = "date_format of stream_analytics_stream_input_blob" 
   path_pattern = "path_pattern of stream_analytics_stream_input_blob" 
   storage_account_name = "storage_account_name of stream_analytics_stream_input_blob" 
   storage_account_key = "storage_account_key of stream_analytics_stream_input_blob" 
   storage_container_name = "storage_container_name of stream_analytics_stream_input_blob" 
   time_format = "time_format of stream_analytics_stream_input_blob" 
   serialization = "serialization of stream_analytics_stream_input_blob" 
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
| **var.name** | string | True | The name of the Stream Input Blob. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.date_format** | string | True | The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead. | 
| **var.path_pattern** | string | True | The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. | 
| **var.storage_account_name** | string | True | The name of the Storage Account. | 
| **var.storage_account_key** | string | True | The Access Key which should be used to connect to this Storage Account. | 
| **var.storage_container_name** | string | True | The name of the Container within the Storage Account. | 
| **var.time_format** | string | True | The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead. | 
| **var.serialization** | block | True | A `serialization` block. | 

### `serialization` block structure

> `type` (string): (REQUIRED) The serialization format used for incoming data streams. Possible values are 'Avro', 'Csv' and 'Json'.\
> `encoding` (string): The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'.\
> `field_delimiter` (string): The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Stream Input Blob. | 

Additionally, all variables are provided as outputs.
