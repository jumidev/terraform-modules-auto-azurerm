# azurerm_log_analytics_data_export_rule

Manages a Log Analytics Data Export Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Log Analytics Data Export Rule. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Log Analytics Data Export should exist. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **var.workspace_resource_id** | string | True | -  |  -  | The resource ID of the workspace. Changing this forces a new Log Analytics Data Export Rule to be created. | 
| **var.destination_resource_id** | string | True | -  |  -  | The destination resource ID. It should be a storage account, an event hub namespace or an event hub. If the destination is an event hub namespace, an event hub would be created for each table automatically. | 
| **var.table_names** | list | True | -  |  -  | A list of table names to export to the destination resource, for example: `["Heartbeat", "SecurityEvent"]`. | 
| **var.enabled** | bool | False | `False`  |  `true`, `false`  | Is this Log Analytics Data Export Rule enabled? Possible values include `true` or `false`. Defaults to `false`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **workspace_resource_id** | string  | - | 
| **destination_resource_id** | string  | - | 
| **table_names** | list  | - | 
| **enabled** | bool  | - | 
| **id** | string  | The ID of the Log Analytics Data Export Rule. | 
| **export_rule_id** | string  | The ID of the created Data Export Rule. | 