# azurerm_stream_analytics_reference_input_blob

Manages a Stream Analytics Reference Input Blob. Reference data (also known as a lookup table) is a finite data set that is static or slowly changing in nature, used to perform a lookup or to correlate with your data stream. Learn more [here](https://docs.microsoft.com/azure/stream-analytics/stream-analytics-use-reference-data#azure-blob-storage).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Reference Input Blob. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **date_format** | string | True | -  |  -  | The date format. Wherever `{date}` appears in `path_pattern`, the value of this property is used as the date format instead. | 
| **path_pattern** | string | True | -  |  -  | The blob path pattern. Not a regular expression. It represents a pattern against which blob names will be matched to determine whether or not they should be included as input or output to the job. | 
| **storage_account_name** | string | True | -  |  -  | The name of the Storage Account that has the blob container with reference data. | 
| **storage_account_key** | string | False | -  |  -  | The Access Key which should be used to connect to this Storage Account. Required if `authentication_mode` is `ConnectionString`. | 
| **storage_container_name** | string | True | -  |  -  | The name of the Container within the Storage Account. | 
| **time_format** | string | True | -  |  -  | The time format. Wherever `{time}` appears in `path_pattern`, the value of this property is used as the time format instead. | 
| **authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  | The authentication mode for the Stream Analytics Reference Input. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 
| **serialization** | block | True | -  |  -  | A `serialization` block. | 

