# azurerm_stream_analytics_reference_input_blob

Manages a Stream Analytics Reference Input Blob. Reference data (also known as a lookup table) is a finite data set that is static or slowly changing in nature, used to perform a lookup or to correlate with your data stream. Learn more [here](https://docs.microsoft.com/azure/stream-analytics/stream-analytics-use-reference-data#azure-blob-storage).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_reference_input_blob"   
}

inputs = {
   name = "The name of the Reference Input Blob"   
   resource_group_name = "${resource_group}"   
   # stream_analytics_job_name → set in component_inputs
   date_format = "The date format"   
   path_pattern = "The blob path pattern"   
   # storage_account_name → set in component_inputs
   # storage_container_name → set in component_inputs
   time_format = "The time format"   
   serialization = {
      type = "..."      
   }
   
}

component_inputs = {
   stream_analytics_job_name = "path/to/stream_analytics_job_component:name"   
   storage_account_name = "path/to/storage_account_component:name"   
   storage_container_name = "path/to/storage_container_component:name"   
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
| **name** | string |  The name of the Reference Input Blob. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **date_format** | string |  The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead. | 
| **path_pattern** | string |  The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. | 
| **storage_account_name** | string |  The name of the Storage Account that has the blob container with reference data. | 
| **storage_container_name** | string |  The name of the Container within the Storage Account. | 
| **time_format** | string |  The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead. | 
| **serialization** | [block](#serialization-block-structure) |  A `serialization` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **storage_account_key** | string |  -  |  -  |  The Access Key which should be used to connect to this Storage Account. Required if `authentication_mode` is `ConnectionString`. | 
| **authentication_mode** | string |  `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Analytics Reference Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 

### `serialization` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | The serialization format used for the reference data. Possible values are 'Avro', 'Csv' and 'Json'. |
| `encoding` | string | No | - | The encoding of the incoming data in the case of input and the encoding of outgoing data in the case of output. It currently can only be set to 'UTF8'. |
| `field_delimiter` | string | No | - | The delimiter that will be used to separate comma-separated value (CSV) records. Possible values are ' ' (space), ',' (comma), '	' (tab), '|' (pipe) and ';'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Reference Input Blob. | 

Additionally, all variables are provided as outputs.
