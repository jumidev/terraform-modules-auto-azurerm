# azurerm_mssql_server_security_alert_policy

Manages a Security Alert Policy for a MSSQL Server.-> **NOTE** Security Alert Policy is currently only available for MS SQL databases.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group that contains the MS SQL Server. Changing this forces a new resource to be created. | 
| **var.server_name** | string | True | -  |  -  |  Specifies the name of the MS SQL Server. Changing this forces a new resource to be created. | 
| **var.state** | string | True | -  |  `Disabled`, `Enabled`, `New`  |  Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific database server. Possible values are `Disabled`, `Enabled` and `New`. | 
| **var.disabled_alerts** | string | False | -  |  `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`  |  Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`. | 
| **var.email_account_admins** | bool | False | `False`  |  -  |  Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`. | 
| **var.email_addresses** | string | False | -  |  -  |  Specifies an array of email addresses to which the alert is sent. | 
| **var.retention_days** | int | False | `0`  |  -  |  Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`. | 
| **var.storage_endpoint** | string | False | -  |  -  |  Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. | 
| **var.storage_account_access_key** | string | False | -  |  -  |  Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use `storage_endpoint` to specify a storage account blob endpoint. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **server_name** | string  | - | 
| **state** | string  | - | 
| **disabled_alerts** | string  | - | 
| **email_account_admins** | bool  | - | 
| **email_addresses** | string  | - | 
| **retention_days** | int  | - | 
| **storage_endpoint** | string  | - | 
| **storage_account_access_key** | string  | - | 
| **id** | string  | The ID of the MS SQL Server Security Alert Policy. | 