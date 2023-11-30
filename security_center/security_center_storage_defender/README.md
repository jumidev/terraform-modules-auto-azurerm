# azurerm_security_center_storage_defender

Manages the Defender for Storage.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.storage_account_id** | string | True | -  |  The ID of the storage account the defender applied to. Changing this forces a new resource to be created. | 
| **var.override_subscription_settings_enabled** | bool | False | `False`  |  Whether the settings defined for this storage account should override the settings defined for the subscription. Defaults to `false`. | 
| **var.malware_scanning_on_upload_enabled** | bool | False | `False`  |  Whether On Upload malware scanning should be enabled. Defaults to `false`. | 
| **var.malware_scanning_on_upload_cap_gb_per_month** | int | False | `-1`  |  The max GB to be scanned per Month. Must be `-1` or above `0`. Omit this property or set to `-1` if no capping is needed. Defaults to `-1`. | 
| **var.sensitive_data_discovery_enabled** | bool | False | `False`  |  Whether Sensitive Data Discovery should be enabled. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **storage_account_id** | string  | - | 
| **override_subscription_settings_enabled** | bool  | - | 
| **malware_scanning_on_upload_enabled** | bool  | - | 
| **malware_scanning_on_upload_cap_gb_per_month** | int  | - | 
| **sensitive_data_discovery_enabled** | bool  | - | 
| **id** | string  | The Defender for Storage id. | 

## Example minimal hclt

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