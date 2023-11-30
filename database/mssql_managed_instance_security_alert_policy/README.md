# azurerm_mssql_managed_instance_security_alert_policy

Manages a Security Alert Policy for an MS SQL Managed Instance.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "database/mssql_managed_instance_security_alert_policy" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   managed_instance_name = "managed_instance_name of mssql_managed_instance_security_alert_policy" 
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
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group that contains the MS SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.managed_instance_name** | string | True | -  |  -  |  Specifies the name of the MS SQL Managed Instance. Changing this forces a new resource to be created. | 
| **var.disabled_alerts** | string | False | -  |  `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action`, `Brute_Force`  |  Specifies an array of alerts that are disabled. Possible values are `Sql_Injection`, `Sql_Injection_Vulnerability`, `Access_Anomaly`, `Data_Exfiltration`, `Unsafe_Action` and `Brute_Force`. | 
| **var.enabled** | string | False | -  |  `true`, `false`  |  Specifies the state of the Security Alert Policy, whether it is enabled or disabled. Possible values are `true`, `false`. | 
| **var.email_account_admins_enabled** | bool | False | `False`  |  -  |  Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to `false`. | 
| **var.email_addresses** | string | False | -  |  -  |  Specifies an array of email addresses to which the alert is sent. | 
| **var.retention_days** | int | False | `0`  |  -  |  Specifies the number of days to keep in the Threat Detection audit logs. Defaults to `0`. | 
| **var.storage_endpoint** | string | False | -  |  -  |  Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. | 
| **var.storage_account_access_key** | string | False | -  |  -  |  Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use `storage_endpoint` to specify a storage account blob endpoint. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the MS SQL Managed Instance Security Alert Policy. | 

Additionally, all variables are provided as outputs.
