# azurerm_stream_analytics_output_synapse

Manages a Stream Analytics Output to an Azure Synapse Analytics Workspace.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "stream_analytics/stream_analytics_output_synapse" 
}

inputs = {
   name = "name of stream_analytics_output_synapse" 
   resource_group_name = "${resource_group}" 
   stream_analytics_job_name = "stream_analytics_job_name of stream_analytics_output_synapse" 
   server = "server of stream_analytics_output_synapse" 
   database = "database of stream_analytics_output_synapse" 
   user = "user of stream_analytics_output_synapse" 
   password = "password of stream_analytics_output_synapse" 
   table = "table of stream_analytics_output_synapse" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Stream Analytics Output to an Azure Synapse Analytics Workspace. | 

Additionally, all variables are provided as outputs.
