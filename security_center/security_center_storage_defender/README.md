# azurerm_security_center_storage_defender

Manages the Defender for Storage.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "security_center/security_center_storage_defender" 
}

inputs = {
   storage_account_id = "storage_account_id of security_center_storage_defender" 
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
| **storage_account_id** | string |  The ID of the storage account the defender applied to. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **override_subscription_settings_enabled** | bool |  `False`  |  Whether the settings defined for this storage account should override the settings defined for the subscription. Defaults to `false`. | 
| **malware_scanning_on_upload_enabled** | bool |  `False`  |  Whether On Upload malware scanning should be enabled. Defaults to `false`. | 
| **malware_scanning_on_upload_cap_gb_per_month** | int |  `-1`  |  The max GB to be scanned per Month. Must be `-1` or above `0`. Omit this property or set to `-1` if no capping is needed. Defaults to `-1`. | 
| **sensitive_data_discovery_enabled** | bool |  `False`  |  Whether Sensitive Data Discovery should be enabled. Defaults to `false`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Defender for Storage id. | 

Additionally, all variables are provided as outputs.
