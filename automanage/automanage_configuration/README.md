# azurerm_automanage_configuration

Manages an Automanage Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created. | 
| **antimalware** | block | False | -  |  -  | A `antimalware` block. | 
| **azure_security_baseline** | block | False | -  |  -  | A `azure_security_baseline` block. | 
| **backup** | block | False | -  |  -  | A `backup` block. | 
| **automation_account_enabled** | bool | False | `False`  |  -  | Whether the automation account is enabled. Defaults to `false`. | 
| **boot_diagnostics_enabled** | bool | False | `False`  |  -  | Whether the boot diagnostics are enabled. Defaults to `false`. | 
| **defender_for_cloud_enabled** | bool | False | `False`  |  -  | Whether the defender for cloud is enabled. Defaults to `false`. | 
| **guest_configuration_enabled** | bool | False | `False`  |  -  | Whether the guest configuration is enabled. Defaults to `false`. | 
| **log_analytics_enabled** | bool | False | `False`  |  -  | Whether log analytics are enabled. Defaults to `false`. | 
| **status_change_alert_enabled** | bool | False | `False`  |  -  | Whether the status change alert is enabled. Defaults to `false`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

