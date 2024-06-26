# azurerm_mssql_server_security_alert_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_server_security_alert_policy"   
}
inputs = {
   resource_group_name = "${resource_group}"   
   # server_name → set in component_inputs
   state = "Specifies the state of the policy, whether it is enabled or disabled or a policy..."   
}
component_inputs = {
   server_name = "path/to/mssql_server_component:name"   
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
| **resource_group_name** | string |  -  |  The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created. | 
| **server_name** | string |  -  |  Specifies the name of the MS SQL Server. Changing this forces a new resource to be created. | 
| **state** | bool |  `Disabled`, `Enabled`, `New`  |  Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database server. Possible values are `Disabled`, `Enabled` and `New`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **disabled_alerts** | bool |  -  |  `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`  |  Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`. | 
| **email_account_admins** | bool |  `False`  |  -  |  Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`. | 
| **email_addresses** | string |  -  |  -  |  Specifies an array of email addresses to which the alert is sent. | 
| **retention_days** | number |  `0`  |  -  |  Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`. | 
| **storage_endpoint** | string |  -  |  -  |  Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. | 
| **storage_account_access_key** | string |  -  |  `storage_endpoint`, `shared_access_key_enabled = false`, `azurerm_mssql_server_security_alert_policy`  |  Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use `storage_endpoint` to specify a storage account blob endpoint. -> **NOTE:**  Please note that storage accounts configured with `shared_access_key_enabled = false` cannot be used to configure `azurerm_mssql_server_security_alert_policy` with `storage_endpoint` for now. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **storage_account_access_key** | string | Yes  | Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use `storage_endpoint` to specify a storage account blob endpoint. -> **NOTE:**  Please note that storage accounts configured with `shared_access_key_enabled = false` cannot be used to configure `azurerm_mssql_server_security_alert_policy` with `storage_endpoint` for now. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the MS SQL Server Security Alert Policy. | 

Additionally, all variables are provided as outputs.
