# azurerm_log_analytics_datasource_windows_event

Manages a Log Analytics Windows Event DataSource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_datasource_windows_event" 
}

inputs = {
   name = "name of log_analytics_datasource_windows_event" 
   resource_group_name = "${resource_group}" 
   workspace_name = "workspace_name of log_analytics_datasource_windows_event" 
   event_log_name = "event_log_name of log_analytics_datasource_windows_event" 
   event_types = "event_types of log_analytics_datasource_windows_event" 
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
| **var.name** | string  -  |  The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **var.resource_group_name** | string  -  |  The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **var.workspace_name** | string  -  |  The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **var.event_log_name** | string  -  |  Specifies the name of the Windows Event Log to collect events from. | 
| **var.event_types** | string  `Error`, `Warning`, `Information`  |  Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Windows Event DataSource. | 

Additionally, all variables are provided as outputs.
