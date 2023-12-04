# azurerm_log_analytics_datasource_windows_event

Manages a Log Analytics Windows Event DataSource.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_datasource_windows_event" 
}

inputs = {
   name = "name of log_analytics_datasource_windows_event" 
   resource_group_name = "${resource_group}" 
   # workspace_name → set in tfstate_inputs
   event_log_name = "event_log_name of log_analytics_datasource_windows_event" 
   event_types = "event_types of log_analytics_datasource_windows_event" 
}

tfstate_inputs = {
   workspace_name = "path/to/log_analytics_workspace_component:name" 
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
| **name** | string |  -  |  The name which should be used for this Log Analytics Windows Event DataSource. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **workspace_name** | string |  -  |  The name of the Log Analytics Workspace where the Log Analytics Windows Event DataSource should exist. Changing this forces a new Log Analytics Windows Event DataSource to be created. | 
| **event_log_name** | string |  -  |  Specifies the name of the Windows Event Log to collect events from. | 
| **event_types** | string |  `Error`, `Warning`, `Information`  |  Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Windows Event DataSource. | 

Additionally, all variables are provided as outputs.
