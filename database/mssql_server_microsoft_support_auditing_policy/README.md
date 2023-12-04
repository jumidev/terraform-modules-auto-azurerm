# azurerm_mssql_server_microsoft_support_auditing_policy

Manages a MS SQL Server Microsoft Support Auditing Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_server_microsoft_support_auditing_policy" 
}

inputs = {
   # server_id → set in tfstate_inputs
}

tfstate_inputs = {
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
| **blob_storage_endpoint** | string |  -  |  -  |  The blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Microsoft support auditing logs. | 
| **storage_account_access_key** | string |  -  |  -  |  The access key to use for the auditing storage account. | 
| **log_monitoring_enabled** | bool |  `True`  |  -  |  Enable audit events to Azure Monitor? To enable server audit events to Azure Monitor, please enable its main database audit events to Azure Monitor. Defaults to `true`. | 
| **storage_account_subscription_id** | string |  -  |  -  |  The ID of the Subscription containing the Storage Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MS SQL Server Microsoft Support Auditing Policy. | 

Additionally, all variables are provided as outputs.
