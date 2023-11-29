# azurerm_log_analytics_datasource_windows_performance_counter

Manages a Log Analytics (formally Operational Insights) Windows Performance Counter DataSource.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **workspace_name** | string | True | -  |  -  | The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **object_name** | string | True | -  |  -  | The object name of the Log Analytics Windows Performance Counter DataSource. | 
| **instance_name** | string | True | -  |  -  | The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances. | 
| **counter_name** | string | True | -  |  -  | The friendly name of the performance counter. | 
| **interval_seconds** | int | True | -  |  -  | The time of sample interval in seconds. Supports values between 10 and 2147483647. | 

