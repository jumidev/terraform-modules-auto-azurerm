# azurerm_log_analytics_datasource_windows_performance_counter

Manages a Log Analytics (formally Operational Insights) Windows Performance Counter DataSource.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **var.workspace_name** | string | True | The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **var.object_name** | string | True | The object name of the Log Analytics Windows Performance Counter DataSource. | 
| **var.instance_name** | string | True | The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances. | 
| **var.counter_name** | string | True | The friendly name of the performance counter. | 
| **var.interval_seconds** | int | True | The time of sample interval in seconds. Supports values between 10 and 2147483647. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **workspace_name** | string  | - | 
| **object_name** | string  | - | 
| **instance_name** | string  | - | 
| **counter_name** | string  | - | 
| **interval_seconds** | int  | - | 
| **id** | string  | The ID of the Log Analytics Windows Performance Counter DataSource. | 