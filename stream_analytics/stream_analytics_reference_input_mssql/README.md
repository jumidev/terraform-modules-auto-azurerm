# azurerm_stream_analytics_reference_input_mssql

Manages a Stream Analytics Reference Input from MS SQL. Reference data (also known as a lookup table) is a finite data set that is static or slowly changing in nature, used to perform a lookup or to correlate with your data stream. Learn more [here](https://docs.microsoft.com/azure/stream-analytics/stream-analytics-use-reference-data#azure-sql-database).

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_reference_input_mssql" 
}

inputs = {
   name = "name of stream_analytics_reference_input_mssql" 
   resource_group_name = "${resource_group}" 
   # stream_analytics_job_name → set in tfstate_inputs
   server = "server of stream_analytics_reference_input_mssql" 
   database = "database of stream_analytics_reference_input_mssql" 
   username = "username of stream_analytics_reference_input_mssql" 
   password = "password of stream_analytics_reference_input_mssql" 
   refresh_type = "refresh_type of stream_analytics_reference_input_mssql" 
   full_snapshot_query = "full_snapshot_query of stream_analytics_reference_input_mssql" 
}

tfstate_inputs = {
   stream_analytics_job_name = "path/to/stream_analytics_job_component:name" 
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
| **name** | string |  The name of the Reference Input MS SQL data. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **server** | string |  The fully qualified domain name of the MS SQL server. | 
| **database** | string |  The MS SQL database name where the reference data exists. | 
| **username** | string |  The username to connect to the MS SQL database. | 
| **password** | string |  The password to connect to the MS SQL database. | 
| **refresh_type** | string |  Defines whether and how the reference data should be refreshed. Accepted values are `Static`, `RefreshPeriodicallyWithFull` and `RefreshPeriodicallyWithDelta`. | 
| **full_snapshot_query** | string |  The query used to retrieve the reference data from the MS SQL database. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **refresh_interval_duration** | string |  The frequency in `hh:mm:ss` with which the reference data should be retrieved from the MS SQL database e.g. `00:20:00` for every 20 minutes. Must be set when `refresh_type` is `RefreshPeriodicallyWithFull` or `RefreshPeriodicallyWithDelta`. | 
| **delta_snapshot_query** | string |  The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when `refresh_type` is `Static`. | 
| **table** | string |  The name of the table in the Azure SQL database. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics. | 

Additionally, all variables are provided as outputs.
