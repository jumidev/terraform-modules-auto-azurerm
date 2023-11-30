# azurerm_stream_analytics_job

Manages a Stream Analytics Job.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_job" 
}

inputs = {
   name = "name of stream_analytics_job" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
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
| **var.name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created. | 
| **var.location** | string |  The Azure Region in which the Resource Group exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.stream_analytics_cluster_id** | string |  -  |  -  |  The ID of an existing Stream Analytics Cluster where the Stream Analytics Job should run. | 
| **var.compatibility_level** | string |  -  |  `1.0`, `1.1`, `1.2`  |  Specifies the compatibility level for this job - which controls certain runtime behaviours of the streaming job. Possible values are `1.0`, `1.1` and `1.2`. | 
| **var.data_locale** | string |  -  |  -  |  Specifies the Data Locale of the Job, which [should be a supported .NET Culture](https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx). | 
| **var.events_late_arrival_max_delay_in_seconds** | int |  `5`  |  -  |  Specifies the maximum tolerable delay in seconds where events arriving late could be included. Supported range is `-1` (indefinite) to `1814399` (20d 23h 59m 59s). Default is `5`. | 
| **var.events_out_of_order_max_delay_in_seconds** | int |  `0`  |  -  |  Specifies the maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. Supported range is `0` to `599` (9m 59s). Default is `0`. | 
| **var.events_out_of_order_policy** | string |  `Adjust`  |  `Adjust`, `Drop`  |  Specifies the policy which should be applied to events which arrive out of order in the input event stream. Possible values are `Adjust` and `Drop`. Default is `Adjust`. | 
| **var.type** | string |  `Cloud`  |  `Cloud`, `Edge`  |  The type of the Stream Analytics Job. Possible values are `Cloud` and `Edge`. Defaults to `Cloud`. Changing this forces a new resource to be created. | 
| **var.identity** | block |  -  |  -  |  An `identity` block. | 
| **var.output_error_policy** | string |  `Drop`  |  `Drop`, `Stop`  |  Specifies the policy which should be applied to events which arrive at the output and cannot be written to the external storage due to being malformed (such as missing column values, column values of wrong type or size). Possible values are `Drop` and `Stop`. Default is `Drop`. | 
| **var.streaming_units** | int |  -  |  -  |  Specifies the number of streaming units that the streaming job uses. Supported values are `1`, `3`, `6` and multiples of `6` up to `120`. | 
| **var.content_storage_policy** | string |  `SystemAccount`  |  `JobStorageAccount`, `SystemAccount`  |  The policy for storing stream analytics content. Possible values are `JobStorageAccount`, `SystemAccount`. Defaults to `SystemAccount`. | 
| **var.job_storage_account** | block |  -  |  -  |  The details of the job storage account. A `job_storage_account` block. | 

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Stream Analytics Job. The only possible value is 'SystemAssigned'. |

### `job_storage_account` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `authentication_mode` | string | No | ConnectionString | The authentication mode of the storage account. The only supported value is 'ConnectionString'. Defaults to 'ConnectionString'. |
| `account_name` | string | Yes | - | The name of the Azure storage account. |
| `account_key` | string | Yes | - | The account key for the Azure storage account. |
| `transformation_query` | string | Yes | - | Specifies the query that will be run in the streaming job, [written in Stream Analytics Query Language (SAQL)](https://msdn.microsoft.com/library/azure/dn834998). |
| `tags` | map | No | - | A mapping of tags assigned to the resource. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Job. | 
| **job_id** | string | No  | The Job ID assigned by the Stream Analytics Job. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
