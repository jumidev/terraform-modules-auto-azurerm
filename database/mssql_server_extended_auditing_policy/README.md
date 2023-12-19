# azurerm_mssql_server_extended_auditing_policy

Manages a MS SQL Server Extended Auditing Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_server_extended_auditing_policy"   
}

inputs = {
   # server_id → set in component_inputs
}

component_inputs = {
   server_id = "path/to/mssql_server_component:id"   
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
| **server_id** | string |  The ID of the SQL Server to set the extended auditing policy. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **enabled** | bool |  `True`  |  `true`, `false`  |  Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`. | 
| **storage_endpoint** | string |  -  |  -  |  The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs. | 
| **retention_in_days** | number |  `0`  |  -  |  The number of days to retain logs for in the storage account. Defaults to `0`. | 
| **storage_account_access_key** | string |  -  |  -  |  The access key to use for the auditing storage account. | 
| **storage_account_access_key_is_secondary** | bool |  -  |  -  |  Is `storage_account_access_key` value the storage's secondary key? | 
| **log_monitoring_enabled** | bool |  `True`  |  -  |  Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`. | 
| **storage_account_subscription_id** | string |  -  |  -  |  The ID of the Subscription containing the Storage Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MS SQL Server Extended Auditing Policy. | 

Additionally, all variables are provided as outputs.
