# azurerm_stream_analytics_output_mssql

Manages a Stream Analytics Output to Microsoft SQL Server Database.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_output_mssql"   
}

inputs = {
   name = "The name of the Stream Output"   
   resource_group_name = "${resource_group}"   
   # stream_analytics_job_name → set in component_inputs
   server = "The SQL server url"   
   database = "The MS SQL database name where the reference table exists..."   
   table = "Table in the database that the output points to"   
}

component_inputs = {
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
| **name** | string |  The name of the Stream Output. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string |  The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **server** | string |  The SQL server url. Changing this forces a new resource to be created. | 
| **database** | string |  The MS SQL database name where the reference table exists. Changing this forces a new resource to be created. | 
| **table** | string |  Table in the database that the output points to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **user** | string |  -  |  -  |  Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if `authentication_mode` is `ConnectionString`. | 
| **password** | string |  -  |  -  |  Password used together with username, to login to the Microsoft SQL Server. Required if `authentication_mode` is `ConnectionString`. | 
| **max_batch_count** | string |  `10000`  |  `1`, `1073741824`  |  The max batch count to write to the SQL Database. Defaults to `10000`. Possible values are between `1` and `1073741824`. | 
| **max_writer_count** | string |  `1`  |  `0`, `1`  |  The max writer count for the SQL Database. Defaults to `1`. Possible values are `0` which bases the writer count on the query partition and `1` which corresponds to a single writer. | 
| **authentication_mode** | string |  `ConnectionString`  |  `Msi`, `ConnectionString`  |  The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output Microsoft SQL Server Database. | 

Additionally, all variables are provided as outputs.
