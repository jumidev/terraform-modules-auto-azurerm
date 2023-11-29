# azurerm_synapse_workspace_security_alert_policy

Manages a Security Alert Policy for a Synapse Workspace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **synapse_workspace_id** | string | True | -  |  -  | Specifies the ID of the Synapse Workspace. Changing this forces a new resource to be created. | 
| **policy_state** | string | True | -  |  `Disabled`, `Enabled`, `New`  | Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific workspace. Possible values are `Disabled`, `Enabled` and `New`. | 
| **disabled_alerts** | string | False | -  |  `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`  | Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`. | 
| **email_account_admins_enabled** | bool | False | `False`  |  -  | Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`. | 
| **email_addresses** | string | False | -  |  -  | Specifies an array of email addresses to which the alert is sent. | 
| **retention_days** | int | False | `0`  |  -  | Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`. | 
| **storage_account_access_key** | string | False | -  |  -  | Specifies the identifier key of the Threat Detection audit storage account. | 
| **storage_endpoint** | string | False | -  |  -  | Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. | 

