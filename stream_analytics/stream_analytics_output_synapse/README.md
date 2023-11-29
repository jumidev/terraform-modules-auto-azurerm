# azurerm_stream_analytics_output_synapse

Manages a Stream Analytics Output to an Azure Synapse Analytics Workspace.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the Stream Output. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created. | 
| **var.stream_analytics_job_name** | string | True | The name of the Stream Analytics Job. Changing this forces a new resource to be created. | 
| **var.server** | string | True | The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created. | 
| **var.database** | string | True | The name of the Azure SQL database. Changing this forces a new resource to be created. | 
| **var.user** | string | True | The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created. | 
| **var.password** | string | True | The password that will be used to connect to the Azure SQL database. | 
| **var.table** | string | True | The name of the table in the Azure SQL database. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **stream_analytics_job_name** | string  | - | 
| **server** | string  | - | 
| **database** | string  | - | 
| **user** | string  | - | 
| **password** | string  | - | 
| **table** | string  | - | 
| **id** | string  | The ID of the Stream Analytics Output to an Azure Synapse Analytics Workspace. | 