# azurerm_log_analytics_storage_insights

Manages a Log Analytics Storage Insights resource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_storage_insights"   
}

inputs = {
   name = "The name which should be used for this Log Analytics Storage Insights..."   
   resource_group_name = "${resource_group}"   
   # workspace_id → set in tfstate_inputs
   # storage_account_id → set in tfstate_inputs
   storage_account_key = "The storage access key to be used to connect to the storage account..."   
}

tfstate_inputs = {
   workspace_id = "path/to/log_analytics_workspace_component:id"   
   storage_account_id = "path/to/storage_account_component:id"   
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
| **name** | string |  The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **workspace_id** | string |  The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **storage_account_id** | string |  The ID of the Storage Account used by this Log Analytics Storage Insights. | 
| **storage_account_key** | string |  The storage access key to be used to connect to the storage account. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **blob_container_names** | string |  The names of the blob containers that the workspace should read. | 
| **table_names** | string |  The names of the Azure tables that the workspace should read. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Storage Insights. | 

Additionally, all variables are provided as outputs.
