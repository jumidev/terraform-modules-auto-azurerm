# azurerm_log_analytics_storage_insights

Manages a Log Analytics Storage Insights resource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Log Analytics Storage Insights. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace within which the Storage Insights should exist. Changing this forces a new Log Analytics Storage Insights to be created. | 
| **storage_account_id** | string | True | -  |  -  | The ID of the Storage Account used by this Log Analytics Storage Insights. | 
| **storage_account_key** | string | True | -  |  -  | The storage access key to be used to connect to the storage account. | 
| **blob_container_names** | string | False | -  |  -  | The names of the blob containers that the workspace should read. | 
| **table_names** | string | False | -  |  -  | The names of the Azure tables that the workspace should read. | 

