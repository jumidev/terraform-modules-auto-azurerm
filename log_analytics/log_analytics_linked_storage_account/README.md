# azurerm_log_analytics_linked_storage_account

Manages a Log Analytics Linked Storage Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_linked_storage_account"   
}

inputs = {
   data_source_type = "The data source type which should be used for this Log Analytics Linked Storage ..."   
   resource_group_name = "${resource_group}"   
   workspace_resource_id = "The resource ID of the Log Analytics Workspace"   
   # storage_account_ids → set in tfstate_inputs
}

tfstate_inputs = {
   storage_account_ids = "path/to/storage_account_component:id"   
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
| **data_source_type** | string |  `CustomLogs`, `AzureWatson`, `Query`, `Ingestion`, `Alerts`  |  The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **workspace_resource_id** | string |  -  |  The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **storage_account_ids** | string |  -  |  The storage account resource ids to be linked. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Linked Storage Account. | 

Additionally, all variables are provided as outputs.
