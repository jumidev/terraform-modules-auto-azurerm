# azurerm_mssql_database_extended_auditing_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_database_extended_auditing_policy"   
}
inputs = {
   # database_id → set in component_inputs
}
component_inputs = {
   database_id = "path/to/mssql_database_component:id"   
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
| **database_id** | string |  The ID of the SQL database to set the extended auditing policy. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **enabled** | bool |  `True`  |  `true`, `false`  |  Whether to enable the extended auditing policy. Possible values are `true` and `false`. Defaults to `true`. ->**NOTE:**  If `enabled` is `true`, `storage_endpoint` or `log_monitoring_enabled` are required. | 
| **storage_endpoint** | string |  -  |  -  |  The blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all extended auditing logs. | 
| **retention_in_days** | number |  `0`  |  -  |  The number of days to retain logs for in the storage account. Defaults to `0`. | 
| **storage_account_access_key** | string |  -  |  -  |  The access key to use for the auditing storage account. | 
| **storage_account_access_key_is_secondary** | bool |  -  |  -  |  Is `storage_account_access_key` value the storage's secondary key? | 
| **log_monitoring_enabled** | bool |  `True`  |  -  |  Enable audit events to Azure Monitor? Defaults to `true`. ~> **NOTE:** To enable sending audit events to Log Analytics, please refer to the example which can be found in [the `./examples/sql-azure/sql_auditing_log_analytics` directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_server_auditing_log_analytics).  To enable sending server audit events to Log Analytics, please enable the master database to send audit events to Log Analytics. To enable audit events to Eventhub, please refer to the example which can be found in [the `./examples/sql-azure/sql_auditing_eventhub` directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_auditing_eventhub). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **log_monitoring_enabled** | bool | No  | Enable audit events to Azure Monitor? Defaults to `true`. ~> **NOTE:** To enable sending audit events to Log Analytics, please refer to the example which can be found in [the `./examples/sql-azure/sql_auditing_log_analytics` directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_server_auditing_log_analytics).  To enable sending server audit events to Log Analytics, please enable the master database to send audit events to Log Analytics. To enable audit events to Eventhub, please refer to the example which can be found in [the `./examples/sql-azure/sql_auditing_eventhub` directory within the GitHub Repository](https://github.com/hashicorp/terraform-provider-azurerm/tree/main/examples/sql-azure/sql_auditing_eventhub). In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the MS SQL Database Extended Auditing Policy. | 

Additionally, all variables are provided as outputs.
