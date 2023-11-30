# azurerm_automanage_configuration

Manages an Automanage Configuration.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created. | 
| **var.location** | string | True | -  |  The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created. | 
| **var.antimalware** | block | False | -  |  A `antimalware` block. | 
| **var.azure_security_baseline** | block | False | -  |  A `azure_security_baseline` block. | 
| **var.backup** | block | False | -  |  A `backup` block. | 
| **var.automation_account_enabled** | bool | False | `False`  |  Whether the automation account is enabled. Defaults to `false`. | 
| **var.boot_diagnostics_enabled** | bool | False | `False`  |  Whether the boot diagnostics are enabled. Defaults to `false`. | 
| **var.defender_for_cloud_enabled** | bool | False | `False`  |  Whether the defender for cloud is enabled. Defaults to `false`. | 
| **var.guest_configuration_enabled** | bool | False | `False`  |  Whether the guest configuration is enabled. Defaults to `false`. | 
| **var.log_analytics_enabled** | bool | False | `False`  |  Whether log analytics are enabled. Defaults to `false`. | 
| **var.status_change_alert_enabled** | bool | False | `False`  |  Whether the status change alert is enabled. Defaults to `false`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **antimalware** | block  | - | 
| **azure_security_baseline** | block  | - | 
| **backup** | block  | - | 
| **automation_account_enabled** | bool  | - | 
| **boot_diagnostics_enabled** | bool  | - | 
| **defender_for_cloud_enabled** | bool  | - | 
| **guest_configuration_enabled** | bool  | - | 
| **log_analytics_enabled** | bool  | - | 
| **status_change_alert_enabled** | bool  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Automanage Configuration. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automanage/automanage_configuration" 
}

inputs = {
   name = "name of automanage_configuration" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```