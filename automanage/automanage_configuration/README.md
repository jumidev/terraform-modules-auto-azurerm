# azurerm_automanage_configuration

Manages an Automanage Configuration.

## Example minimal component.hclt

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

### `antimalware` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `exclusions` | block | No | - | A 'exclusions' block. |
| `real_time_protection_enabled` | bool | No | False | Whether the real time protection is enabled. Defaults to 'false'. |
| `scheduled_scan_enabled` | bool | No | False | Whether the scheduled scan is enabled. Defaults to 'false'. |
| `scheduled_scan_type` | string | No | Quick | The type of the scheduled scan. Possible values are 'Quick' and 'Full'. Defaults to 'Quick'. |
| `scheduled_scan_day` | string | No | 8 | The day of the scheduled scan. Possible values are '0' to '8' where '0' is daily, '1' to '7' are the days of the week and '8' is Disabled. Defaults to '8'. |
| `scheduled_scan_time_in_minutes` | string | No | - | The time of the scheduled scan in minutes. Possible values are '0' to '1439' where '0' is 12:00 AM and '1439' is 11:59 PM. |

### `azure_security_baseline` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `assignment_type` | string | No | ApplyAndAutoCorrect | The assignment type of the azure security baseline. Possible values are 'ApplyAndAutoCorrect', 'ApplyAndMonitor', 'Audit' and 'DeployAndAutoCorrect'. Defaults to 'ApplyAndAutoCorrect'. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `policy_name` | string | No | - | The name of the backup policy. |
| `time_zone` | string | No | UTC | The timezone of the backup policy. Defaults to 'UTC'. |
| `instant_rp_retention_range_in_days` | int | No | 5 | The retention range in days of the backup policy. Defaults to '5'. |
| `schedule_policy` | block | No | - | A 'schedule_policy' block. |
| `retention_policy` | block | No | - | A 'retention_policy' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automanage Configuration. | 

Additionally, all variables are provided as outputs.
