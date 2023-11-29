# azurerm_dev_test_global_vm_shutdown_schedule

Manages automated shutdown schedules for Azure VMs that are not within an Azure DevTest Lab. While this is part of the DevTest Labs service in Azure,this resource applies only to standard VMs, not DevTest Lab VMs. To manage automated shutdown schedules for DevTest Lab VMs, reference the[`azurerm_dev_test_schedule` resource](dev_test_schedule.html)

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The location where the schedule is created. Changing this forces a new resource to be created. | 
| **virtual_machine_id** | string | True | -  |  -  | The resource ID of the target ARM-based Virtual Machine. Changing this forces a new resource to be created. | 
| **enabled** | bool | False | `True`  |  `true`, `false`  | Whether to enable the schedule. Possible values are `true` and `false`. Defaults to `true`. | 
| **timezone** | string | True | -  |  -  | The time zone ID (e.g. Pacific Standard time). Refer to this guide for a [full list of accepted time zone names](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 
| **daily_recurrence_time** | string | True | -  |  -  | The time each day when the schedule takes effect. Must match the format HHmm where HH is 00-23 and mm is 00-59 (e.g. 0930, 2300, etc.) | 
| **notification_settings** | block | True | -  |  -  | The notification setting of a schedule. A `notification_settings` block. | 

