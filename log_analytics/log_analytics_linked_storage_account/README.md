# azurerm_log_analytics_linked_storage_account

Manages a Log Analytics Linked Storage Account.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **data_source_type** | string | True | -  |  `CustomLogs`, `AzureWatson`, `Query`, `Ingestion`, `Alerts`  | The data source type which should be used for this Log Analytics Linked Storage Account. Possible values are `CustomLogs`, `AzureWatson`, `Query`, `Ingestion` and `Alerts`. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Linked Storage Account should exist. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **workspace_resource_id** | string | True | -  |  -  | The resource ID of the Log Analytics Workspace. Changing this forces a new Log Analytics Linked Storage Account to be created. | 
| **storage_account_ids** | string | True | -  |  -  | The storage account resource ids to be linked. | 

