# azurerm_log_analytics_datasource_windows_event

Manages a Log Analytics Windows Event DataSource.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **var.workspace_name** | string | True | -  |  -  | The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **var.event_log_name** | string | True | -  |  -  | Specifies the name of the Windows Event Log to collect events from. | 
| **var.event_types** | string | True | -  |  `Error`, `Warning`, `Information`  | Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **workspace_name** | string  | - | 
| **event_log_name** | string  | - | 
| **event_types** | string  | - | 
| **id** | string  | The ID of the Log Analytics Windows Event DataSource. | 