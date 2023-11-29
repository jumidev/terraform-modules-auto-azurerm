# azurerm_stream_analytics_job

Manages a Stream Analytics Job.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_cluster_id** | string | False | -  |  -  |  The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run. | 
| **var.compatibility_level** | string | False | -  |  `1.0`, `1.1`, `1.2`  |  Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are `1.0`, `1.1` and `1.2`. | 
| **var.data_locale** | string | False | -  |  -  |  Specifies the Data Locale of the Job, which [should be a supported .NET Culture](https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx). | 
| **var.events_late_arrival_max_delay_in_seconds** | int | False | `5`  |  -  |  Specifies the maximum tolerable delay in seconds where events arriving late could be included. Supported range is `-1` (indefinite) to `1814399` (20d 23h 59m 59s). Default is `5`. | 
| **var.events_out_of_order_max_delay_in_seconds** | int | False | `0`  |  -  |  Specifies the maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. Supported range is `0` to `599` (9m 59s). Default is `0`. | 
| **var.events_out_of_order_policy** | string | False | `Adjust`  |  `Adjust`, `Drop`  |  Specifies the policy which should be applied to events which arrive out of order in the input event stream. Possible values are `Adjust` and `Drop`. Default is `Adjust`. | 
| **var.type** | string | False | `Cloud`  |  `Cloud`, `Edge`  |  The type of the Stream Analytics Job. Possible values are `Cloud` and `Edge`. Defaults to `Cloud`. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.output_error_policy** | string | False | `Drop`  |  `Drop`, `Stop`  |  Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are `Drop` and `Stop`. Default is `Drop`. | 
| **var.streaming_units** | int | False | -  |  -  |  Specifies the number of streaming units that the streaming job uses. Supported values are `1`, `3`, `6` and multiples of `6` up to `120`. | 
| **var.content_storage_policy** | string | False | `SystemAccount`  |  `JobStorageAccount`, `SystemAccount`  |  The policy for storing stream analytics content. Possible values are `JobStorageAccount`, `SystemAccount`. Defaults to `SystemAccount`. | 
| **var.job_storage_account** | block | False | -  |  -  |  The details of the job storage account. A `job_storage_account` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **stream_analytics_cluster_id** | string  | - | 
| **compatibility_level** | string  | - | 
| **data_locale** | string  | - | 
| **events_late_arrival_max_delay_in_seconds** | int  | - | 
| **events_out_of_order_max_delay_in_seconds** | int  | - | 
| **events_out_of_order_policy** | string  | - | 
| **type** | string  | - | 
| **identity** | block  | - | 
| **output_error_policy** | string  | - | 
| **streaming_units** | int  | - | 
| **content_storage_policy** | string  | - | 
| **job_storage_account** | block  | - | 
| **id** | string  | The ID of the Stream Analytics Job. | 
| **job_id** | string  | The Job ID assigned by the Stream Analytics Job. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this Managed Service Identity. | 