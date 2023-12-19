# azurerm_automanage_configuration

Manages an Automanage Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "automanage/automanage_configuration"   
}

inputs = {
   name = "The name which should be used for this Automanage Configuration..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
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
| **name** | string |  The name which should be used for this Automanage Configuration. Changing this forces a new Automanage Configuration to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created. | 
| **location** | string |  The Azure Region where the Automanage Configuration should exist. Changing this forces a new Automanage Configuration to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **antimalware** | [block](#antimalware-block-structure) |  -  |  A `antimalware` block. | 
| **azure_security_baseline** | [block](#azure_security_baseline-block-structure) |  -  |  A `azure_security_baseline` block. | 
| **backup** | [block](#backup-block-structure) |  -  |  A `backup` block. | 
| **automation_account_enabled** | bool |  `False`  |  Whether the automation account is enabled. Defaults to `false`. | 
| **boot_diagnostics_enabled** | bool |  `False`  |  Whether the boot diagnostics are enabled. Defaults to `false`. | 
| **defender_for_cloud_enabled** | bool |  `False`  |  Whether the defender for cloud is enabled. Defaults to `false`. | 
| **guest_configuration_enabled** | bool |  `False`  |  Whether the guest configuration is enabled. Defaults to `false`. | 
| **log_analytics_enabled** | bool |  `False`  |  Whether log analytics are enabled. Defaults to `false`. | 
| **status_change_alert_enabled** | bool |  `False`  |  Whether the status change alert is enabled. Defaults to `false`. | 
| **tags** | map |  -  |  A mapping of tags to assign to the resource. | 

### `retention_duration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | number | No | - | The count of the retention duration of the backup policy. Valid value inside 'daily_schedule' is '7' to '9999' and inside 'weekly_schedule' is '1' to '5163'. |
| `duration_type` | string | No | Days | The duration type of the retention duration of the backup policy. Valid value inside 'daily_schedule' is 'Days' and inside 'weekly_schedule' is 'Weeks'. Defaults to 'Days'. |

### `azure_security_baseline` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `assignment_type` | string | No | ApplyAndAutoCorrect | The assignment type of the azure security baseline. Possible values are 'ApplyAndAutoCorrect', 'ApplyAndMonitor', 'Audit' and 'DeployAndAutoCorrect'. Defaults to 'ApplyAndAutoCorrect'. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `policy_name` | string | No | - | The name of the backup policy. |
| `time_zone` | string | No | UTC | The timezone of the backup policy. Defaults to 'UTC'. |
| `instant_rp_retention_range_in_days` | number | No | 5 | The retention range in days of the backup policy. Defaults to '5'. |
| `schedule_policy` | [block](#schedule_policy-block-structure) | No | - | A 'schedule_policy' block. |
| `retention_policy` | [block](#retention_policy-block-structure) | No | - | A 'retention_policy' block. |

### `retention_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `retention_policy_type` | string | No | LongTermRetentionPolicy | The retention policy type of the backup policy. Possible value is 'LongTermRetentionPolicy'. Defaults to 'LongTermRetentionPolicy'. |
| `daily_schedule` | [block](#daily_schedule-block-structure) | No | - | A 'daily_schedule' block. |
| `weekly_schedule` | [block](#weekly_schedule-block-structure) | No | - | A 'weekly_schedule' block. |

### `exclusions` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `extensions` | string | No | - | The extensions to exclude from the antimalware scan, separated by ';'. For example '.ext1;.ext2'. |
| `paths` | string | No | - | The paths to exclude from the antimalware scan, separated by ';'. For example 'C:''Windows''Temp;D:''Temp'. |
| `processes` | string | No | - | The processes to exclude from the antimalware scan, separated by ';'. For example 'svchost.exe;notepad.exe'. |

### `antimalware` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `exclusions` | [block](#exclusions-block-structure) | No | - | A 'exclusions' block. |
| `real_time_protection_enabled` | bool | No | False | Whether the real time protection is enabled. Defaults to 'false'. |
| `scheduled_scan_enabled` | bool | No | False | Whether the scheduled scan is enabled. Defaults to 'false'. |
| `scheduled_scan_type` | string | No | Quick | The type of the scheduled scan. Possible values are 'Quick' and 'Full'. Defaults to 'Quick'. |
| `scheduled_scan_day` | string | No | 8 | The day of the scheduled scan. Possible values are '0' to '8' where '0' is daily, '1' to '7' are the days of the week and '8' is Disabled. Defaults to '8'. |
| `scheduled_scan_time_in_minutes` | string | No | - | The time of the scheduled scan in minutes. Possible values are '0' to '1439' where '0' is 12:00 AM and '1439' is 11:59 PM. |

### `weekly_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `retention_times` | string | No | - | The retention times of the backup policy. |
| `retention_duration` | [block](#retention_duration-block-structure) | No | - | A 'retention_duration' block. |

### `daily_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `retention_times` | string | No | - | The retention times of the backup policy. |
| `retention_duration` | [block](#retention_duration-block-structure) | No | - | A 'retention_duration' block. |

### `schedule_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `schedule_run_frequency` | string | No | Daily | The schedule run frequency of the backup policy. Possible values are 'Daily' and 'Weekly'. Defaults to 'Daily'. |
| `schedule_run_times` | string | No | - | The schedule run times of the backup policy. |
| `schedule_run_days` | string | No | - | The schedule run days of the backup policy. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'. |
| `schedule_policy_type` | string | No | SimpleSchedulePolicy | The schedule policy type of the backup policy. Possible value is 'SimpleSchedulePolicy'. Defaults to 'SimpleSchedulePolicy'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automanage Configuration. | 

Additionally, all variables are provided as outputs.
