# azurerm_log_analytics_datasource_windows_performance_counter



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "log_analytics/log_analytics_datasource_windows_performance_counter"   
}
inputs = {
   name = "The Name which should be used for this Log Analytics Windows Performance Counter..."   
   resource_group_name = "${resource_group}"   
   # workspace_name → set in component_inputs
   object_name = "The object name of the Log Analytics Windows Performance Counter DataSource..."   
   instance_name = "The name of the virtual machine instance to which the Windows Performance Counte..."   
   counter_name = "The friendly name of the performance counter"   
   interval_seconds = "The time of sample interval in seconds"   
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The Name which should be used for this Log Analytics Windows Performance Counter DataSource. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **workspace_name** | string |  The name of the Log Analytics Workspace where the Log Analytics Windows Performance Counter DataSource should exist. Changing this forces a new Log Analytics Windows Performance Counter DataSource to be created. | 
| **object_name** | string |  The object name of the Log Analytics Windows Performance Counter DataSource. | 
| **instance_name** | string |  The name of the virtual machine instance to which the Windows Performance Counter DataSource be applied. Specify a `*` will apply to all instances. | 
| **counter_name** | string |  The friendly name of the performance counter. | 
| **interval_seconds** | number |  The time of sample interval in seconds. Supports values between 10 and 2147483647. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **interval_seconds** | number | No  | The time of sample interval in seconds. Supports values between 10 and 2147483647. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Log Analytics Windows Performance Counter DataSource. | 

Additionally, all variables are provided as outputs.
