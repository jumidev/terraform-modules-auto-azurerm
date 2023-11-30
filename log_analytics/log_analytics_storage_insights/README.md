# azurerm_log_analytics_storage_insights

Manages a Log Analytics Storage Insights resource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_storage_insights" 
}

inputs = {
   name = "name of log_analytics_storage_insights" 
   resource_group_name = "${resource_group}" 
   workspace_id = "workspace_id of log_analytics_storage_insights" 
   storage_account_id = "storage_account_id of log_analytics_storage_insights" 
   storage_account_key = "storage_account_key of log_analytics_storage_insights" 
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
| **var.name** | string | True | The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **var.workspace_id** | string | True | The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **var.storage_account_id** | string | True | The ID of the Storage Account used by this Log Analytics Storage Insights. | 
| **var.storage_account_key** | string | True | The storage access key to be used to connect to the storage account. | 
| **var.blob_container_names** | string | False | The names of the blob containers that the workspace should read. | 
| **var.table_names** | string | False | The names of the Azure tables that the workspace should read. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Storage Insights. | 

Additionally, all variables are provided as outputs.
