# azurerm_stream_analytics_output_mssql

Manages a Stream Analytics Output to Microsoft SQL Server Database.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Stream Output. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **stream_analytics_job_name** | string | True | -  |  -  | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **server** | string | True | -  |  -  | The SQL server url. Changing this forces a new resource to be created. | 
| **user** | string | False | -  |  -  | Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if `authentication_mode` is `ConnectionString`. | 
| **database** | string | True | -  |  -  | The MS SQL database name where the reference table exists. Changing this forces a new resource to be created. | 
| **password** | string | False | -  |  -  | Password used together with username, to login to the Microsoft SQL Server. Required if `authentication_mode` is `ConnectionString`. | 
| **table** | string | True | -  |  -  | Table in the database that the output points to. Changing this forces a new resource to be created. | 
| **max_batch_count** | string | False | `10000`  |  `1`, `1073741824`  | The max batch count to write to the SQL Database. Defaults to `10000`. Possible values are between `1` and `1073741824`. | 
| **max_writer_count** | string | False | `1`  |  `0`, `1`  | The max writer count for the SQL Database. Defaults to `1`. Possible values are `0` which bases the writer count on the query partition and `1` which corresponds to a single writer. | 
| **authentication_mode** | string | False | `ConnectionString`  |  `Msi`, `ConnectionString`  | The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`. | 

