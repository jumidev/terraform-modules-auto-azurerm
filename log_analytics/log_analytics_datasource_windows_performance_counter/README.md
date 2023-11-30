# azurerm_log_analytics_datasource_windows_performance_counter

Manages a Log Analytics (formally Operational Insights) Windows Performance Counter DataSource.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "log_analytics/log_analytics_datasource_windows_performance_counter" 
}

inputs = {
   name = "name of log_analytics_datasource_windows_performance_counter" 
   resource_group_name = "${resource_group}" 
   workspace_name = "workspace_name of log_analytics_datasource_windows_performance_counter" 
   object_name = "object_name of log_analytics_datasource_windows_performance_counter" 
   instance_name = "instance_name of log_analytics_datasource_windows_performance_counter" 
   counter_name = "counter_name of log_analytics_datasource_windows_performance_counter" 
   interval_seconds = "interval_seconds of log_analytics_datasource_windows_performance_counter" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Log Analytics Windows Performance Counter DataSource. | 

Additionally, all variables are provided as outputs.
