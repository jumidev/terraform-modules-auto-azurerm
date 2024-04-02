# azurerm_log_analytics_datasource_windows_event



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_datasource_windows_event"   
}

inputs = {
   name = "The name which should be used for this Log Analytics Windows Event DataSource..."   
   resource_group_name = "${resource_group}"   
   # workspace_name → set in component_inputs
   event_log_name = "Specifies the name of the Windows Event Log to collect events from..."   
   event_types = "Specifies an array of event types applied to the specified event log..."   
}

component_inputs = {
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
| **event_types** | string | No  | Specifies an array of event types applied to the specified event log. Possible values include `Error`, `Warning` and `Information`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Log Analytics Windows Event DataSource. | 

Additionally, all variables are provided as outputs.
