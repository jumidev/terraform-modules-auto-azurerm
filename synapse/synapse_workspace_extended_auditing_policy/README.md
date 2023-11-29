# azurerm_synapse_workspace_extended_auditing_policy

Manages a Synapse Workspace Extended Auditing Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **synapse_workspace_id** | string | True | -  |  -  | The ID of the Synapse workspace to set the extended auditing policy. Changing this forces a new resource to be created. | 
| **storage_endpoint** | string | False | -  |  -  | The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs. | 
| **retention_in_days** | int | False | `0`  |  -  | The number of days to retain logs for in the storage account. Defaults to `0`. | 
| **storage_account_access_key** | string | False | -  |  -  | The access key to use for the auditing storage account. | 
| **storage_account_access_key_is_secondary** | string | False | -  |  -  | Is `storage_account_access_key` value the storage's secondary key? | 
| **log_monitoring_enabled** | bool | False | `True`  |  -  | Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`. | 

