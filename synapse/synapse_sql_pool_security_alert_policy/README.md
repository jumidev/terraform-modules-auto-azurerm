# azurerm_synapse_sql_pool_security_alert_policy



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "synapse/synapse_sql_pool_security_alert_policy"   
}
inputs = {
   sql_pool_id = "Specifies the ID of the Synapse SQL Pool"   
   policy_state = "Specifies the state of the policy, whether it is enabled or disabled or a policy..."   
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
| **sql_pool_id** | string |  -  |  Specifies the ID of the Synapse SQL Pool. Changing this forces a new resource to be created. | 
| **policy_state** | bool |  `Disabled`, `Enabled`, `New`  |  Specifies the state of the policy, whether it is enabled or disabled or a policy has not been applied yet on the specific SQL pool. Possible values are `Disabled`, `Enabled` and `New`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **disabled_alerts** | bool |  -  |  `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`  |  Specifies an array of alerts that are disabled. Allowed values are: `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`. | 
| **email_account_admins_enabled** | bool |  `False`  |  -  |  Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`. | 
| **email_addresses** | string |  -  |  -  |  Specifies an array of email addresses to which the alert is sent. | 
| **retention_days** | number |  `0`  |  -  |  Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`. | 
| **storage_account_access_key** | string |  -  |  -  |  Specifies the identifier key of the Threat Detection audit storage account. | 
| **storage_endpoint** | string |  -  |  -  |  Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **storage_endpoint** | string | No  | Specifies the blob storage endpoint (e.g. <https://example.blob.core.windows.net>). This blob storage will hold all Threat Detection audit logs. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Synapse SQL Pool Security Alert Policy. | 

Additionally, all variables are provided as outputs.
