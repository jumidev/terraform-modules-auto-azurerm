# azurerm_dev_test_schedule

Manages automated startup and shutdown schedules for Azure Dev Test Lab.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_test/dev_test_schedule" 
}

inputs = {
   name = "name of dev_test_schedule" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   lab_name = "lab_name of dev_test_schedule" 
   task_type = "task_type of dev_test_schedule" 
   time_zone_id = "time_zone_id of dev_test_schedule" 
   notification_settings = {
      example_notification_settings = {
      }
  
   }
 
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
| **var.name** | string |  -  |  The name of the dev test lab schedule. Valid value for name depends on the `task_type`. For instance for task_type `LabVmsStartupTask` the name needs to be `LabVmAutoStart`. Changing this forces a new resource to be created. | 
| **var.location** | string |  -  |  The location where the schedule is created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created. | 
| **var.lab_name** | string |  -  |  The name of the dev test lab. Changing this forces a new resource to be created. | 
| **var.task_type** | string |  `LabVmsShutdownTask`, `LabVmAutoStart`  |  The task type of the schedule. Possible values include `LabVmsShutdownTask` and `LabVmAutoStart`. | 
| **var.time_zone_id** | string |  -  |  The time zone ID (e.g. Pacific Standard time). | 
| **var.notification_settings** | [block](#notification_settings-block-structure) |  -  |  The notification setting of a schedule. A `notification_settings` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.status** | string |  `Disabled`  |  `Enabled`, `Disabled`  |  The status of this schedule. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.weekly_recurrence** | [block](#weekly_recurrence-block-structure) |  -  |  -  |  The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A `weekly_recurrence` block. | 
| **var.daily_recurrence** | [block](#daily_recurrence-block-structure) |  -  |  -  |  The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A `daily_recurrence` block. | 
| **var.hourly_recurrence** | [block](#hourly_recurrence-block-structure) |  -  |  -  |  The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A `hourly_recurrence` block. | 

### `weekly_recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `time` | string | Yes | - | The time when the schedule takes effect. |
| `week_days` | string | No | - | A list of days that this schedule takes effect . Possible values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'. |

### `hourly_recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `minute` | string | Yes | - | Minutes of the hour the schedule will run. |

### `daily_recurrence` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `time` | string | Yes | - | The time each day when the schedule takes effect. |

### `notification_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `status` | string | No | Disabled | The status of the notification. Possible values are 'Enabled' and 'Disabled'. Defaults to 'Disabled' |
| `time_in_minutes` | int | No | - | Time in minutes before event at which notification will be sent. |
| `webhook_url` | string | No | - | The webhook URL to which the notification will be sent. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the DevTest Schedule. | 

Additionally, all variables are provided as outputs.
