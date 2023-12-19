# azurerm_stream_analytics_output_synapse

Manages a Stream Analytics Output to an Azure Synapse Analytics Workspace.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "stream_analytics/stream_analytics_output_synapse"   
}

inputs = {
   name = "The name of the Stream Output"   
   resource_group_name = "${resource_group}"   
   # stream_analytics_job_name → set in component_inputs
   server = "The name of the SQL server containing the Azure SQL database..."   
   database = "The name of the Azure SQL database"   
   user = "The user name that will be used to connect to the Azure SQL database..."   
   password = "The password that will be used to connect to the Azure SQL database..."   
   table = "The name of the table in the Azure SQL database"   
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
| **server** | string |  The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created. | 
| **database** | string |  The name of the Azure SQL database. Changing this forces a new resource to be created. | 
| **user** | string |  The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created. | 
| **password** | string |  The password that will be used to connect to the Azure SQL database. | 
| **table** | string |  The name of the table in the Azure SQL database. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output to an Azure Synapse Analytics Workspace. | 

Additionally, all variables are provided as outputs.
