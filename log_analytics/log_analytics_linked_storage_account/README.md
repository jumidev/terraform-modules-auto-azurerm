# azurerm_log_analytics_linked_storage_account

Manages a Log Analytics Linked Storage Account.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.data_source_type** | string | True | `CustomLogs`, `AzureWatson`, `Query`, `Ingestion`, `Alerts`  |  The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **var.workspace_resource_id** | string | True | -  |  The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **var.storage_account_ids** | string | True | -  |  The storage account resource ids to be linked. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **data_source_type** | string  | - | 
| **resource_group_name** | string  | - | 
| **workspace_resource_id** | string  | - | 
| **storage_account_ids** | string  | - | 
| **id** | string  | The ID of the Log Analytics Linked Storage Account. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_linked_storage_account" 
}

inputs = {
   data_source_type = "data_source_type of log_analytics_linked_storage_account" 
   resource_group_name = "${resource_group}" 
   workspace_resource_id = "workspace_resource_id of log_analytics_linked_storage_account" 
   storage_account_ids = "storage_account_ids of log_analytics_linked_storage_account" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```