# azurerm_log_analytics_linked_storage_account

Manages a Log Analytics Linked Storage Account.

## Example minimal component.hclt

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

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.data_source_type** | string |  `CustomLogs`, `AzureWatson`, `Query`, `Ingestion`, `Alerts`  |  The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **var.workspace_resource_id** | string |  -  |  The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **var.storage_account_ids** | string |  -  |  The storage account resource ids to be linked. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Linked Storage Account. | 

Additionally, all variables are provided as outputs.
