# azurerm_dev_test_global_vm_shutdown_schedule

Manages automated shutdown schedules for Azure VMs that are not within an Azure DevTest Lab. While this is part of the DevTest Labs service in Azure,this resource applies only to standard VMs, not DevTest Lab VMs. To manage automated shutdown schedules for DevTest Lab VMs, reference the[`azurerm_dev_test_schedule` resource](dev_test_schedule.html)

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dev_test/dev_test_global_vm_shutdown_schedule" 
}

inputs = {
   location = "${location}" 
   virtual_machine_id = "virtual_machine_id of dev_test_global_vm_shutdown_schedule" 
   timezone = "timezone of dev_test_global_vm_shutdown_schedule" 
   daily_recurrence_time = "daily_recurrence_time of dev_test_global_vm_shutdown_schedule" 
   notification_settings = {
      example_notification_settings = {
         enabled = "..."   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.location** | string |  The location where the schedule is created. Changing this forces a new resource to be created. | 
| **var.virtual_machine_id** | string |  The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created. | 
| **var.timezone** | string |  The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). | 
| **var.daily_recurrence_time** | string |  The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.) | 
| **var.notification_settings** | [block](#notification_settings-block-structure) |  The notification setting of a schedule. A `notification_settings` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.enabled** | bool |  `True`  |  `true`, `false`  |  Whether to enable the schedule. Possible values are `true` and `false`. Defaults to `true`. | 
| **var.tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `notification_settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | string | Yes | - | Whether to enable pre-shutdown notifications. Possible values are 'true' and 'false'. |
| `email` | string | No | - | E-mail address to which the notification will be sent. |
| `time_in_minutes` | int | No | 30 | Time in minutes between 15 and 120 before a shutdown event at which a notification will be sent. Defaults to '30'. |
| `webhook_url` | string | No | - | The webhook URL to which the notification will be sent. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Dev Test Global Schedule ID. | 

Additionally, all variables are provided as outputs.
