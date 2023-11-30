# azurerm_synapse_sql_pool_extended_auditing_policy

Manages a Synapse SQL Pool Extended Auditing Policy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_sql_pool_extended_auditing_policy" 
}

inputs = {
   sql_pool_id = "sql_pool_id of synapse_sql_pool_extended_auditing_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse SQL Pool Extended Auditing Policy. | 

Additionally, all variables are provided as outputs.
