# azurerm_synapse_sql_pool_extended_auditing_policy

Manages a Synapse SQL Pool Extended Auditing Policy.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.sql_pool_id** | string | True | -  |  The ID of the Synapse SQL pool to set the extended auditing policy. Changing this forces a new resource to be created. | 
| **var.storage_endpoint** | string | False | -  |  The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs. | 
| **var.retention_in_days** | int | False | `0`  |  The number of days to retain logs for in the storage account. Defaults to `0`. | 
| **var.storage_account_access_key** | string | False | -  |  The access key to use for the auditing storage account. | 
| **var.storage_account_access_key_is_secondary** | string | False | -  |  Is `storage_account_access_key` value the storage's secondary key? | 
| **var.log_monitoring_enabled** | bool | False | `True`  |  Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its master database audit events to Azure Monitor. Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **sql_pool_id** | string  | - | 
| **storage_endpoint** | string  | - | 
| **retention_in_days** | int  | - | 
| **storage_account_access_key** | string  | - | 
| **storage_account_access_key_is_secondary** | string  | - | 
| **log_monitoring_enabled** | bool  | - | 
| **id** | string  | The ID of the Synapse SQL Pool Extended Auditing Policy. | 