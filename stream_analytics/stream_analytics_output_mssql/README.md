# azurerm_stream_analytics_output_mssql

Manages a Stream Analytics Output to Microsoft SQL Server Database.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_mssql" 
}

inputs = {
   name = "name of stream_analytics_output_mssql" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_output_mssql" 
   server = "server of stream_analytics_output_mssql" 
   database = "database of stream_analytics_output_mssql" 
   table = "table of stream_analytics_output_mssql" 
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
| **var.name** | string  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.server** | string  The SQL server url. Changing this forces a new resource to be created. | 
| **var.database** | string  The MS SQL database name where the reference table exists. Changing this forces a new resource to be created. | 
| **var.table** | string  Table in the database that the output points to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.user** | string  -  |  -  |  Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if `authentication_mode` is `ConnectionString`. | 
| **var.password** | string  -  |  -  |  Password used together with username, to login to the Microsoft SQL Server. Required if `authentication_mode` is `ConnectionString`. | 
| **var.max_batch_count** | string  `10000`  |  `1`, `1073741824`  |  The max batch count to write to the SQL Database. Defaults to `10000`. Possible values are between `1` and `1073741824`. | 
| **var.max_writer_count** | string  `1`  |  `0`, `1`  |  The max writer count for the SQL Database. Defaults to `1`. Possible values are `0` which bases the writer count on the query partition and `1` which corresponds to a single writer. | 
| **var.authentication_mode** | string  `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output Microsoft SQL Server Database. | 

Additionally, all variables are provided as outputs.
