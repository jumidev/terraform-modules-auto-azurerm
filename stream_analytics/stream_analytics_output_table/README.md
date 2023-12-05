# azurerm_stream_analytics_output_table

Manages a Stream Analytics Output Table.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_output_table"   
}

inputs = {
   name = "The name of the Stream Output"   
   resource_group_name = "${resource_group}"   
   # stream_analytics_job_name → set in tfstate_inputs
   # storage_account_name → set in tfstate_inputs
   storage_account_key = "The Access Key which should be used to connect to this Storage Account..."   
   table = "The name of the table where the stream should be output to..."   
   partition_key = "The name of the output column that contains the partition key..."   
   row_key = "The name of the output column that contains the row key..."   
   batch_size = "The number of records for a batch operation"   
}

tfstate_inputs = {
   stream_analytics_job_name = "path/to/stream_analytics_job_component:name"   
   storage_account_name = "path/to/storage_account_component:name"   
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
| **name** | string |  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **storage_account_name** | string |  The name of the Storage Account. | 
| **storage_account_key** | string |  The Access Key which should be used to connect to this Storage Account. | 
| **table** | string |  The name of the table where the stream should be output to. | 
| **partition_key** | string |  The name of the output column that contains the partition key. | 
| **row_key** | string |  The name of the output column that contains the row key. | 
| **batch_size** | int |  The number of records for a batch operation. Must be between `1` and `100`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **columns_to_remove** | list |  A list of the column names to be removed from output event entities. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output Table. | 

Additionally, all variables are provided as outputs.
