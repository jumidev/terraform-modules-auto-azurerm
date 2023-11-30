# azurerm_synapse_sql_pool_security_alert_policy

Manages a Security Alert Policy for a Synapse SQL Pool.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "synapse/synapse_sql_pool_security_alert_policy" 
}

inputs = {
   sql_pool_id = "sql_pool_id of synapse_sql_pool_security_alert_policy" 
   policy_state = "policy_state of synapse_sql_pool_security_alert_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.sql_pool_id** | string | True | -  |  -  |  Specifies the ID of the Synapse SQL Pool. Changing this forces a new resource to be created. | 
| **var.policy_state** | string | True | -  |  `Disabled`, `Enabled`, `New`  |  Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific SQL pool. Possible values are `Disabled`, `Enabled` and `New`. | 
| **var.disabled_alerts** | string | False | -  |  `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`  |  Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`. | 
| **var.email_account_admins_enabled** | bool | False | `False`  |  -  |  Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`. | 
| **var.email_addresses** | string | False | -  |  -  |  Specifies an array of email addresses to which the alert is sent. | 
| **var.retention_days** | int | False | `0`  |  -  |  Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`. | 
| **var.storage_account_access_key** | string | False | -  |  -  |  Specifies the identifier key of the Threat Detection audit storage account. | 
| **var.storage_endpoint** | string | False | -  |  -  |  Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Synapse SQL Pool Security Alert Policy. | 

Additionally, all variables are provided as outputs.
