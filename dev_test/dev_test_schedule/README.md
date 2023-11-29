# azurerm_dev_test_schedule

Manages automated startup and shutdown schedules for Azure Dev Test Lab.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the dev test lab schedule. Valid value for name depends on the `task_type`. For instance for task_type `LabVmsStartupTask` the name needs to be `LabVmAutoStart`. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The location where the schedule is created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created. | 
| **var.lab_name** | string | True | -  |  -  | The name of the dev test lab. Changing this forces a new resource to be created. | 
| **var.status** | string | False | `Disabled`  |  `Enabled`, `Disabled`  | The status of this schedule. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`. | 
| **var.task_type** | string | True | -  |  `LabVmsShutdownTask`, `LabVmAutoStart`  | The task type of the schedule. Possible values include `LabVmsShutdownTask` and `LabVmAutoStart`. | 
| **var.time_zone_id** | string | True | -  |  -  | The time zone ID (e.g. Pacific Standard time). | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **var.notification_settings** | block | True | -  |  -  | The notification setting of a schedule. A `notification_settings` block. | 
| **var.weekly_recurrence** | block | False | -  |  -  | The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A `weekly_recurrence` block. | 
| **var.daily_recurrence** | block | False | -  |  -  | The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A `daily_recurrence` block. | 
| **var.hourly_recurrence** | block | False | -  |  -  | The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A `hourly_recurrence` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **lab_name** | string  | - | 
| **status** | string  | - | 
| **task_type** | string  | - | 
| **time_zone_id** | string  | - | 
| **tags** | map  | - | 
| **notification_settings** | block  | - | 
| **weekly_recurrence** | block  | - | 
| **daily_recurrence** | block  | - | 
| **hourly_recurrence** | block  | - | 
| **id** | string  | The ID of the DevTest Schedule. | 